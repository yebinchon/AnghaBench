; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_debiwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_debiwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@SAA7146_DEBI_CONFIG = common dso_local global i32 0, align 4
@SAA7146_DEBI_AD = common dso_local global i32 0, align 4
@SAA7146_DEBI_COMMAND = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_DEBI = common dso_local global i32 0, align 4
@SAA7146_MC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146*, i32, i32, i32, i32)* @debiwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debiwrite(%struct.saa7146* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa7146*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 32764
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %5
  store i32 -1, i32* %6, align 4
  br label %55

19:                                               ; preds = %15
  %20 = load %struct.saa7146*, %struct.saa7146** %7, align 8
  %21 = call i64 @wait_for_debi_done(%struct.saa7146* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %55

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SAA7146_DEBI_CONFIG, align 4
  %27 = call i32 @saawrite(i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @SAA7146_DEBI_AD, align 4
  %33 = call i32 @saawrite(i32 %31, i32 %32)
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.saa7146*, %struct.saa7146** %7, align 8
  %36 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @virt_to_bus(i32 %37)
  %39 = load i32, i32* @SAA7146_DEBI_AD, align 4
  %40 = call i32 @saawrite(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 17
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 65535
  %46 = or i32 %43, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @SAA7146_DEBI_COMMAND, align 4
  %48 = call i32 @saawrite(i32 %46, i32 %47)
  %49 = load i32, i32* @SAA7146_MC2_UPLD_DEBI, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* @SAA7146_MC2_UPLD_DEBI, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SAA7146_MC2, align 4
  %54 = call i32 @saawrite(i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %41, %23, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @wait_for_debi_done(%struct.saa7146*) #1

declare dso_local i32 @saawrite(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
