; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_sg_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_sg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acx_bt_wlan_coex = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acx sg enable\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONF_SG_DISABLE = common dso_local global i32 0, align 4
@ACX_SG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set softgemini enable: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_sg_enable(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acx_bt_wlan_coex*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_bt_wlan_coex* @kzalloc(i32 4, i32 %9)
  store %struct.acx_bt_wlan_coex* %10, %struct.acx_bt_wlan_coex** %5, align 8
  %11 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %5, align 8
  %12 = icmp ne %struct.acx_bt_wlan_coex* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %5, align 8
  %26 = getelementptr inbounds %struct.acx_bt_wlan_coex, %struct.acx_bt_wlan_coex* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @CONF_SG_DISABLE, align 4
  %29 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %5, align 8
  %30 = getelementptr inbounds %struct.acx_bt_wlan_coex, %struct.acx_bt_wlan_coex* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %33 = load i32, i32* @ACX_SG_ENABLE, align 4
  %34 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %5, align 8
  %35 = call i32 @wl1271_cmd_configure(%struct.wl1271* %32, i32 %33, %struct.acx_bt_wlan_coex* %34, i32 4)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %38, %13
  %43 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %5, align 8
  %44 = call i32 @kfree(%struct.acx_bt_wlan_coex* %43)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_bt_wlan_coex* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_bt_wlan_coex*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_bt_wlan_coex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
