; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_parse_and_copy_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_parse_and_copy_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.vmxnet3_tx_queue = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.Vmxnet3_TxDataDesc* }
%struct.Vmxnet3_TxDataDesc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vmxnet3_tx_ctx = type { i32, i32, i32, i64, i64 }
%struct.vmxnet3_adapter = type { i32 }
%struct.iphdr = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@VMXNET3_HDR_COPY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"copy %u bytes to dataRing[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_adapter*)* @vmxnet3_parse_and_copy_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_parse_and_copy_hdr(%struct.sk_buff* %0, %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_ctx* %2, %struct.vmxnet3_adapter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vmxnet3_tx_queue*, align 8
  %8 = alloca %struct.vmxnet3_tx_ctx*, align 8
  %9 = alloca %struct.vmxnet3_adapter*, align 8
  %10 = alloca %struct.Vmxnet3_TxDataDesc*, align 8
  %11 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_queue** %7, align 8
  store %struct.vmxnet3_tx_ctx* %2, %struct.vmxnet3_tx_ctx** %8, align 8
  store %struct.vmxnet3_adapter* %3, %struct.vmxnet3_adapter** %9, align 8
  %12 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @skb_transport_offset(%struct.sk_buff* %17)
  %19 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i8* @tcp_hdrlen(%struct.sk_buff* %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %28, %31
  %33 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %121

35:                                               ; preds = %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %42)
  %44 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %51)
  store %struct.iphdr* %52, %struct.iphdr** %11, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IPPROTO_TCP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i8* @tcp_hdrlen(%struct.sk_buff* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %77

64:                                               ; preds = %50
  %65 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %66 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IPPROTO_UDP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %71, i32 0, i32 1
  store i32 4, i32* %72, align 4
  br label %76

73:                                               ; preds = %64
  %74 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %58
  br label %81

78:                                               ; preds = %41
  %79 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %84, %87
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @min(i32 %88, i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %108

96:                                               ; preds = %35
  %97 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %100 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* @VMXNET3_HDR_COPY_SIZE, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @skb_headlen(%struct.sk_buff* %102)
  %104 = call i8* @min(i32 %101, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %96, %81
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pskb_may_pull(%struct.sk_buff* %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %170

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %16
  %122 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @VMXNET3_HDR_COPY_SIZE, align 4
  %126 = icmp ugt i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %121
  %131 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %132 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  store i32 0, i32* %5, align 4
  br label %171

138:                                              ; preds = %121
  %139 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %140 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load %struct.Vmxnet3_TxDataDesc*, %struct.Vmxnet3_TxDataDesc** %141, align 8
  %143 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %144 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.Vmxnet3_TxDataDesc, %struct.Vmxnet3_TxDataDesc* %142, i64 %147
  store %struct.Vmxnet3_TxDataDesc* %148, %struct.Vmxnet3_TxDataDesc** %10, align 8
  %149 = load %struct.Vmxnet3_TxDataDesc*, %struct.Vmxnet3_TxDataDesc** %10, align 8
  %150 = getelementptr inbounds %struct.Vmxnet3_TxDataDesc, %struct.Vmxnet3_TxDataDesc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %156 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memcpy(i32 %151, i32 %154, i32 %157)
  %159 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %9, align 8
  %160 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %8, align 8
  %163 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %166 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @netdev_dbg(i32 %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %168)
  store i32 1, i32* %5, align 4
  br label %171

170:                                              ; preds = %119
  store i32 -1, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %138, %130
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i8* @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
