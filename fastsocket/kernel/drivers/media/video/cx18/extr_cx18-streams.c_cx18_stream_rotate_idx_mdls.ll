; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stream_rotate_idx_mdls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stream_rotate_idx_mdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cx18_mdl = type { i32 }

@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_stream_rotate_idx_mdls(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_stream*, align 8
  %4 = alloca %struct.cx18_mdl*, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %5 = load %struct.cx18*, %struct.cx18** %2, align 8
  %6 = getelementptr inbounds %struct.cx18, %struct.cx18* %5, i32 0, i32 0
  %7 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %8 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %7, i64 %8
  store %struct.cx18_stream* %9, %struct.cx18_stream** %3, align 8
  %10 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %11 = call i32 @cx18_stream_enabled(%struct.cx18_stream* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %16 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %20 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = add nsw i32 %18, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %48

28:                                               ; preds = %14
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @atomic_read(i32* %31)
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %48

35:                                               ; preds = %28
  %36 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %37 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %38 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %37, i32 0, i32 1
  %39 = call %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream* %36, %struct.TYPE_6__* %38)
  store %struct.cx18_mdl* %39, %struct.cx18_mdl** %4, align 8
  %40 = load %struct.cx18_mdl*, %struct.cx18_mdl** %4, align 8
  %41 = icmp ne %struct.cx18_mdl* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %44 = load %struct.cx18_mdl*, %struct.cx18_mdl** %4, align 8
  %45 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %46 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %45, i32 0, i32 0
  %47 = call i32 @cx18_enqueue(%struct.cx18_stream* %43, %struct.cx18_mdl* %44, %struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %13, %27, %34, %42, %35
  ret void
}

declare dso_local i32 @cx18_stream_enabled(%struct.cx18_stream*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream*, %struct.TYPE_6__*) #1

declare dso_local i32 @cx18_enqueue(%struct.cx18_stream*, %struct.cx18_mdl*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
