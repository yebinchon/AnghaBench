; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-microsoft.c_ms_ergonomy_kb_quirk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-microsoft.c_ms_ergonomy_kb_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE = common dso_local global i32 0, align 4
@KEY_CHAT = common dso_local global i32 0, align 4
@KEY_PHONE = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@KEY_F13 = common dso_local global i32 0, align 4
@KEY_F14 = common dso_local global i32 0, align 4
@KEY_F15 = common dso_local global i32 0, align 4
@KEY_F16 = common dso_local global i32 0, align 4
@KEY_F17 = common dso_local global i32 0, align 4
@KEY_F18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_input*, %struct.hid_usage*, i64**, i32*)* @ms_ergonomy_kb_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_ergonomy_kb_quirk(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.input_dev*, align 8
  store %struct.hid_input* %0, %struct.hid_input** %6, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %12 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %11, i32 0, i32 0
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %10, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %58 [
    i32 64774, label %19
    i32 64775, label %22
    i32 65285, label %25
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @KEY_CHAT, align 4
  %21 = call i32 @ms_map_key_clear(i32 %20)
  br label %59

22:                                               ; preds = %4
  %23 = load i32, i32* @KEY_PHONE, align 4
  %24 = call i32 @ms_map_key_clear(i32 %23)
  br label %59

25:                                               ; preds = %4
  %26 = load i32, i32* @EV_REP, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_bit(i32 %26, i32 %29)
  %31 = load i32, i32* @KEY_F13, align 4
  %32 = call i32 @ms_map_key_clear(i32 %31)
  %33 = load i32, i32* @KEY_F14, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_bit(i32 %33, i32 %36)
  %38 = load i32, i32* @KEY_F15, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_bit(i32 %38, i32 %41)
  %43 = load i32, i32* @KEY_F16, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_bit(i32 %43, i32 %46)
  %48 = load i32, i32* @KEY_F17, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_bit(i32 %48, i32 %51)
  %53 = load i32, i32* @KEY_F18, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_bit(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %4, %25
  store i32 0, i32* %5, align 4
  br label %60

59:                                               ; preds = %22, %19
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @ms_map_key_clear(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
