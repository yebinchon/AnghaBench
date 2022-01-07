; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i8*)* @ivtv_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ivtv_default(%struct.file* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ivtv*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.ivtv_open_id*
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 0
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %10, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %53 [
    i32 128, label %17
    i32 139, label %48
    i32 133, label %48
    i32 134, label %48
    i32 135, label %48
    i32 132, label %48
    i32 130, label %48
    i32 136, label %48
    i32 137, label %48
    i32 138, label %48
    i32 129, label %48
    i32 131, label %48
    i32 140, label %48
    i32 141, label %48
    i32 142, label %48
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %17
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %23
  %34 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %35 = call i32 @ivtv_reset_ir_gpio(%struct.ivtv* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @core, align 4
  %45 = load i32, i32* @reset, align 4
  %46 = call i32 @v4l2_subdev_call(i32 %43, i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %40, %36
  br label %56

48:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %49 = load %struct.file*, %struct.file** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @ivtv_decoder_ioctls(%struct.file* %49, i32 %50, i8* %51)
  store i64 %52, i64* %5, align 8
  br label %57

53:                                               ; preds = %4
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %57

56:                                               ; preds = %47
  store i64 0, i64* %5, align 8
  br label %57

57:                                               ; preds = %56, %53, %48
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i32 @ivtv_reset_ir_gpio(%struct.ivtv*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i64 @ivtv_decoder_ioctls(%struct.file*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
