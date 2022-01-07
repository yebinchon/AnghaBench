; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_irq_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_irq_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sh_rtc = type { i32, i32, i64 }

@RCR2 = common dso_local global i64 0, align 8
@PF_KOU = common dso_local global i32 0, align 4
@RCR2_PEF = common dso_local global i32 0, align 4
@PF_HP = common dso_local global i32 0, align 4
@RCR2_PESMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sh_rtc_irq_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_irq_set_state(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sh_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.sh_rtc* %8, %struct.sh_rtc** %5, align 8
  %9 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RCR2, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readb(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @PF_KOU, align 4
  %22 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @RCR2_PEF, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %31 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PF_HP, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %51

38:                                               ; preds = %2
  %39 = load i32, i32* @PF_KOU, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %42 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @RCR2_PESMASK, align 4
  %46 = load i32, i32* @RCR2_PEF, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %38, %20
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %54 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RCR2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writeb(i32 %52, i64 %57)
  %59 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_irq(i32* %60)
  ret i32 0
}

declare dso_local %struct.sh_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
