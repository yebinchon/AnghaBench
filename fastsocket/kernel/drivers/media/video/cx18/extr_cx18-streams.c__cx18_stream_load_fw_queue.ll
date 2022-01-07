; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c__cx18_stream_load_fw_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c__cx18_stream_load_fw_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { %struct.TYPE_2__, %struct.cx18_queue }
%struct.TYPE_2__ = type { i32 }
%struct.cx18_queue = type { i32 }
%struct.cx18_mdl = type { i32 }

@CX18_MAX_FW_MDLS_PER_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*)* @_cx18_stream_load_fw_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cx18_stream_load_fw_queue(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  %3 = alloca %struct.cx18_queue*, align 8
  %4 = alloca %struct.cx18_mdl*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %5 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %6 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %12 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = load i64, i64* @CX18_MAX_FW_MDLS_PER_STREAM, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %45

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %43, %18
  %20 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %21 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %22 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %21, i32 0, i32 0
  %23 = call %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream* %20, %struct.TYPE_2__* %22)
  store %struct.cx18_mdl* %23, %struct.cx18_mdl** %4, align 8
  %24 = load %struct.cx18_mdl*, %struct.cx18_mdl** %4, align 8
  %25 = icmp eq %struct.cx18_mdl* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %29 = load %struct.cx18_mdl*, %struct.cx18_mdl** %4, align 8
  %30 = call %struct.cx18_queue* @_cx18_stream_put_mdl_fw(%struct.cx18_stream* %28, %struct.cx18_mdl* %29)
  store %struct.cx18_queue* %30, %struct.cx18_queue** %3, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %33, i32 0, i32 0
  %35 = call i64 @atomic_read(i32* %34)
  %36 = load i64, i64* @CX18_MAX_FW_MDLS_PER_STREAM, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.cx18_queue*, %struct.cx18_queue** %3, align 8
  %40 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %41 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %40, i32 0, i32 1
  %42 = icmp eq %struct.cx18_queue* %39, %41
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi i1 [ false, %31 ], [ %42, %38 ]
  br i1 %44, label %19, label %45

45:                                               ; preds = %17, %43, %26
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream*, %struct.TYPE_2__*) #1

declare dso_local %struct.cx18_queue* @_cx18_stream_put_mdl_fw(%struct.cx18_stream*, %struct.cx18_mdl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
