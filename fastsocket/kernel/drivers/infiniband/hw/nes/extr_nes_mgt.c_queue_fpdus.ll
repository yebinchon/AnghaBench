; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_queue_fpdus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_queue_fpdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.sk_buff*, i32* }
%struct.nes_vnic = type { i32 }
%struct.nes_qp = type { i64, i32, i32, i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.sk_buff* }
%struct.TYPE_5__ = type { i32 }
%struct.nes_rskb_cb = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PAU_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nes_vnic*, %struct.nes_qp*)* @queue_fpdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_fpdus(%struct.sk_buff* %0, %struct.nes_vnic* %1, %struct.nes_qp* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nes_rskb_cb*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nes_vnic* %1, %struct.nes_vnic** %5, align 8
  store %struct.nes_qp* %2, %struct.nes_qp** %6, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.iphdr*
  store %struct.iphdr* %22, %struct.iphdr** %9, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %24 = bitcast %struct.iphdr* %23 to i8*
  %25 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 4, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = bitcast i8* %30 to %struct.tcphdr*
  store %struct.tcphdr* %31, %struct.tcphdr** %10, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be32_to_cpu(i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %37 = bitcast %struct.tcphdr* %36 to i8*
  %38 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 4, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  store i8* %43, i8** %11, align 8
  %44 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @be16_to_cpu(i32 %46)
  store i64 %47, i64* %15, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @skb_trim(%struct.sk_buff* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %3
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = call i32 @skb_pull(%struct.sk_buff* %58, i8* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = bitcast i32* %70 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %71, %struct.nes_rskb_cb** %8, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %8, align 8
  %74 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %76 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %12, align 8
  %78 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %79 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %78, i32 0, i32 7
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @between(i64 %84, i64 %85, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %57
  %92 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %93 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %97 = call i32 @nes_mgt_free_skb(i32 %94, %struct.sk_buff* %95, i32 %96)
  %98 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %99 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @nes_rem_ref_cm_node(i32 %100)
  br label %180

102:                                              ; preds = %57
  %103 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %104 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %103, i32 0, i32 4
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %108 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %113 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %112, i32 0, i32 2
  store i32 1, i32* %113, align 4
  br label %117

114:                                              ; preds = %102
  %115 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %116 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %119 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %118, i32 0, i32 5
  %120 = call i64 @skb_queue_len(%struct.TYPE_6__* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %124 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %123, i32 0, i32 5
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i32 @skb_queue_head(%struct.TYPE_6__* %124, %struct.sk_buff* %125)
  br label %161

127:                                              ; preds = %117
  %128 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %129 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.sk_buff*, %struct.sk_buff** %130, align 8
  store %struct.sk_buff* %131, %struct.sk_buff** %7, align 8
  br label %132

132:                                              ; preds = %151, %127
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %135 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %134, i32 0, i32 5
  %136 = bitcast %struct.TYPE_6__* %135 to %struct.sk_buff*
  %137 = icmp ne %struct.sk_buff* %133, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = bitcast i32* %142 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %143, %struct.nes_rskb_cb** %8, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %8, align 8
  %146 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @before(i64 %144, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %155

151:                                              ; preds = %138
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 2
  %154 = load %struct.sk_buff*, %struct.sk_buff** %153, align 8
  store %struct.sk_buff* %154, %struct.sk_buff** %7, align 8
  br label %132

155:                                              ; preds = %150, %132
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %159 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %158, i32 0, i32 5
  %160 = call i32 @skb_insert(%struct.sk_buff* %156, %struct.sk_buff* %157, %struct.TYPE_6__* %159)
  br label %161

161:                                              ; preds = %155, %122
  %162 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %163 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PAU_READY, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 1, i32* %16, align 4
  br label %168

168:                                              ; preds = %167, %161
  %169 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %170 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %169, i32 0, i32 4
  %171 = load i64, i64* %17, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %177 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %178 = call i32 @process_fpdus(%struct.nes_vnic* %176, %struct.nes_qp* %177)
  br label %179

179:                                              ; preds = %175, %168
  br label %180

180:                                              ; preds = %179, %91
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @between(i64, i64, i64) #1

declare dso_local i32 @nes_mgt_free_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nes_rem_ref_cm_node(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_6__*) #1

declare dso_local i32 @skb_queue_head(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @skb_insert(%struct.sk_buff*, %struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @process_fpdus(%struct.nes_vnic*, %struct.nes_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
