; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_get_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i32, i32, i32, i32, %struct.request_list }
%struct.request_list = type { i32*, i32*, i32 }
%struct.bio = type { i32 }
%struct.io_context = type { i32 }

@ELV_MQUEUE_NO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ELV_MQUEUE_MUST = common dso_local global i32 0, align 4
@QUEUE_FLAG_ELVSWITCH = common dso_local global i32 0, align 4
@REQ_ELVPRIV = common dso_local global i32 0, align 4
@REQ_IO_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, i32, %struct.bio*, i32)* @get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @get_request(%struct.request_queue* %0, i32 %1, %struct.bio* %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.request*, align 8
  %11 = alloca %struct.request_list*, align 8
  %12 = alloca %struct.io_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.request* null, %struct.request** %10, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 4
  store %struct.request_list* %16, %struct.request_list** %11, align 8
  store %struct.io_context* null, %struct.io_context** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @rw_is_sync(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %22 = call i32 @blk_queue_dead(%struct.request_queue* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store %struct.request* null, %struct.request** %5, align 8
  br label %208

26:                                               ; preds = %4
  %27 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @elv_may_queue(%struct.request_queue* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @ELV_MQUEUE_NO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %170

34:                                               ; preds = %26
  %35 = load %struct.request_list*, %struct.request_list** %11, align 8
  %36 = getelementptr inbounds %struct.request_list, %struct.request_list* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = call i32 @queue_congestion_on_threshold(%struct.request_queue* %43)
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %92

46:                                               ; preds = %34
  %47 = load %struct.request_list*, %struct.request_list** %11, align 8
  %48 = getelementptr inbounds %struct.request_list, %struct.request_list* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %56 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %46
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %62 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.io_context* @current_io_context(i32 %60, i32 %63)
  store %struct.io_context* %64, %struct.io_context** %12, align 8
  %65 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @blk_queue_full(%struct.request_queue* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %59
  %70 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %71 = load %struct.io_context*, %struct.io_context** %12, align 8
  %72 = call i32 @ioc_set_batching(%struct.request_queue* %70, %struct.io_context* %71)
  %73 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @blk_set_queue_full(%struct.request_queue* %73, i32 %74)
  br label %87

76:                                               ; preds = %59
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @ELV_MQUEUE_MUST, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %82 = load %struct.io_context*, %struct.io_context** %12, align 8
  %83 = call i64 @ioc_batching(%struct.request_queue* %81, %struct.io_context* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %206

86:                                               ; preds = %80, %76
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %46
  %89 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @blk_set_queue_congested(%struct.request_queue* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %34
  %93 = load %struct.request_list*, %struct.request_list** %11, align 8
  %94 = getelementptr inbounds %struct.request_list, %struct.request_list* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %101 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 3, %102
  %104 = sdiv i32 %103, 2
  %105 = icmp sge i32 %99, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %206

107:                                              ; preds = %92
  %108 = load %struct.request_list*, %struct.request_list** %11, align 8
  %109 = getelementptr inbounds %struct.request_list, %struct.request_list* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.request_list*, %struct.request_list** %11, align 8
  %117 = getelementptr inbounds %struct.request_list, %struct.request_list* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 0, i32* %121, align 4
  %122 = load %struct.bio*, %struct.bio** %8, align 8
  %123 = call i64 @blk_rq_should_init_elevator(%struct.bio* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %107
  %126 = load i32, i32* @QUEUE_FLAG_ELVSWITCH, align 4
  %127 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %128 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %127, i32 0, i32 2
  %129 = call i32 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @REQ_ELVPRIV, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.request_list*, %struct.request_list** %11, align 8
  %136 = getelementptr inbounds %struct.request_list, %struct.request_list* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %131, %125, %107
  %140 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %141 = call i64 @blk_queue_io_stat(%struct.request_queue* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @REQ_IO_STAT, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %143, %139
  %148 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %149 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @spin_unlock_irq(i32 %150)
  %152 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call %struct.request* @blk_alloc_request(%struct.request_queue* %152, i32 %153, i32 %154)
  store %struct.request* %155, %struct.request** %10, align 8
  %156 = load %struct.request*, %struct.request** %10, align 8
  %157 = icmp ne %struct.request* %156, null
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %147
  %163 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %164 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @spin_lock_irq(i32 %165)
  %167 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @freed_request(%struct.request_queue* %167, i32 %168)
  br label %170

170:                                              ; preds = %162, %33
  %171 = load %struct.request_list*, %struct.request_list** %11, align 8
  %172 = getelementptr inbounds %struct.request_list, %struct.request_list* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %170
  %183 = load %struct.request_list*, %struct.request_list** %11, align 8
  %184 = getelementptr inbounds %struct.request_list, %struct.request_list* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %182, %170
  br label %206

190:                                              ; preds = %147
  %191 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %192 = load %struct.io_context*, %struct.io_context** %12, align 8
  %193 = call i64 @ioc_batching(%struct.request_queue* %191, %struct.io_context* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.io_context*, %struct.io_context** %12, align 8
  %197 = getelementptr inbounds %struct.io_context, %struct.io_context* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %190
  %201 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %202 = load %struct.bio*, %struct.bio** %8, align 8
  %203 = load i32, i32* %7, align 4
  %204 = and i32 %203, 1
  %205 = call i32 @trace_block_getrq(%struct.request_queue* %201, %struct.bio* %202, i32 %204)
  br label %206

206:                                              ; preds = %200, %189, %106, %85
  %207 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %207, %struct.request** %5, align 8
  br label %208

208:                                              ; preds = %206, %25
  %209 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %209
}

declare dso_local i64 @rw_is_sync(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_dead(%struct.request_queue*) #1

declare dso_local i32 @elv_may_queue(%struct.request_queue*, i32) #1

declare dso_local i32 @queue_congestion_on_threshold(%struct.request_queue*) #1

declare dso_local %struct.io_context* @current_io_context(i32, i32) #1

declare dso_local i32 @blk_queue_full(%struct.request_queue*, i32) #1

declare dso_local i32 @ioc_set_batching(%struct.request_queue*, %struct.io_context*) #1

declare dso_local i32 @blk_set_queue_full(%struct.request_queue*, i32) #1

declare dso_local i64 @ioc_batching(%struct.request_queue*, %struct.io_context*) #1

declare dso_local i32 @blk_set_queue_congested(%struct.request_queue*, i32) #1

declare dso_local i64 @blk_rq_should_init_elevator(%struct.bio*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @blk_queue_io_stat(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.request* @blk_alloc_request(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @freed_request(%struct.request_queue*, i32) #1

declare dso_local i32 @trace_block_getrq(%struct.request_queue*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
