; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.zatm_dev = type { i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"start_tx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATM_OC3_PCR = common dso_local global i32 0, align 4
@NR_SHAPERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_tx(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.zatm_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %6 = call i32 @DPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %8 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %7)
  store %struct.zatm_dev* %8, %struct.zatm_dev** %4, align 8
  %9 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %10 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kmalloc(i32 %14, i32 %15)
  %17 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %18 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %20 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load i32, i32* @ATM_OC3_PCR, align 4
  %28 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %29 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @NR_SHAPERS, align 4
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %34 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %36 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %35, i32 0, i32 2
  store i32 -1, i32* %36, align 8
  %37 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %38 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %48, %26
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NR_SHAPERS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @uPD98401_PS(i32 %45)
  %47 = call i32 @zpokel(%struct.zatm_dev* %44, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %39

51:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i32, i32) #1

declare dso_local i32 @uPD98401_PS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
