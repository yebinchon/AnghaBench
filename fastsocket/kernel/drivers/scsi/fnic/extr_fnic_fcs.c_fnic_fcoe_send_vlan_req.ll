; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_fcoe_send_vlan_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_fcoe_send_vlan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, %struct.TYPE_10__*, i32 (%struct.fnic*, i32)*, %struct.fcoe_ctlr }
%struct.TYPE_10__ = type { i32 }
%struct.fcoe_ctlr = type { i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)*, %struct.TYPE_16__*, i32 }
%struct.sk_buff = type { i8*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.fip_vlan = type { %struct.TYPE_18__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_11__ = type { i8*, i32*, i32* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending VLAN request...\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@fcoe_all_fcfs = common dso_local global i32 0, align 4
@ETH_P_FIP = common dso_local global i32 0, align 4
@FIP_VER = common dso_local global i32 0, align 4
@FIP_OP_VLAN = common dso_local global i32 0, align 4
@FIP_SC_VL_REQ = common dso_local global i32 0, align 4
@FIP_BPW = common dso_local global i32 0, align 4
@FIP_DT_MAC = common dso_local global i32 0, align 4
@FIP_DT_NAME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FCOE_CTLR_FIPVLAN_TOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*)* @fnic_fcoe_send_vlan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_fcoe_send_vlan_req(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fip_vlan*, align 8
  %8 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %9 = load %struct.fnic*, %struct.fnic** %2, align 8
  %10 = getelementptr inbounds %struct.fnic, %struct.fnic* %9, i32 0, i32 3
  store %struct.fcoe_ctlr* %10, %struct.fcoe_ctlr** %3, align 8
  %11 = load %struct.fnic*, %struct.fnic** %2, align 8
  %12 = call i32 @fnic_fcoe_reset_vlans(%struct.fnic* %11)
  %13 = load %struct.fnic*, %struct.fnic** %2, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 2
  %15 = load i32 (%struct.fnic*, i32)*, i32 (%struct.fnic*, i32)** %14, align 8
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = call i32 %15(%struct.fnic* %16, i32 0)
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load %struct.fnic*, %struct.fnic** %2, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @FNIC_FCS_DBG(i32 %18, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = call %struct.sk_buff* @dev_alloc_skb(i32 80)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %155

29:                                               ; preds = %1
  store i32 80, i32* %6, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to %struct.fip_vlan*
  store %struct.fip_vlan* %35, %struct.fip_vlan** %7, align 8
  %36 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %37 = call i32 @memset(%struct.fip_vlan* %36, i32 0, i32 80)
  %38 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %39 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %43 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32* %41, i32 %44, i32 %45)
  %47 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %48 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @fcoe_all_fcfs, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @ETH_P_FIP, align 4
  %55 = call i8* @htons(i32 %54)
  %56 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %57 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* @FIP_VER, align 4
  %60 = call i32 @FIP_VER_ENCAPS(i32 %59)
  %61 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %62 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @FIP_OP_VLAN, align 4
  %65 = call i8* @htons(i32 %64)
  %66 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %67 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load i32, i32* @FIP_SC_VL_REQ, align 4
  %70 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %71 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @FIP_BPW, align 4
  %74 = sext i32 %73 to i64
  %75 = udiv i64 24, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @htons(i32 %76)
  %78 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %79 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @FIP_DT_MAC, align 4
  %82 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %83 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* @FIP_BPW, align 4
  %88 = sext i32 %87 to i64
  %89 = udiv i64 12, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %92 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  %96 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %97 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %101 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ETH_ALEN, align 4
  %104 = call i32 @memcpy(i32* %99, i32 %102, i32 %103)
  %105 = load i32, i32* @FIP_DT_NAME, align 4
  %106 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %107 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* @FIP_BPW, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 12, %112
  %114 = trunc i64 %113 to i32
  %115 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %116 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  %120 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %121 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fip_vlan*, %struct.fip_vlan** %7, align 8
  %126 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = call i32 @put_unaligned_be64(i32 %124, i32* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call i32 @skb_put(%struct.sk_buff* %130, i32 80)
  %132 = load i32, i32* @ETH_P_FIP, align 4
  %133 = call i8* @htons(i32 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = call i32 @skb_reset_mac_header(%struct.sk_buff* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @skb_reset_network_header(%struct.sk_buff* %138)
  %140 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %141 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %140, i32 0, i32 0
  %142 = load i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)*, i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)** %141, align 8
  %143 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = call i32 %142(%struct.fcoe_ctlr* %143, %struct.sk_buff* %144)
  %146 = load i64, i64* @jiffies, align 8
  %147 = load i32, i32* @FCOE_CTLR_FIPVLAN_TOV, align 4
  %148 = call i64 @msecs_to_jiffies(i32 %147)
  %149 = add nsw i64 %146, %148
  store i64 %149, i64* %8, align 8
  %150 = load %struct.fnic*, %struct.fnic** %2, align 8
  %151 = getelementptr inbounds %struct.fnic, %struct.fnic* %150, i32 0, i32 0
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @round_jiffies(i64 %152)
  %154 = call i32 @mod_timer(i32* %151, i32 %153)
  br label %155

155:                                              ; preds = %29, %28
  ret void
}

declare dso_local i32 @fnic_fcoe_reset_vlans(%struct.fnic*) #1

declare dso_local i32 @FNIC_FCS_DBG(i32, i32, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memset(%struct.fip_vlan*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @FIP_VER_ENCAPS(i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
