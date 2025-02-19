; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.cmd_ds_802_11_mac_address = type { %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i8* }

@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_802_11_MAC_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_set_mac_address(%struct.lbtf_private* %0, i32* %1) #0 {
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmd_ds_802_11_mac_address, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @LBTF_DEB_CMD, align 4
  %7 = call i32 @lbtf_deb_enter(i32 %6)
  %8 = call i8* @cpu_to_le16(i32 24)
  %9 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @CMD_ACT_SET, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %5, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcpy(i32 %15, i32* %16, i32 %17)
  %19 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %20 = load i32, i32* @CMD_802_11_MAC_ADDRESS, align 4
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, %struct.cmd_ds_802_11_mac_address* %5, i32 0, i32 0
  %22 = call i32 @lbtf_cmd_async(%struct.lbtf_private* %19, i32 %20, %struct.TYPE_2__* %21, i32 24)
  %23 = load i32, i32* @LBTF_DEB_CMD, align 4
  %24 = call i32 @lbtf_deb_leave(i32 %23)
  ret i32 0
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbtf_cmd_async(%struct.lbtf_private*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
