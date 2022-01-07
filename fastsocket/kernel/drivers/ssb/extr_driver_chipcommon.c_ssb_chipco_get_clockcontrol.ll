; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_get_clockcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_get_clockcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SSB_CHIPCO_CLOCK_N = common dso_local global i32 0, align 4
@SSB_CHIPCO_CAP_PLLT = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLOCK_MIPS = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLOCK_M2 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLOCK_SB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_chipco_get_clockcontrol(%struct.ssb_chipcommon* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ssb_chipcommon*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %10 = load i32, i32* @SSB_CHIPCO_CLOCK_N, align 4
  %11 = call i32 @chipco_read32(%struct.ssb_chipcommon* %9, i32 %10)
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %14 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SSB_CHIPCO_CAP_PLLT, align 4
  %17 = and i32 %15, %16
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %41 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %4
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %23 = load i32, i32* @SSB_CHIPCO_CLOCK_MIPS, align 4
  %24 = call i32 @chipco_read32(%struct.ssb_chipcommon* %22, i32 %23)
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %46

26:                                               ; preds = %4
  %27 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %28 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 21349
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %37 = load i32, i32* @SSB_CHIPCO_CLOCK_M2, align 4
  %38 = call i32 @chipco_read32(%struct.ssb_chipcommon* %36, i32 %37)
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %46

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %4, %40
  %42 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %43 = load i32, i32* @SSB_CHIPCO_CLOCK_SB, align 4
  %44 = call i32 @chipco_read32(%struct.ssb_chipcommon* %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %35, %21
  ret void
}

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
