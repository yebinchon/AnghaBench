; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3290.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3290.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RFCSR29_RSSI_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_3290 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_3290(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %4, i32 2)
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %6, i32 1, i32 15)
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %8, i32 2, i32 128)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %10, i32 3, i32 8)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %12, i32 4, i32 0)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %14, i32 6, i32 160)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %16, i32 8, i32 243)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %18, i32 9, i32 2)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 10, i32 83)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 11, i32 74)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 12, i32 70)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %26, i32 13, i32 159)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 18, i32 2)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %30, i32 22, i32 32)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 25, i32 131)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %34, i32 26, i32 130)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 27, i32 9)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %38, i32 29, i32 16)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 30, i32 16)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %42, i32 31, i32 128)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %44, i32 32, i32 128)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %46, i32 33, i32 0)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 34, i32 5)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %50, i32 35, i32 18)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %52, i32 36, i32 0)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %54, i32 38, i32 133)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %56, i32 39, i32 27)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %58, i32 40, i32 11)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %60, i32 41, i32 187)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %62, i32 42, i32 213)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 43, i32 123)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %66, i32 44, i32 14)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %68, i32 45, i32 162)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %70, i32 46, i32 115)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %72, i32 47, i32 0)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %74, i32 48, i32 16)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %76, i32 49, i32 152)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %78, i32 52, i32 56)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %80, i32 53, i32 0)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %83 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %82, i32 54, i32 120)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %85 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %84, i32 55, i32 67)
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %87 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %86, i32 56, i32 2)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %89 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %88, i32 57, i32 128)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %90, i32 58, i32 127)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %93 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %92, i32 59, i32 9)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %94, i32 60, i32 69)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %97 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %96, i32 61, i32 193)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %98, i32 29, i32* %3)
  %100 = load i32, i32* @RFCSR29_RSSI_GAIN, align 4
  %101 = call i32 @rt2x00_set_field8(i32* %3, i32 %100, i32 3)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %102, i32 29, i32 %103)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %105)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %107)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
