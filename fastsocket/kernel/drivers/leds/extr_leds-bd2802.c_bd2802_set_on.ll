; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_set_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_set_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { i32, i32, i32 }

@BD2802_REG_CURRENT1SETUP = common dso_local global i32 0, align 4
@BD2802_REG_CURRENT2SETUP = common dso_local global i32 0, align 4
@BD2802_CURRENT_000 = common dso_local global i32 0, align 4
@BD2802_REG_WAVEPATTERN = common dso_local global i32 0, align 4
@BD2802_PATTERN_FULL = common dso_local global i32 0, align 4
@BD2802_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd2802_led*, i32, i32)* @bd2802_set_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd2802_set_on(%struct.bd2802_led* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bd2802_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %9 = call i64 @bd2802_is_all_off(%struct.bd2802_led* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %13 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %18 = call i32 @bd2802_reset_cancel(%struct.bd2802_led* %17)
  br label %19

19:                                               ; preds = %16, %11, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BD2802_REG_CURRENT1SETUP, align 4
  %23 = call i32 @bd2802_get_reg_addr(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %25 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %29 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bd2802_write_byte(i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BD2802_REG_CURRENT2SETUP, align 4
  %35 = call i32 @bd2802_get_reg_addr(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %37 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BD2802_CURRENT_000, align 4
  %41 = call i32 @bd2802_write_byte(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BD2802_REG_WAVEPATTERN, align 4
  %45 = call i32 @bd2802_get_reg_addr(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %47 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BD2802_PATTERN_FULL, align 4
  %51 = call i32 @bd2802_write_byte(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @bd2802_enable(%struct.bd2802_led* %52, i32 %53)
  %55 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BD2802_ON, align 4
  %59 = call i32 @bd2802_update_state(%struct.bd2802_led* %55, i32 %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i64 @bd2802_is_all_off(%struct.bd2802_led*) #1

declare dso_local i32 @bd2802_reset_cancel(%struct.bd2802_led*) #1

declare dso_local i32 @bd2802_get_reg_addr(i32, i32, i32) #1

declare dso_local i32 @bd2802_write_byte(i32, i32, i32) #1

declare dso_local i32 @bd2802_enable(%struct.bd2802_led*, i32) #1

declare dso_local i32 @bd2802_update_state(%struct.bd2802_led*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
