; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_dump_mib_mac_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_dump_mib_mac_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mib_mac_mgmt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIB_MAC_MGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"at76_get_mib (MAC_MGMT) failed: %d\0A\00", align 1
@DBG_MIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [345 x i8] c"%s: MIB MAC_MGMT: beacon_period %d CFP_max_duration %d medium_occupancy_limit %d station_id 0x%x ATIM_window %d CFP_mode %d privacy_opt_impl %d DTIM_period %d CFP_period %d current_bssid %pM current_essid %s current_bss_type %d pm_mode %d ibss_change %d res %d multi_domain_capability_implemented %d international_roaming %d country_string %.3s\00", align 1
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at76_priv*)* @at76_dump_mib_mac_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_dump_mib_mac_mgmt(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mib_mac_mgmt*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mib_mac_mgmt* @kmalloc(i32 72, i32 %5)
  store %struct.mib_mac_mgmt* %6, %struct.mib_mac_mgmt** %4, align 8
  %7 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %8 = icmp ne %struct.mib_mac_mgmt* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %100

10:                                               ; preds = %1
  %11 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %12 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MIB_MAC_MGMT, align 4
  %15 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %16 = call i32 @at76_get_mib(i32 %13, i32 %14, %struct.mib_mac_mgmt* %15, i32 72)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %21 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @wiphy_err(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %97

27:                                               ; preds = %10
  %28 = load i32, i32* @DBG_MIB, align 4
  %29 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wiphy_name(i32 %33)
  %35 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %36 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %40 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %39, i32 0, i32 16
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %44 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %48 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %47, i32 0, i32 14
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %52 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %56 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %59 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %62 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %65 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %68 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %71 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %74 = call i32 @hex2str(i32 %72, i32 %73)
  %75 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %76 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %79 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %82 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %85 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %88 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %91 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %94 = getelementptr inbounds %struct.mib_mac_mgmt, %struct.mib_mac_mgmt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @at76_dbg(i32 %28, i8* getelementptr inbounds ([345 x i8], [345 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %27, %19
  %98 = load %struct.mib_mac_mgmt*, %struct.mib_mac_mgmt** %4, align 8
  %99 = call i32 @kfree(%struct.mib_mac_mgmt* %98)
  br label %100

100:                                              ; preds = %97, %9
  ret void
}

declare dso_local %struct.mib_mac_mgmt* @kmalloc(i32, i32) #1

declare dso_local i32 @at76_get_mib(i32, i32, %struct.mib_mac_mgmt*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hex2str(i32, i32) #1

declare dso_local i32 @kfree(%struct.mib_mac_mgmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
