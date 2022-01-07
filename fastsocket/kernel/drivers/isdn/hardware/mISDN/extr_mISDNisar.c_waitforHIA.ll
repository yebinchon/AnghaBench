; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_waitforHIA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_waitforHIA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32 (i32, i32)*, i32, i32 }

@ISAR_HIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: HIA after %dus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isar_hw*, i32)* @waitforHIA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitforHIA(%struct.isar_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.isar_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isar_hw* %0, %struct.isar_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %9 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %8, i32 0, i32 0
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %12 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ISAR_HIA, align 4
  %15 = call i32 %10(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %25, %2
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ]
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = call i32 @udelay(i32 1)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %30 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %29, i32 0, i32 0
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %33 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ISAR_HIA, align 4
  %36 = call i32 %31(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %23
  %38 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %39 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
