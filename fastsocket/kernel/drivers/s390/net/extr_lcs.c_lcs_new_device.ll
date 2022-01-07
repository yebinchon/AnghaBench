; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32*, i32 }
%struct.lcs_card = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32, %struct.lcs_card*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"newdev\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lcsnewdv\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dtctfail\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Detecting a network adapter for LCS devices failed with rc=%d (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"samedev\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"errinit\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c" Initialization failed\0A\00", align 1
@DEV_STATE_RECOVER = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@DEV_STATE_UP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"LCS device %s %s IPv6 support\0A\00", align 1
@LCS_IPASS_IPV6_SUPPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"LCS device %s %s Multicast support\0A\00", align 1
@LCS_IPASS_MULTICAST_SUPPORT = common dso_local global i32 0, align 4
@LCS_MAC_LENGTH = common dso_local global i32 0, align 4
@eth_type_trans = common dso_local global i32 0, align 4
@fddi_type_trans = common dso_local global i32 0, align 4
@lcs_mc_netdev_ops = common dso_local global i32 0, align 4
@lcs_netdev_ops = common dso_local global i32 0, align 4
@tr_type_trans = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @lcs_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_new_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.lcs_card*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 1
  %10 = call %struct.lcs_card* @dev_get_drvdata(i32* %9)
  store %struct.lcs_card* %10, %struct.lcs_card** %4, align 8
  %11 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %12 = icmp ne %struct.lcs_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %167

16:                                               ; preds = %1
  %17 = load i32, i32* @setup, align 4
  %18 = call i32 @LCS_DBF_TEXT(i32 2, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @setup, align 4
  %20 = call i32 @LCS_DBF_HEX(i32 3, i32 %19, %struct.lcs_card** %4, i32 8)
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %27 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %35 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %38 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %41 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ccw_device_set_online(i32 %43)
  %45 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %46 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ccw_device_set_online(i32 %48)
  %50 = load i32, i32* @setup, align 4
  %51 = call i32 @LCS_DBF_TEXT(i32 3, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %53 = call i32 @lcs_setup_card(%struct.lcs_card* %52)
  %54 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %55 = call i32 @lcs_detect(%struct.lcs_card* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %16
  %59 = load i32, i32* @setup, align 4
  %60 = call i32 @LCS_DBF_TEXT(i32 2, i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %62 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %61, i32 0, i32 5
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 5
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %69 = call i32 @lcs_stopcard(%struct.lcs_card* %68)
  br label %154

70:                                               ; preds = %16
  %71 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %72 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %71, i32 0, i32 5
  %73 = load %struct.net_device*, %struct.net_device** %72, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @setup, align 4
  %77 = call i32 @LCS_DBF_TEXT(i32 2, i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @setup, align 4
  %79 = call i32 @LCS_DBF_HEX(i32 3, i32 %78, %struct.lcs_card** %4, i32 8)
  br label %88

80:                                               ; preds = %70
  %81 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %82 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %84 [
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* @setup, align 4
  %86 = call i32 @LCS_DBF_TEXT(i32 3, i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %154

88:                                               ; preds = %75
  %89 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %90 = call i32 @lcs_set_allowed_threads(%struct.lcs_card* %89, i32 -1)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @DEV_STATE_RECOVER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  %95 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %96 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %95, i32 0, i32 5
  %97 = load %struct.net_device*, %struct.net_device** %96, align 8
  %98 = call i32 @lcs_set_multicast_list(%struct.net_device* %97)
  %99 = load i32, i32* @IFF_UP, align 4
  %100 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %101 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %100, i32 0, i32 5
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %107 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %106, i32 0, i32 5
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  %109 = call i32 @netif_carrier_on(%struct.net_device* %108)
  %110 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %111 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %110, i32 0, i32 5
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = call i32 @netif_wake_queue(%struct.net_device* %112)
  %114 = load i32, i32* @DEV_STATE_UP, align 4
  %115 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %116 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %120

117:                                              ; preds = %88
  %118 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %119 = call i32 @lcs_stopcard(%struct.lcs_card* %118)
  br label %120

120:                                              ; preds = %117, %94
  %121 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %122 = call i64 @lcs_register_netdev(%struct.ccwgroup_device* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %154

125:                                              ; preds = %120
  %126 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %127 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %126, i32 0, i32 5
  %128 = load %struct.net_device*, %struct.net_device** %127, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %132 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LCS_IPASS_IPV6_SUPPORT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %139 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %130, i8* %138)
  %140 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %141 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %140, i32 0, i32 5
  %142 = load %struct.net_device*, %struct.net_device** %141, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %146 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @LCS_IPASS_MULTICAST_SUPPORT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %153 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %144, i8* %152)
  store i32 0, i32* %2, align 4
  br label %167

154:                                              ; preds = %124, %84, %58
  %155 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %156 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ccw_device_set_offline(i32 %158)
  %160 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %161 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ccw_device_set_offline(i32 %163)
  %165 = load i32, i32* @ENODEV, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %154, %125, %13
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.lcs_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

declare dso_local i32 @ccw_device_set_online(i32) #1

declare dso_local i32 @lcs_setup_card(%struct.lcs_card*) #1

declare dso_local i32 @lcs_detect(%struct.lcs_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @lcs_stopcard(%struct.lcs_card*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lcs_set_allowed_threads(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_set_multicast_list(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @lcs_register_netdev(%struct.ccwgroup_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
