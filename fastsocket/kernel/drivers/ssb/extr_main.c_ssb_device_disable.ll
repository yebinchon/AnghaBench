; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_device_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_device_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }

@SSB_TMSLOW = common dso_local global i32 0, align 4
@SSB_TMSLOW_RESET = common dso_local global i32 0, align 4
@SSB_TMSLOW_CLOCK = common dso_local global i32 0, align 4
@SSB_TMSHIGH = common dso_local global i32 0, align 4
@SSB_TMSHIGH_BUSY = common dso_local global i32 0, align 4
@SSB_IDLOW = common dso_local global i32 0, align 4
@SSB_IDLOW_INITIATOR = common dso_local global i32 0, align 4
@SSB_IMSTATE = common dso_local global i32 0, align 4
@SSB_IMSTATE_REJECT = common dso_local global i32 0, align 4
@SSB_IMSTATE_BUSY = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_device_disable(%struct.ssb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %8 = load i32, i32* @SSB_TMSLOW, align 4
  %9 = call i32 @ssb_read32(%struct.ssb_device* %7, i32 %8)
  %10 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %104

14:                                               ; preds = %2
  %15 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %16 = call i32 @ssb_tmslow_reject_bitmask(%struct.ssb_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %18 = load i32, i32* @SSB_TMSLOW, align 4
  %19 = call i32 @ssb_read32(%struct.ssb_device* %17, i32 %18)
  %20 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %93

23:                                               ; preds = %14
  %24 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %25 = load i32, i32* @SSB_TMSLOW, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ssb_write32(%struct.ssb_device* %24, i32 %25, i32 %28)
  %30 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %31 = load i32, i32* @SSB_TMSLOW, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ssb_wait_bits(%struct.ssb_device* %30, i32 %31, i32 %32, i32 1000, i32 1)
  %34 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %35 = load i32, i32* @SSB_TMSHIGH, align 4
  %36 = load i32, i32* @SSB_TMSHIGH_BUSY, align 4
  %37 = call i32 @ssb_wait_bits(%struct.ssb_device* %34, i32 %35, i32 %36, i32 1000, i32 0)
  %38 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %39 = load i32, i32* @SSB_IDLOW, align 4
  %40 = call i32 @ssb_read32(%struct.ssb_device* %38, i32 %39)
  %41 = load i32, i32* @SSB_IDLOW_INITIATOR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %23
  %45 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %46 = load i32, i32* @SSB_IMSTATE, align 4
  %47 = call i32 @ssb_read32(%struct.ssb_device* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @SSB_IMSTATE_REJECT, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %52 = load i32, i32* @SSB_IMSTATE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ssb_write32(%struct.ssb_device* %51, i32 %52, i32 %53)
  %55 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %56 = load i32, i32* @SSB_IMSTATE, align 4
  %57 = load i32, i32* @SSB_IMSTATE_BUSY, align 4
  %58 = call i32 @ssb_wait_bits(%struct.ssb_device* %55, i32 %56, i32 %57, i32 1000, i32 0)
  br label %59

59:                                               ; preds = %44, %23
  %60 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %61 = load i32, i32* @SSB_TMSLOW, align 4
  %62 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %63 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ssb_write32(%struct.ssb_device* %60, i32 %61, i32 %70)
  %72 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %73 = call i32 @ssb_flush_tmslow(%struct.ssb_device* %72)
  %74 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %75 = load i32, i32* @SSB_IDLOW, align 4
  %76 = call i32 @ssb_read32(%struct.ssb_device* %74, i32 %75)
  %77 = load i32, i32* @SSB_IDLOW_INITIATOR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %59
  %81 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %82 = load i32, i32* @SSB_IMSTATE, align 4
  %83 = call i32 @ssb_read32(%struct.ssb_device* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @SSB_IMSTATE_REJECT, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %89 = load i32, i32* @SSB_IMSTATE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @ssb_write32(%struct.ssb_device* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %80, %59
  br label %93

93:                                               ; preds = %92, %14
  %94 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %95 = load i32, i32* @SSB_TMSLOW, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ssb_write32(%struct.ssb_device* %94, i32 %95, i32 %100)
  %102 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %103 = call i32 @ssb_flush_tmslow(%struct.ssb_device* %102)
  br label %104

104:                                              ; preds = %93, %13
  ret void
}

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_tmslow_reject_bitmask(%struct.ssb_device*) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_wait_bits(%struct.ssb_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ssb_flush_tmslow(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
