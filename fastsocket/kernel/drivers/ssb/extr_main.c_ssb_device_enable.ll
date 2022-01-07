; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_device_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_device_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }

@SSB_TMSLOW = common dso_local global i32 0, align 4
@SSB_TMSLOW_RESET = common dso_local global i32 0, align 4
@SSB_TMSLOW_CLOCK = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4
@SSB_TMSHIGH = common dso_local global i32 0, align 4
@SSB_TMSHIGH_SERR = common dso_local global i32 0, align 4
@SSB_IMSTATE = common dso_local global i32 0, align 4
@SSB_IMSTATE_IBE = common dso_local global i32 0, align 4
@SSB_IMSTATE_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_device_enable(%struct.ssb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ssb_device_disable(%struct.ssb_device* %6, i32 %7)
  %9 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %10 = load i32, i32* @SSB_TMSLOW, align 4
  %11 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %12 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ssb_write32(%struct.ssb_device* %9, i32 %10, i32 %17)
  %19 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %20 = call i32 @ssb_flush_tmslow(%struct.ssb_device* %19)
  %21 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %22 = load i32, i32* @SSB_TMSHIGH, align 4
  %23 = call i32 @ssb_read32(%struct.ssb_device* %21, i32 %22)
  %24 = load i32, i32* @SSB_TMSHIGH_SERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %29 = load i32, i32* @SSB_TMSHIGH, align 4
  %30 = call i32 @ssb_write32(%struct.ssb_device* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %33 = load i32, i32* @SSB_IMSTATE, align 4
  %34 = call i32 @ssb_read32(%struct.ssb_device* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SSB_IMSTATE_IBE, align 4
  %37 = load i32, i32* @SSB_IMSTATE_TO, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i32, i32* @SSB_IMSTATE_IBE, align 4
  %43 = load i32, i32* @SSB_IMSTATE_TO, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %49 = load i32, i32* @SSB_IMSTATE, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ssb_write32(%struct.ssb_device* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %31
  %53 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %54 = load i32, i32* @SSB_TMSLOW, align 4
  %55 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %56 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ssb_write32(%struct.ssb_device* %53, i32 %54, i32 %59)
  %61 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %62 = call i32 @ssb_flush_tmslow(%struct.ssb_device* %61)
  %63 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %64 = load i32, i32* @SSB_TMSLOW, align 4
  %65 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ssb_write32(%struct.ssb_device* %63, i32 %64, i32 %67)
  %69 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %70 = call i32 @ssb_flush_tmslow(%struct.ssb_device* %69)
  ret void
}

declare dso_local i32 @ssb_device_disable(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_flush_tmslow(%struct.ssb_device*) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
