; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32*, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.vnic_wq* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.vnic_wq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32, i32, i8* }
%struct.vlan_ethhdr = type { i8*, i8*, i8* }
%struct.fcoe_hdr = type { i32 }
%struct.fc_frame_header = type { i64, i32 }

@FC_RCTL_ELS_REQ = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@FC_FCOE_VER = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.fc_frame*)* @fnic_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_send_frame(%struct.fnic* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.vnic_wq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.vlan_ethhdr*, align 8
  %11 = alloca %struct.fcoe_hdr*, align 8
  %12 = alloca %struct.fc_frame_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  %17 = load %struct.fnic*, %struct.fnic** %4, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 7
  %19 = load %struct.vnic_wq*, %struct.vnic_wq** %18, align 8
  %20 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %19, i64 0
  store %struct.vnic_wq* %20, %struct.vnic_wq** %6, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %22 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %21)
  store %struct.fc_frame_header* %22, %struct.fc_frame_header** %12, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %24 = call %struct.sk_buff* @fp_skb(%struct.fc_frame* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %26 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FC_RCTL_ELS_REQ, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load %struct.fnic*, %struct.fnic** %4, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 4
  %36 = load %struct.fnic*, %struct.fnic** %4, align 8
  %37 = getelementptr inbounds %struct.fnic, %struct.fnic* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i64 @fcoe_ctlr_els_send(%struct.TYPE_2__* %35, i32 %38, %struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %186

43:                                               ; preds = %33, %2
  %44 = load %struct.fnic*, %struct.fnic** %4, align 8
  %45 = getelementptr inbounds %struct.fnic, %struct.fnic* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %43
  store i32 28, i32* %14, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @skb_push(%struct.sk_buff* %49, i32 %50)
  %52 = inttoptr i64 %51 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %52, %struct.vlan_ethhdr** %10, align 8
  %53 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %10, align 8
  %54 = bitcast %struct.vlan_ethhdr* %53 to %struct.ethhdr*
  store %struct.ethhdr* %54, %struct.ethhdr** %9, align 8
  %55 = load i32, i32* @ETH_P_8021Q, align 4
  %56 = call i8* @htons(i32 %55)
  %57 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %10, align 8
  %58 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @ETH_P_FCOE, align 4
  %60 = call i8* @htons(i32 %59)
  %61 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %10, align 8
  %62 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.fnic*, %struct.fnic** %4, align 8
  %64 = getelementptr inbounds %struct.fnic, %struct.fnic* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @htons(i32 %65)
  %67 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %10, align 8
  %68 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %10, align 8
  %70 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %69, i64 1
  %71 = bitcast %struct.vlan_ethhdr* %70 to %struct.fcoe_hdr*
  store %struct.fcoe_hdr* %71, %struct.fcoe_hdr** %11, align 8
  br label %84

72:                                               ; preds = %43
  store i32 20, i32* %14, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @skb_push(%struct.sk_buff* %73, i32 %74)
  %76 = inttoptr i64 %75 to %struct.ethhdr*
  store %struct.ethhdr* %76, %struct.ethhdr** %9, align 8
  %77 = load i32, i32* @ETH_P_FCOE, align 4
  %78 = call i8* @htons(i32 %77)
  %79 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %80 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %82 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %81, i64 1
  %83 = bitcast %struct.ethhdr* %82 to %struct.fcoe_hdr*
  store %struct.fcoe_hdr* %83, %struct.fcoe_hdr** %11, align 8
  br label %84

84:                                               ; preds = %72, %48
  %85 = load %struct.fnic*, %struct.fnic** %4, align 8
  %86 = getelementptr inbounds %struct.fnic, %struct.fnic* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %92 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %95 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @fc_fcoe_set_mac(i32 %93, i32 %96)
  br label %108

98:                                               ; preds = %84
  %99 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %100 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fnic*, %struct.fnic** %4, align 8
  %103 = getelementptr inbounds %struct.fnic, %struct.fnic* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = call i32 @memcpy(i32 %101, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %98, %90
  %109 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %110 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.fnic*, %struct.fnic** %4, align 8
  %113 = getelementptr inbounds %struct.fnic, %struct.fnic* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memcpy(i32 %111, i32 %114, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = srem i32 %120, 4
  %122 = call i32 @BUG_ON(i32 %121)
  %123 = load %struct.fcoe_hdr*, %struct.fcoe_hdr** %11, align 8
  %124 = call i32 @memset(%struct.fcoe_hdr* %123, i32 0, i32 4)
  %125 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %126 = call i32 @fr_sof(%struct.fc_frame* %125)
  %127 = load %struct.fcoe_hdr*, %struct.fcoe_hdr** %11, align 8
  %128 = getelementptr inbounds %struct.fcoe_hdr, %struct.fcoe_hdr* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i64, i64* @FC_FCOE_VER, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %108
  %132 = load %struct.fcoe_hdr*, %struct.fcoe_hdr** %11, align 8
  %133 = load i64, i64* @FC_FCOE_VER, align 8
  %134 = call i32 @FC_FCOE_ENCAPS_VER(%struct.fcoe_hdr* %132, i64 %133)
  br label %135

135:                                              ; preds = %131, %108
  %136 = load %struct.fnic*, %struct.fnic** %4, align 8
  %137 = getelementptr inbounds %struct.fnic, %struct.fnic* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %142 = call i32 @pci_map_single(i32 %138, %struct.ethhdr* %139, i32 %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load %struct.fnic*, %struct.fnic** %4, align 8
  %144 = getelementptr inbounds %struct.fnic, %struct.fnic* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.vnic_wq*, %struct.vnic_wq** %6, align 8
  %150 = call i32 @vnic_wq_desc_avail(%struct.vnic_wq* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %135
  %153 = load %struct.fnic*, %struct.fnic** %4, align 8
  %154 = getelementptr inbounds %struct.fnic, %struct.fnic* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %159 = call i32 @pci_unmap_single(i32 %155, i32 %156, i32 %157, i32 %158)
  store i32 -1, i32* %15, align 4
  br label %171

160:                                              ; preds = %135
  %161 = load %struct.vnic_wq*, %struct.vnic_wq** %6, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %166 = call i32 @fr_eof(%struct.fc_frame* %165)
  %167 = load %struct.fnic*, %struct.fnic** %4, align 8
  %168 = getelementptr inbounds %struct.fnic, %struct.fnic* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @fnic_queue_wq_desc(%struct.vnic_wq* %161, %struct.sk_buff* %162, i32 %163, i32 %164, i32 %166, i32 0, i32 %169, i32 1, i32 1, i32 1)
  br label %171

171:                                              ; preds = %160, %152
  %172 = load %struct.fnic*, %struct.fnic** %4, align 8
  %173 = getelementptr inbounds %struct.fnic, %struct.fnic* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i64, i64* %16, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %182 = call %struct.sk_buff* @fp_skb(%struct.fc_frame* %181)
  %183 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %182)
  br label %184

184:                                              ; preds = %180, %171
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %42
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.sk_buff* @fp_skb(%struct.fc_frame*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @fcoe_ctlr_els_send(%struct.TYPE_2__*, i32, %struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @fc_fcoe_set_mac(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.fcoe_hdr*, i32, i32) #1

declare dso_local i32 @fr_sof(%struct.fc_frame*) #1

declare dso_local i32 @FC_FCOE_ENCAPS_VER(%struct.fcoe_hdr*, i64) #1

declare dso_local i32 @pci_map_single(i32, %struct.ethhdr*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vnic_wq_desc_avail(%struct.vnic_wq*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @fnic_queue_wq_desc(%struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fr_eof(%struct.fc_frame*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
