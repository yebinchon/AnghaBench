; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_mac_hid.c_mac_hid_mouse_emulate_buttons.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_mac_hid.c_mac_hid_mouse_emulate_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mouse_emulate_buttons = common dso_local global i32 0, align 4
@mouse_button2_keycode = common dso_local global i32 0, align 4
@mouse_button3_keycode = common dso_local global i32 0, align 4
@emumousebtn = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@mouse_last_keycode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_hid_mouse_emulate_buttons(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %47 [
    i32 1, label %9
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @mouse_emulate_buttons, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @mouse_button2_keycode, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @mouse_button3_keycode, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @mouse_emulate_buttons, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* @emumousebtn, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @mouse_button2_keycode, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @BTN_MIDDLE, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @BTN_RIGHT, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @input_report_key(i32 %24, i32 %33, i32 %34)
  %36 = load i32, i32* @emumousebtn, align 4
  %37 = call i32 @input_sync(i32 %36)
  store i32 1, i32* %4, align 4
  br label %48

38:                                               ; preds = %20
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* @mouse_last_keycode, align 4
  br label %46

46:                                               ; preds = %44, %16, %9
  br label %47

47:                                               ; preds = %3, %46
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
