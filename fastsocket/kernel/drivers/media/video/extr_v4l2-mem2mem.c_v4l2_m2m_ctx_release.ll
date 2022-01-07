; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_ctx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_ctx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_ctx = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.v4l2_m2m_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_m2m_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.videobuf_buffer = type { i64, i32 }

@TRANS_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"m2m_ctx %p running, will wait to complete\00", align 1
@VIDEOBUF_ACTIVE = common dso_local global i64 0, align 8
@VIDEOBUF_QUEUED = common dso_local global i64 0, align 8
@TRANS_QUEUED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"m2m_ctx: %p had been on queue and was removed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_m2m_ctx_release(%struct.v4l2_m2m_ctx* %0) #0 {
  %2 = alloca %struct.v4l2_m2m_ctx*, align 8
  %3 = alloca %struct.v4l2_m2m_dev*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.v4l2_m2m_ctx* %0, %struct.v4l2_m2m_ctx** %2, align 8
  %6 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %6, i32 0, i32 5
  %8 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %7, align 8
  store %struct.v4l2_m2m_dev* %8, %struct.v4l2_m2m_dev** %3, align 8
  %9 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TRANS_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %1
  %20 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  %33 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.v4l2_m2m_ctx* %33)
  %35 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %36 = call %struct.videobuf_buffer* @v4l2_m2m_next_dst_buf(%struct.v4l2_m2m_ctx* %35)
  store %struct.videobuf_buffer* %36, %struct.videobuf_buffer** %4, align 8
  %37 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %38 = icmp eq %struct.videobuf_buffer* null, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %19
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VIDEOBUF_QUEUED, align 8
  %54 = icmp ne i64 %52, %53
  br label %55

55:                                               ; preds = %49, %19
  %56 = phi i1 [ false, %19 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event(i32 %43, i32 %57)
  br label %90

59:                                               ; preds = %1
  %60 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TRANS_QUEUED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %67, i32 0, i32 3
  %69 = call i32 @list_del(i32* %68)
  %70 = load i32, i32* @TRANS_QUEUED, align 4
  %71 = load i32, i32* @TRANS_RUNNING, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %75 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %79 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %83 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.v4l2_m2m_ctx* %82)
  br label %89

84:                                               ; preds = %59
  %85 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %86 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %66
  br label %90

90:                                               ; preds = %89, %55
  %91 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %92 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = call i32 @videobuf_stop(i32* %93)
  %95 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @videobuf_stop(i32* %97)
  %99 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %100 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = call i32 @videobuf_mmap_free(i32* %101)
  %103 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @videobuf_mmap_free(i32* %105)
  %107 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %108 = call i32 @kfree(%struct.v4l2_m2m_ctx* %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dprintk(i8*, %struct.v4l2_m2m_ctx*) #1

declare dso_local %struct.videobuf_buffer* @v4l2_m2m_next_dst_buf(%struct.v4l2_m2m_ctx*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @kfree(%struct.v4l2_m2m_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
