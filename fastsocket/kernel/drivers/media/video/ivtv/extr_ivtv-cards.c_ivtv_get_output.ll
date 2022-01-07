; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-cards.c_ivtv_get_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-cards.c_ivtv_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ivtv_card_output* }
%struct.ivtv_card_output = type { i32 }
%struct.v4l2_output = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_OUTPUT_TYPE_ANALOG = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_get_output(%struct.ivtv* %0, i32 %1, %struct.v4l2_output* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_output*, align 8
  %8 = alloca %struct.ivtv_card_output*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_output* %2, %struct.v4l2_output** %7, align 8
  %9 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.ivtv_card_output*, %struct.ivtv_card_output** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ivtv_card_output, %struct.ivtv_card_output* %13, i64 %15
  store %struct.ivtv_card_output* %16, %struct.ivtv_card_output** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ivtv_card_output*, %struct.ivtv_card_output** %8, align 8
  %35 = getelementptr inbounds %struct.ivtv_card_output, %struct.ivtv_card_output* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlcpy(i32 %33, i32 %36, i32 4)
  %38 = load i32, i32* @V4L2_OUTPUT_TYPE_ANALOG, align 4
  %39 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @V4L2_STD_ALL, align 4
  %44 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %27, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
