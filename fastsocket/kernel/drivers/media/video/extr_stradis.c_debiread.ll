; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_debiread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_debiread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@SAA7146_DEBI_AD = common dso_local global i32 0, align 4
@SAA7146_DEBI_COMMAND = common dso_local global i32 0, align 4
@SAA7146_DEBI_CONFIG = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_DEBI = common dso_local global i32 0, align 4
@SAA7146_MC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146*, i32, i32, i32)* @debiread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debiread(%struct.saa7146* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sgt i32 %11, 32764
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %74

17:                                               ; preds = %13
  %18 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %19 = call i64 @wait_for_debi_done(%struct.saa7146* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %74

22:                                               ; preds = %17
  %23 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %24 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @virt_to_bus(i32 %25)
  %27 = load i32, i32* @SAA7146_DEBI_AD, align 4
  %28 = call i32 @saawrite(i32 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 17
  %31 = or i32 %30, 65536
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 65535
  %34 = or i32 %31, %33
  %35 = load i32, i32* @SAA7146_DEBI_COMMAND, align 4
  %36 = call i32 @saawrite(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SAA7146_DEBI_CONFIG, align 4
  %39 = call i32 @saawrite(i32 %37, i32 %38)
  %40 = load i32, i32* @SAA7146_MC2_UPLD_DEBI, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* @SAA7146_MC2_UPLD_DEBI, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SAA7146_MC2, align 4
  %45 = call i32 @saawrite(i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %22
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %5, align 4
  br label %74

50:                                               ; preds = %22
  %51 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %52 = call i64 @wait_for_debi_done(%struct.saa7146* %51)
  %53 = load i32, i32* @SAA7146_DEBI_AD, align 4
  %54 = call i32 @saaread(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 255
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 16777215
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %48, %21, %16
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @wait_for_debi_done(%struct.saa7146*) #1

declare dso_local i32 @saawrite(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @saaread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
