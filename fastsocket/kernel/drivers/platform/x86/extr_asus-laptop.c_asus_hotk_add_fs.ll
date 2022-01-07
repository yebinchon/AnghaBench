; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_add_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_add_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@infos = common dso_local global i32 0, align 4
@show_infos = common dso_local global i32* null, align 8
@wl_switch_handle = common dso_local global i64 0, align 8
@wlan = common dso_local global i32 0, align 4
@show_wlan = common dso_local global i32* null, align 8
@store_wlan = common dso_local global i32* null, align 8
@bt_switch_handle = common dso_local global i64 0, align 8
@bluetooth = common dso_local global i32 0, align 4
@show_bluetooth = common dso_local global i32* null, align 8
@store_bluetooth = common dso_local global i32* null, align 8
@display_set_handle = common dso_local global i64 0, align 8
@display_get_handle = common dso_local global i64 0, align 8
@display = common dso_local global i32 0, align 4
@show_disp = common dso_local global i32* null, align 8
@store_disp = common dso_local global i32* null, align 8
@ledd_set_handle = common dso_local global i64 0, align 8
@ledd = common dso_local global i32 0, align 4
@show_ledd = common dso_local global i32* null, align 8
@store_ledd = common dso_local global i32* null, align 8
@ls_switch_handle = common dso_local global i64 0, align 8
@ls_level_handle = common dso_local global i64 0, align 8
@ls_level = common dso_local global i32 0, align 4
@show_lslvl = common dso_local global i32* null, align 8
@store_lslvl = common dso_local global i32* null, align 8
@ls_switch = common dso_local global i32 0, align 4
@show_lssw = common dso_local global i32* null, align 8
@store_lssw = common dso_local global i32* null, align 8
@gps_status_handle = common dso_local global i64 0, align 8
@gps_on_handle = common dso_local global i64 0, align 8
@gps_off_handle = common dso_local global i64 0, align 8
@gps = common dso_local global i32 0, align 4
@show_gps = common dso_local global i32* null, align 8
@store_gps = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @asus_hotk_add_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_hotk_add_fs() #0 {
  %1 = load i32, i32* @infos, align 4
  %2 = load i32*, i32** @show_infos, align 8
  %3 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %1, i32 292, i32* %2, i32* null)
  %4 = load i64, i64* @wl_switch_handle, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @wlan, align 4
  %8 = load i32*, i32** @show_wlan, align 8
  %9 = load i32*, i32** @store_wlan, align 8
  %10 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %7, i32 420, i32* %8, i32* %9)
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i64, i64* @bt_switch_handle, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @bluetooth, align 4
  %16 = load i32*, i32** @show_bluetooth, align 8
  %17 = load i32*, i32** @store_bluetooth, align 8
  %18 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %15, i32 420, i32* %16, i32* %17)
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i64, i64* @display_set_handle, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i64, i64* @display_get_handle, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @display, align 4
  %27 = load i32*, i32** @show_disp, align 8
  %28 = load i32*, i32** @store_disp, align 8
  %29 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %26, i32 420, i32* %27, i32* %28)
  br label %38

30:                                               ; preds = %22, %19
  %31 = load i64, i64* @display_set_handle, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @display, align 4
  %35 = load i32*, i32** @store_disp, align 8
  %36 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %34, i32 128, i32* null, i32* %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i64, i64* @ledd_set_handle, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @ledd, align 4
  %43 = load i32*, i32** @show_ledd, align 8
  %44 = load i32*, i32** @store_ledd, align 8
  %45 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %42, i32 420, i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i64, i64* @ls_switch_handle, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i64, i64* @ls_level_handle, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* @ls_level, align 4
  %54 = load i32*, i32** @show_lslvl, align 8
  %55 = load i32*, i32** @store_lslvl, align 8
  %56 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %53, i32 420, i32* %54, i32* %55)
  %57 = load i32, i32* @ls_switch, align 4
  %58 = load i32*, i32** @show_lssw, align 8
  %59 = load i32*, i32** @store_lssw, align 8
  %60 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %57, i32 420, i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %52, %49, %46
  %62 = load i64, i64* @gps_status_handle, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i64, i64* @gps_on_handle, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i64, i64* @gps_off_handle, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @gps, align 4
  %72 = load i32*, i32** @show_gps, align 8
  %73 = load i32*, i32** @store_gps, align 8
  %74 = call i32 @ASUS_SET_DEVICE_ATTR(i32 %71, i32 420, i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %70, %67, %64, %61
  ret void
}

declare dso_local i32 @ASUS_SET_DEVICE_ATTR(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
