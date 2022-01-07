; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_rq_indicate_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_rq_indicate_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32 }
%struct.cq_desc = type { i32 }
%struct.vnic_rq_buf = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.enic = type { i32*, i32, i64, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.cq_enet_rq_desc = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_VLAN_TCI_VLAN_MASK = common dso_local global i64 0, align 8
@NETIF_F_GRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rq*, %struct.cq_desc*, %struct.vnic_rq_buf*, i32, i8*)* @enic_rq_indicate_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_rq_indicate_buf(%struct.vnic_rq* %0, %struct.cq_desc* %1, %struct.vnic_rq_buf* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.vnic_rq*, align 8
  %7 = alloca %struct.cq_desc*, align 8
  %8 = alloca %struct.vnic_rq_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.enic*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  store %struct.vnic_rq* %0, %struct.vnic_rq** %6, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %7, align 8
  store %struct.vnic_rq_buf* %2, %struct.vnic_rq_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %42 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %43 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.enic* @vnic_dev_priv(i32 %44)
  store %struct.enic* %45, %struct.enic** %11, align 8
  %46 = load %struct.enic*, %struct.enic** %11, align 8
  %47 = getelementptr inbounds %struct.enic, %struct.enic* %46, i32 0, i32 6
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  store %struct.net_device* %48, %struct.net_device** %12, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %5
  br label %190

52:                                               ; preds = %5
  %53 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %54 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %53, i32 0, i32 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %13, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NET_IP_ALIGN, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i32 @prefetch(i64 %60)
  %62 = load %struct.enic*, %struct.enic** %11, align 8
  %63 = getelementptr inbounds %struct.enic, %struct.enic* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %66 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %69 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %72 = call i32 @pci_unmap_single(i32 %64, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.cq_desc*, %struct.cq_desc** %7, align 8
  %74 = bitcast %struct.cq_desc* %73 to %struct.cq_enet_rq_desc*
  %75 = call i32 @cq_enet_rq_desc_dec(%struct.cq_enet_rq_desc* %74, i64* %14, i64* %15, i64* %36, i64* %37, i64* %18, i64* %20, i64* %16, i64* %17, i64* %33, i64* %34, i32* %41, i64* %38, i64* %35, i64* %19, i64* %39, i64* %40, i64* %21, i64* %22, i64* %23, i64* %24, i64* %25, i64* %26, i64* %27, i64* %28, i64* %29, i64* %30, i64* %31, i64* %32)
  %76 = load i64, i64* %35, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %52
  %79 = load i64, i64* %32, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %38, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.enic*, %struct.enic** %11, align 8
  %86 = getelementptr inbounds %struct.enic, %struct.enic* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %98

89:                                               ; preds = %81
  %90 = load i64, i64* %38, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.enic*, %struct.enic** %11, align 8
  %94 = getelementptr inbounds %struct.enic, %struct.enic* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %78
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  br label %190

102:                                              ; preds = %52
  %103 = load i64, i64* %16, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %187

105:                                              ; preds = %102
  %106 = load i64, i64* %38, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %187

108:                                              ; preds = %105
  %109 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %110 = load i64, i64* %38, align 8
  %111 = call i32 @skb_put(%struct.sk_buff* %109, i64 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = load %struct.net_device*, %struct.net_device** %12, align 8
  %114 = call i32 @eth_type_trans(%struct.sk_buff* %112, %struct.net_device* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.enic*, %struct.enic** %11, align 8
  %118 = getelementptr inbounds %struct.enic, %struct.enic* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %108
  %122 = load i64, i64* %34, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %40, align 8
  %126 = call i32 @htons(i64 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %124, %121, %108
  %133 = load i64, i64* %19, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %132
  %136 = load i64, i64* %39, align 8
  %137 = load i64, i64* @CQ_ENET_RQ_DESC_VLAN_TCI_VLAN_MASK, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %135
  %141 = load %struct.net_device*, %struct.net_device** %12, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NETIF_F_GRO, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = load %struct.enic*, %struct.enic** %11, align 8
  %149 = getelementptr inbounds %struct.enic, %struct.enic* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %36, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load %struct.enic*, %struct.enic** %11, align 8
  %154 = getelementptr inbounds %struct.enic, %struct.enic* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* %39, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %158 = call i32 @vlan_gro_receive(i32* %152, i32 %155, i64 %156, %struct.sk_buff* %157)
  br label %166

159:                                              ; preds = %140
  %160 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %161 = load %struct.enic*, %struct.enic** %11, align 8
  %162 = getelementptr inbounds %struct.enic, %struct.enic* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* %39, align 8
  %165 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %160, i32 %163, i64 %164)
  br label %166

166:                                              ; preds = %159, %147
  br label %186

167:                                              ; preds = %135, %132
  %168 = load %struct.net_device*, %struct.net_device** %12, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NETIF_F_GRO, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.enic*, %struct.enic** %11, align 8
  %176 = getelementptr inbounds %struct.enic, %struct.enic* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %36, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %181 = call i32 @napi_gro_receive(i32* %179, %struct.sk_buff* %180)
  br label %185

182:                                              ; preds = %167
  %183 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %184 = call i32 @netif_receive_skb(%struct.sk_buff* %183)
  br label %185

185:                                              ; preds = %182, %174
  br label %186

186:                                              ; preds = %185, %166
  br label %190

187:                                              ; preds = %105, %102
  %188 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %189 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %188)
  br label %190

190:                                              ; preds = %51, %99, %187, %186
  ret void
}

declare dso_local %struct.enic* @vnic_dev_priv(i32) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @cq_enet_rq_desc_dec(%struct.cq_enet_rq_desc*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i32*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @vlan_gro_receive(i32*, i32, i64, %struct.sk_buff*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
