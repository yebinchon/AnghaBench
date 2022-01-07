; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3390.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@GPIO_SWITCH = common dso_local global i32 0, align 4
@GPIO_SWITCH_5 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@REV_RT3390E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_3390 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_3390(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %4, i32 30)
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %6, i32 0, i32 160)
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %8, i32 1, i32 225)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %10, i32 2, i32 241)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %12, i32 3, i32 98)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %14, i32 4, i32 64)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %16, i32 5, i32 139)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %18, i32 6, i32 66)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 7, i32 52)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 8, i32 0)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 9, i32 192)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %26, i32 10, i32 97)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 11, i32 33)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %30, i32 12, i32 59)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 13, i32 224)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %34, i32 14, i32 144)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 15, i32 83)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %38, i32 16, i32 224)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 17, i32 148)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %42, i32 18, i32 92)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %44, i32 19, i32 74)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %46, i32 20, i32 178)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 21, i32 246)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %50, i32 22, i32 0)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %52, i32 23, i32 20)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %54, i32 24, i32 8)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %56, i32 25, i32 61)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %58, i32 26, i32 133)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %60, i32 27, i32 0)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %62, i32 28, i32 65)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 29, i32 143)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %66, i32 30, i32 32)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %68, i32 31, i32 15)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = load i32, i32* @GPIO_SWITCH, align 4
  %72 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %70, i32 %71, i32* %3)
  %73 = load i32, i32* @GPIO_SWITCH_5, align 4
  %74 = call i32 @rt2x00_set_field32(i32* %3, i32 %73, i32 0)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %76 = load i32, i32* @GPIO_SWITCH, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = call i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev* %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = load i32, i32* @RT3390, align 4
  %83 = load i32, i32* @REV_RT3390E, align 4
  %84 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %1
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %87, i32 27, i32 3)
  br label %89

89:                                               ; preds = %86, %1
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %90)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %93 = call i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %92)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
