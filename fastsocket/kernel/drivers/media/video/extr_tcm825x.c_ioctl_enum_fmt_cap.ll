; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_enum_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_enum_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_int_device = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, i32, i32 }

@TCM825X_NUM_CAPTURE_FORMATS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tcm825x_formats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_fmtdesc*)* @ioctl_enum_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_enum_fmt_cap(%struct.v4l2_int_device* %0, %struct.v4l2_fmtdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_fmtdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_fmtdesc* %1, %struct.v4l2_fmtdesc** %5, align 8
  %7 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TCM825X_NUM_CAPTURE_FORMATS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %13
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcm825x_formats, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcm825x_formats, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlcpy(i32 %35, i32 %41, i32 4)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcm825x_formats, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %24, %21, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
