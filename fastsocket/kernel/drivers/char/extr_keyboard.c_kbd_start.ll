; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_kbd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_kbd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { i32 }

@ledstate = common dso_local global i8 0, align 1
@keyboard_tasklet = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*)* @kbd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbd_start(%struct.input_handle* %0) #0 {
  %2 = alloca %struct.input_handle*, align 8
  %3 = alloca i8, align 1
  store %struct.input_handle* %0, %struct.input_handle** %2, align 8
  %4 = load i8, i8* @ledstate, align 1
  store i8 %4, i8* %3, align 1
  %5 = call i32 @tasklet_disable(i32* @keyboard_tasklet)
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 255
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %11 = load i32, i32* @EV_LED, align 4
  %12 = load i32, i32* @LED_SCROLLL, align 4
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @input_inject_event(%struct.input_handle* %10, i32 %11, i32 %12, i32 %19)
  %21 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %22 = load i32, i32* @EV_LED, align 4
  %23 = load i32, i32* @LED_NUML, align 4
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @input_inject_event(%struct.input_handle* %21, i32 %22, i32 %23, i32 %30)
  %32 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %33 = load i32, i32* @EV_LED, align 4
  %34 = load i32, i32* @LED_CAPSL, align 4
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @input_inject_event(%struct.input_handle* %32, i32 %33, i32 %34, i32 %41)
  %43 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %44 = load i32, i32* @EV_SYN, align 4
  %45 = load i32, i32* @SYN_REPORT, align 4
  %46 = call i32 @input_inject_event(%struct.input_handle* %43, i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %9, %1
  %48 = call i32 @tasklet_enable(i32* @keyboard_tasklet)
  ret void
}

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @input_inject_event(%struct.input_handle*, i32, i32, i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
