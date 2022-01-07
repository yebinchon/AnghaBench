; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_write_ofld_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_write_ofld_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i64, i32 }
%struct.sge_txq = type { %struct.TYPE_2__*, %struct.tx_desc* }
%struct.TYPE_2__ = type { i32* }
%struct.tx_desc = type { i32* }
%struct.work_request_hdr = type { i32, i32 }
%struct.sg_ent = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@deferred_unmap_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sk_buff*, %struct.sge_txq*, i32, i32, i32)* @write_ofld_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ofld_wr(%struct.adapter* %0, %struct.sk_buff* %1, %struct.sge_txq* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sge_txq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.work_request_hdr*, align 8
  %16 = alloca %struct.sg_ent*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.tx_desc*, align 8
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.sge_txq* %2, %struct.sge_txq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca %struct.sg_ent, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 1
  %29 = load %struct.tx_desc*, %struct.tx_desc** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %29, i64 %31
  store %struct.tx_desc* %32, %struct.tx_desc** %19, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i64 @immediate(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %6
  %37 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %38 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.tx_desc*, %struct.tx_desc** %19, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @write_imm(%struct.tx_desc* %44, %struct.sk_buff* %45, i32 %48, i32 %49)
  store i32 1, i32* %20, align 4
  br label %128

51:                                               ; preds = %6
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.work_request_hdr*
  store %struct.work_request_hdr* %55, %struct.work_request_hdr** %15, align 8
  %56 = load %struct.tx_desc*, %struct.tx_desc** %19, align 8
  %57 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load %struct.work_request_hdr*, %struct.work_request_hdr** %15, align 8
  %61 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %60, i64 1
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @skb_transport_offset(%struct.sk_buff* %62)
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32* %59, %struct.work_request_hdr* %61, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @skb_transport_offset(%struct.sk_buff* %68)
  %70 = sdiv i32 %69, 8
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %81

73:                                               ; preds = %51
  %74 = load %struct.tx_desc*, %struct.tx_desc** %19, align 8
  %75 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = bitcast i32* %79 to %struct.sg_ent*
  br label %82

81:                                               ; preds = %51
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi %struct.sg_ent* [ %80, %73 ], [ %26, %81 ]
  store %struct.sg_ent* %83, %struct.sg_ent** %16, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load %struct.sg_ent*, %struct.sg_ent** %16, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call i32 @skb_transport_header(%struct.sk_buff* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = load %struct.adapter*, %struct.adapter** %7, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @make_sgl(%struct.sk_buff* %84, %struct.sg_ent* %85, i32 %87, i64 %94, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = call i64 (...) @need_skb_unmap()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %82
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load %struct.adapter*, %struct.adapter** %7, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sg_ent*, %struct.sg_ent** %16, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @setup_deferred_unmapping(%struct.sk_buff* %102, i32 %105, %struct.sg_ent* %106, i32 %107)
  %109 = load i32, i32* @deferred_unmap_destructor, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %101, %82
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load %struct.tx_desc*, %struct.tx_desc** %19, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.work_request_hdr*, %struct.work_request_hdr** %15, align 8
  %122 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.work_request_hdr*, %struct.work_request_hdr** %15, align 8
  %125 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @write_wr_hdr_sgl(i32 %113, %struct.sk_buff* %114, %struct.tx_desc* %115, i32 %116, %struct.sge_txq* %117, %struct.sg_ent* %26, i32 %118, i32 %119, i32 %120, i32 %123, i32 %126)
  store i32 0, i32* %20, align 4
  br label %128

128:                                              ; preds = %112, %36
  %129 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %20, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @immediate(%struct.sk_buff*) #2

declare dso_local i32 @write_imm(%struct.tx_desc*, %struct.sk_buff*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.work_request_hdr*, i32) #2

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #2

declare dso_local i32 @make_sgl(%struct.sk_buff*, %struct.sg_ent*, i32, i64, i32) #2

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #2

declare dso_local i64 @need_skb_unmap(...) #2

declare dso_local i32 @setup_deferred_unmapping(%struct.sk_buff*, i32, %struct.sg_ent*, i32) #2

declare dso_local i32 @write_wr_hdr_sgl(i32, %struct.sk_buff*, %struct.tx_desc*, i32, %struct.sge_txq*, %struct.sg_ent*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
