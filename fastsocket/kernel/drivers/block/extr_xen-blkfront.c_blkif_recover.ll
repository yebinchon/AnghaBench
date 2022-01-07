; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkif_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkif_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__, %struct.blk_shadow*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.blk_shadow = type { i64, %struct.blkif_request, i32* }
%struct.blkif_request = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.request = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_REPEAT = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLK_RING_SIZE = common dso_local global i32 0, align 4
@XenbusStateConnected = common dso_local global i32 0, align 4
@blkif_io_lock = common dso_local global i32 0, align 4
@BLKIF_STATE_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkfront_info*)* @blkif_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_recover(%struct.blkfront_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkif_request*, align 8
  %6 = alloca %struct.blk_shadow*, align 8
  %7 = alloca i32, align 4
  store %struct.blkfront_info* %0, %struct.blkfront_info** %3, align 8
  %8 = load i32, i32* @GFP_NOIO, align 4
  %9 = load i32, i32* @__GFP_REPEAT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @__GFP_HIGH, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.blk_shadow* @kmalloc(i32 8, i32 %12)
  store %struct.blk_shadow* %13, %struct.blk_shadow** %6, align 8
  %14 = load %struct.blk_shadow*, %struct.blk_shadow** %6, align 8
  %15 = icmp ne %struct.blk_shadow* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %198

19:                                               ; preds = %1
  %20 = load %struct.blk_shadow*, %struct.blk_shadow** %6, align 8
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 3
  %23 = load %struct.blk_shadow*, %struct.blk_shadow** %22, align 8
  %24 = call i32 @memcpy(%struct.blk_shadow* %20, %struct.blk_shadow* %23, i32 8)
  %25 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %26 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %25, i32 0, i32 3
  %27 = call i32 @memset(%struct.blk_shadow** %26, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BLK_RING_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %36 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %35, i32 0, i32 3
  %37 = load %struct.blk_shadow*, %struct.blk_shadow** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %37, i64 %39
  %41 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %48 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %52 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %54 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %53, i32 0, i32 3
  %55 = load %struct.blk_shadow*, %struct.blk_shadow** %54, align 8
  %56 = load i32, i32* @BLK_RING_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %55, i64 %58
  %60 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %60, i32 0, i32 0
  store i32 268435455, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %178, %46
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BLK_RING_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %181

66:                                               ; preds = %62
  %67 = load %struct.blk_shadow*, %struct.blk_shadow** %6, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %67, i64 %69
  %71 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %178

75:                                               ; preds = %66
  %76 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %77 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %76, i32 0, i32 2
  %78 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %79 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.blkif_request* @RING_GET_REQUEST(%struct.TYPE_6__* %77, i32 %81)
  store %struct.blkif_request* %82, %struct.blkif_request** %5, align 8
  %83 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %84 = load %struct.blk_shadow*, %struct.blk_shadow** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %84, i64 %86
  %88 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %87, i32 0, i32 1
  %89 = bitcast %struct.blkif_request* %83 to i8*
  %90 = bitcast %struct.blkif_request* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  %91 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %92 = call i64 @get_id_from_freelist(%struct.blkfront_info* %91)
  %93 = trunc i64 %92 to i32
  %94 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %95 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %97 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %96, i32 0, i32 3
  %98 = load %struct.blk_shadow*, %struct.blk_shadow** %97, align 8
  %99 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %100 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %98, i64 %102
  %104 = load %struct.blk_shadow*, %struct.blk_shadow** %6, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %104, i64 %106
  %108 = call i32 @memcpy(%struct.blk_shadow* %103, %struct.blk_shadow* %107, i32 32)
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %157, %75
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %112 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %160

115:                                              ; preds = %109
  %116 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %117 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %125 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %130 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %129, i32 0, i32 3
  %131 = load %struct.blk_shadow*, %struct.blk_shadow** %130, align 8
  %132 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %133 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %131, i64 %135
  %137 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pfn_to_mfn(i32 %142)
  %144 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %145 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %144, i32 0, i32 3
  %146 = load %struct.blk_shadow*, %struct.blk_shadow** %145, align 8
  %147 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %148 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %146, i64 %150
  %152 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.request*
  %155 = call i32 @rq_data_dir(%struct.request* %154)
  %156 = call i32 @gnttab_grant_foreign_access_ref(i32 %123, i32 %128, i32 %143, i32 %155)
  br label %157

157:                                              ; preds = %115
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %109

160:                                              ; preds = %109
  %161 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %162 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %161, i32 0, i32 3
  %163 = load %struct.blk_shadow*, %struct.blk_shadow** %162, align 8
  %164 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %165 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %163, i64 %167
  %169 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %168, i32 0, i32 1
  %170 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %171 = bitcast %struct.blkif_request* %169 to i8*
  %172 = bitcast %struct.blkif_request* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %171, i8* align 8 %172, i64 16, i1 false)
  %173 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %174 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %160, %74
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %62

181:                                              ; preds = %62
  %182 = load %struct.blk_shadow*, %struct.blk_shadow** %6, align 8
  %183 = call i32 @kfree(%struct.blk_shadow* %182)
  %184 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %185 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %184, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* @XenbusStateConnected, align 4
  %188 = call i32 @xenbus_switch_state(%struct.TYPE_5__* %186, i32 %187)
  %189 = call i32 @spin_lock_irq(i32* @blkif_io_lock)
  %190 = load i32, i32* @BLKIF_STATE_CONNECTED, align 4
  %191 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %192 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %194 = call i32 @flush_requests(%struct.blkfront_info* %193)
  %195 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %196 = call i32 @kick_pending_request_queues(%struct.blkfront_info* %195)
  %197 = call i32 @spin_unlock_irq(i32* @blkif_io_lock)
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %181, %16
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.blk_shadow* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.blk_shadow*, %struct.blk_shadow*, i32) #1

declare dso_local i32 @memset(%struct.blk_shadow**, i32, i32) #1

declare dso_local %struct.blkif_request* @RING_GET_REQUEST(%struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_id_from_freelist(%struct.blkfront_info*) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i32, i32, i32, i32) #1

declare dso_local i32 @pfn_to_mfn(i32) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @kfree(%struct.blk_shadow*) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @flush_requests(%struct.blkfront_info*) #1

declare dso_local i32 @kick_pending_request_queues(%struct.blkfront_info*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
