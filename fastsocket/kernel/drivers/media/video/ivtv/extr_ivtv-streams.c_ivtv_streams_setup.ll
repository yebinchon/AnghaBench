; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_streams_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_streams_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_streams_setup(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ivtv_prep_dev(%struct.ivtv* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %40

15:                                               ; preds = %9
  %16 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %37

26:                                               ; preds = %15
  %27 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = call i64 @ivtv_stream_alloc(%struct.TYPE_2__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %5

40:                                               ; preds = %35, %14, %5
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %40
  %46 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %47 = call i32 @ivtv_streams_cleanup(%struct.ivtv* %46, i32 0)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @ivtv_prep_dev(%struct.ivtv*, i32) #1

declare dso_local i64 @ivtv_stream_alloc(%struct.TYPE_2__*) #1

declare dso_local i32 @ivtv_streams_cleanup(%struct.ivtv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
