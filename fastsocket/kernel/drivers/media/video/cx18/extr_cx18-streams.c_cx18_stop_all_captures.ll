; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stop_all_captures.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stop_all_captures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { i32 }

@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_stop_all_captures(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %5 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load %struct.cx18*, %struct.cx18** %2, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 0
  %13 = load %struct.cx18_stream*, %struct.cx18_stream** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %13, i64 %15
  store %struct.cx18_stream* %16, %struct.cx18_stream** %4, align 8
  %17 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %18 = call i32 @cx18_stream_enabled(%struct.cx18_stream* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %31

21:                                               ; preds = %10
  %22 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %23 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %24 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %29 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  br label %7

34:                                               ; preds = %7
  ret void
}

declare dso_local i32 @cx18_stream_enabled(%struct.cx18_stream*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
