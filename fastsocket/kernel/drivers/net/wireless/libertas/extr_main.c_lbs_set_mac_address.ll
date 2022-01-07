; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.lbs_private* }
%struct.lbs_private = type { %struct.TYPE_4__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.cmd_ds_802_11_mac_address = type { i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@LBS_DEB_NET = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_802_11_MAC_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set MAC address failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @lbs_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.cmd_ds_802_11_mac_address, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  store %struct.lbs_private* %11, %struct.lbs_private** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %7, align 8
  %14 = load i32, i32* @LBS_DEB_NET, align 4
  %15 = call i32 @lbs_deb_enter(i32 %14)
  %16 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 2
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %3, align 8
  %19 = call i8* @cpu_to_le16(i32 24)
  %20 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @CMD_ACT_SET, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %8, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @memcpy(i32 %26, i32 %29, i32 %30)
  %32 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %33 = load i32, i32* @CMD_802_11_MAC_ADDRESS, align 4
  %34 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %32, i32 %33, %struct.cmd_ds_802_11_mac_address* %8)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 @lbs_deb_net(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %72

39:                                               ; preds = %2
  %40 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %42, i32 %45, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %50, i32 %53, i32 %54)
  %56 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %39
  %61 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %39
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i32, i32* @LBS_DEB_NET, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @lbs_deb_leave_args(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_mac_address*) #1

declare dso_local i32 @lbs_deb_net(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
