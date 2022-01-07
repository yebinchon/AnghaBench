; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek.c_gemtek_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek.c_gemtek_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemtek = type { i32, i32, i32 }

@hardmute = common dso_local global i64 0, align 8
@BU2614_PORT = common dso_local global i32 0, align 4
@BU2614_FMES = common dso_local global i32 0, align 4
@BU2614_SWIN = common dso_local global i32 0, align 4
@BU2614_SWAL = common dso_local global i32 0, align 4
@BU2614_FMUN = common dso_local global i32 0, align 4
@BU2614_TEST = common dso_local global i32 0, align 4
@BU2614_STDF = common dso_local global i32 0, align 4
@GEMTEK_PLL_OFF = common dso_local global i32 0, align 4
@BU2614_FREQ = common dso_local global i32 0, align 4
@GEMTEK_MT = common dso_local global i32 0, align 4
@SHORT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gemtek*)* @gemtek_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemtek_mute(%struct.gemtek* %0) #0 {
  %2 = alloca %struct.gemtek*, align 8
  %3 = alloca i32, align 4
  store %struct.gemtek* %0, %struct.gemtek** %2, align 8
  %4 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %5 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load i64, i64* @hardmute, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %10 = load i32, i32* @BU2614_PORT, align 4
  %11 = call i32 @gemtek_bu2614_set(%struct.gemtek* %9, i32 %10, i32 0)
  %12 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %13 = load i32, i32* @BU2614_FMES, align 4
  %14 = call i32 @gemtek_bu2614_set(%struct.gemtek* %12, i32 %13, i32 0)
  %15 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %16 = load i32, i32* @BU2614_SWIN, align 4
  %17 = call i32 @gemtek_bu2614_set(%struct.gemtek* %15, i32 %16, i32 0)
  %18 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %19 = load i32, i32* @BU2614_SWAL, align 4
  %20 = call i32 @gemtek_bu2614_set(%struct.gemtek* %18, i32 %19, i32 0)
  %21 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %22 = load i32, i32* @BU2614_FMUN, align 4
  %23 = call i32 @gemtek_bu2614_set(%struct.gemtek* %21, i32 %22, i32 0)
  %24 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %25 = load i32, i32* @BU2614_TEST, align 4
  %26 = call i32 @gemtek_bu2614_set(%struct.gemtek* %24, i32 %25, i32 0)
  %27 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %28 = load i32, i32* @BU2614_STDF, align 4
  %29 = load i32, i32* @GEMTEK_PLL_OFF, align 4
  %30 = call i32 @gemtek_bu2614_set(%struct.gemtek* %27, i32 %28, i32 %29)
  %31 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %32 = load i32, i32* @BU2614_FREQ, align 4
  %33 = call i32 @gemtek_bu2614_set(%struct.gemtek* %31, i32 %32, i32 0)
  %34 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %35 = call i32 @gemtek_bu2614_transmit(%struct.gemtek* %34)
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %38 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %41 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @inb_p(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, 5
  %46 = load i32, i32* @GEMTEK_MT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %49 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @outb_p(i32 %47, i32 %50)
  %52 = load i32, i32* @SHORT_DELAY, align 4
  %53 = call i32 @udelay(i32 %52)
  %54 = load %struct.gemtek*, %struct.gemtek** %2, align 8
  %55 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @gemtek_bu2614_set(%struct.gemtek*, i32, i32) #1

declare dso_local i32 @gemtek_bu2614_transmit(%struct.gemtek*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
