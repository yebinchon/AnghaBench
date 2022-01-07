; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-microsoft.c_ms_presenter_8k_quirk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-microsoft.c_ms_presenter_8k_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i32 }

@EV_REP = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_FORWARD = common dso_local global i32 0, align 4
@KEY_BACK = common dso_local global i32 0, align 4
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_CLOSE = common dso_local global i32 0, align 4
@KEY_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_input*, %struct.hid_usage*, i64**, i32*)* @ms_presenter_8k_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_presenter_8k_quirk(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  store %struct.hid_input* %0, %struct.hid_input** %6, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @EV_REP, align 4
  %11 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %12 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @set_bit(i32 %10, i32 %15)
  %17 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HID_USAGE, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %37 [
    i32 64776, label %22
    i32 64777, label %25
    i32 64779, label %28
    i32 64782, label %31
    i32 64783, label %34
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* @KEY_FORWARD, align 4
  %24 = call i32 @ms_map_key_clear(i32 %23)
  br label %38

25:                                               ; preds = %4
  %26 = load i32, i32* @KEY_BACK, align 4
  %27 = call i32 @ms_map_key_clear(i32 %26)
  br label %38

28:                                               ; preds = %4
  %29 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %30 = call i32 @ms_map_key_clear(i32 %29)
  br label %38

31:                                               ; preds = %4
  %32 = load i32, i32* @KEY_CLOSE, align 4
  %33 = call i32 @ms_map_key_clear(i32 %32)
  br label %38

34:                                               ; preds = %4
  %35 = load i32, i32* @KEY_PLAY, align 4
  %36 = call i32 @ms_map_key_clear(i32 %35)
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

38:                                               ; preds = %34, %31, %28, %25, %22
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ms_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
