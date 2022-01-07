; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_service_ofldq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_service_ofldq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_ofld_txq = type { %struct.TYPE_13__, %struct.TYPE_15__*, %struct.TYPE_14__, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32 }

@TXQ_STOP_THRES = common dso_local global i32 0, align 4
@deferred_unmap_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_ofld_txq*)* @service_ofldq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_ofldq(%struct.sge_ofld_txq* %0) #0 {
  %2 = alloca %struct.sge_ofld_txq*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sge_ofld_txq* %0, %struct.sge_ofld_txq** %2, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %210, %1
  %12 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %13 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %12, i32 0, i32 2
  %14 = call %struct.sk_buff* @skb_peek(%struct.TYPE_14__* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %18 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i1 [ false, %11 ], [ %21, %16 ]
  br i1 %23, label %24, label %211

24:                                               ; preds = %22
  %25 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %26 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %30 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %33 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %32, i32 0, i32 0
  %34 = call i32 @reclaim_completed_tx(%struct.TYPE_15__* %31, %struct.TYPE_13__* %33, i32 0)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @flits_to_desc(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %41 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %40, i32 0, i32 0
  %42 = call i32 @txq_avail(%struct.TYPE_13__* %41)
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TXQ_STOP_THRES, align 4
  %51 = icmp slt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %24
  %56 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @ofldtxq_stop(%struct.sge_ofld_txq* %56, %struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %55, %24
  %60 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %61 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %65 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32* %68, i32** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i64 @is_ofld_imm(%struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %75 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %74, i32 0, i32 0
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @inline_tx_skb(%struct.sk_buff* %73, %struct.TYPE_13__* %75, i32* %76)
  br label %174

78:                                               ; preds = %59
  %79 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %80 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = call i64 @map_skb(i32 %83, %struct.sk_buff* %84, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %93 = call i32 @txq_stop_maperr(%struct.sge_ofld_txq* %92)
  %94 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %95 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  br label %211

98:                                               ; preds = %78
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @skb_transport_offset(%struct.sk_buff* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @memcpy(i32* %101, i32 %104, i32 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %109 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %108, i32 0, i32 0
  %110 = load i32*, i32** %3, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %111, i64 %113
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = call i32 @write_sgl(%struct.sk_buff* %107, %struct.TYPE_13__* %109, i8* %114, i32* %118, i32 %119, i32* %123)
  %125 = call i64 (...) @need_skb_unmap()
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %98
  %128 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %129 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @deferred_unmap_destructor, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %127, %98
  %141 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %142 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = add i64 %144, %146
  %148 = sub i64 %147, 1
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %152 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %150, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %140
  %157 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %158 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %156, %140
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %166 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store %struct.sk_buff* %164, %struct.sk_buff** %172, align 8
  br label %173

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %72
  %175 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %176 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %175, i32 0, i32 0
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @txq_advance(%struct.TYPE_13__* %176, i32 %177)
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ugt i32 %182, 32
  %184 = zext i1 %183 to i32
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %174
  %188 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %189 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %188, i32 0, i32 1
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %192 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %191, i32 0, i32 0
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @ring_tx_db(%struct.TYPE_15__* %190, %struct.TYPE_13__* %192, i32 %193)
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %187, %174
  %196 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %197 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = call i32 @spin_lock(i32* %198)
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %202 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %201, i32 0, i32 2
  %203 = call i32 @__skb_unlink(%struct.sk_buff* %200, %struct.TYPE_14__* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = call i64 @is_ofld_imm(%struct.sk_buff* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %195
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = call i32 @kfree_skb(%struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %207, %195
  br label %11

211:                                              ; preds = %91, %22
  %212 = load i32, i32* %6, align 4
  %213 = call i64 @likely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %217 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %216, i32 0, i32 1
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %2, align 8
  %220 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %219, i32 0, i32 0
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @ring_tx_db(%struct.TYPE_15__* %218, %struct.TYPE_13__* %220, i32 %221)
  br label %223

223:                                              ; preds = %215, %211
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_14__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @flits_to_desc(i32) #1

declare dso_local i32 @txq_avail(%struct.TYPE_13__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ofldtxq_stop(%struct.sge_ofld_txq*, %struct.sk_buff*) #1

declare dso_local i64 @is_ofld_imm(%struct.sk_buff*) #1

declare dso_local i32 @inline_tx_skb(%struct.sk_buff*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @map_skb(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @txq_stop_maperr(%struct.sge_ofld_txq*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @write_sgl(%struct.sk_buff*, %struct.TYPE_13__*, i8*, i32*, i32, i32*) #1

declare dso_local i64 @need_skb_unmap(...) #1

declare dso_local i32 @txq_advance(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ring_tx_db(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
