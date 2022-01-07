; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_beacon_filter_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_beacon_filter_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.conf_bcn_filt_rule* }
%struct.conf_bcn_filt_rule = type { i64, i64, i64, i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_beacon_filter_ie_table = type { i64*, i64, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"acx beacon filter table\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@CONF_BCN_IE_OUI_LEN = common dso_local global i64 0, align 8
@CONF_BCN_IE_VER_LEN = common dso_local global i64 0, align 8
@ACX_BEACON_FILTER_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to set beacon filter table: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_beacon_filter_table(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.acx_beacon_filter_ie_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.conf_bcn_filt_rule*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DEBUG_ACX, align 4
  %12 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.acx_beacon_filter_ie_table* @kzalloc(i32 24, i32 %13)
  store %struct.acx_beacon_filter_ie_table* %14, %struct.acx_beacon_filter_ie_table** %5, align 8
  %15 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %16 = icmp ne %struct.acx_beacon_filter_ie_table* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %136

20:                                               ; preds = %2
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %22 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %25 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %27 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %122, %20
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %125

36:                                               ; preds = %28
  %37 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %41, i64 %43
  store %struct.conf_bcn_filt_rule* %44, %struct.conf_bcn_filt_rule** %10, align 8
  %45 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %10, align 8
  %46 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %49 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64 %47, i64* %54, align 8
  %55 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %10, align 8
  %56 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %59 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  store i64 %57, i64* %64, align 8
  %65 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %10, align 8
  %66 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %117

70:                                               ; preds = %36
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %122

74:                                               ; preds = %70
  %75 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %76 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %10, align 8
  %82 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @CONF_BCN_IE_OUI_LEN, align 8
  %85 = call i32 @memcpy(i64* %80, i32 %83, i64 %84)
  %86 = load i64, i64* @CONF_BCN_IE_OUI_LEN, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %10, align 8
  %92 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %95 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  store i64 %93, i64* %100, align 8
  %101 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %102 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load %struct.conf_bcn_filt_rule*, %struct.conf_bcn_filt_rule** %10, align 8
  %108 = getelementptr inbounds %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* @CONF_BCN_IE_VER_LEN, align 8
  %111 = call i32 @memcpy(i64* %106, i32 %109, i64 %110)
  %112 = load i64, i64* @CONF_BCN_IE_VER_LEN, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %74, %36
  %118 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %119 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %117, %73
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %28

125:                                              ; preds = %28
  %126 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %127 = load i32, i32* @ACX_BEACON_FILTER_TABLE, align 4
  %128 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %129 = call i32 @wl1271_cmd_configure(%struct.wl1271* %126, i32 %127, %struct.acx_beacon_filter_ie_table* %128, i32 24)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @wl1271_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %136

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %132, %17
  %137 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %5, align 8
  %138 = call i32 @kfree(%struct.acx_beacon_filter_ie_table* %137)
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_beacon_filter_ie_table* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_beacon_filter_ie_table*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_filter_ie_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
