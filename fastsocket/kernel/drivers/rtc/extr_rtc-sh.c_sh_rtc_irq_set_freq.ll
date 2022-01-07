; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_irq_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_irq_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sh_rtc = type { i32, i32 }

@PF_MASK = common dso_local global i32 0, align 4
@PF_HP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sh_rtc_irq_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_irq_set_freq(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sh_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.sh_rtc* %9, %struct.sh_rtc** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PF_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %55 [
    i32 0, label %19
    i32 1, label %22
    i32 2, label %25
    i32 4, label %28
    i32 8, label %31
    i32 16, label %36
    i32 32, label %39
    i32 64, label %44
    i32 128, label %47
    i32 256, label %52
  ]

19:                                               ; preds = %2
  %20 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %24 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %23, i32 0, i32 0
  store i32 96, i32* %24, align 4
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %26, i32 0, i32 0
  store i32 80, i32* %27, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %29, i32 0, i32 0
  store i32 64, i32* %30, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load i32, i32* @PF_HP, align 4
  %33 = or i32 48, %32
  %34 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %35 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %38 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %37, i32 0, i32 0
  store i32 48, i32* %38, align 4
  br label %58

39:                                               ; preds = %2
  %40 = load i32, i32* @PF_HP, align 4
  %41 = or i32 32, %40
  %42 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %43 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %58

44:                                               ; preds = %2
  %45 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %46 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %45, i32 0, i32 0
  store i32 32, i32* %46, align 4
  br label %58

47:                                               ; preds = %2
  %48 = load i32, i32* @PF_HP, align 4
  %49 = or i32 16, %48
  %50 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %51 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %58

52:                                               ; preds = %2
  %53 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %54 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %53, i32 0, i32 0
  store i32 16, i32* %54, align 4
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @ENOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %52, %47, %44, %39, %36, %31, %28, %25, %22, %19
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %64 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %69 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.sh_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
