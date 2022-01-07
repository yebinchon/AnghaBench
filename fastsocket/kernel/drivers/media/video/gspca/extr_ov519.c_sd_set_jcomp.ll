; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_set_jcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_set_jcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.v4l2_jpegcompression = type { i64 }
%struct.sd = type { i64, i64 }

@BRIDGE_W9968CF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QUALITY_MIN = common dso_local global i64 0, align 8
@QUALITY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_jpegcompression*)* @sd_set_jcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_jcomp(%struct.gspca_dev* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.v4l2_jpegcompression*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.sd*, %struct.sd** %6, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BRIDGE_W9968CF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QUALITY_MIN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @QUALITY_MIN, align 8
  %33 = load %struct.sd*, %struct.sd** %6, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %52

35:                                               ; preds = %25
  %36 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QUALITY_MAX, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @QUALITY_MAX, align 8
  %43 = load %struct.sd*, %struct.sd** %6, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sd*, %struct.sd** %6, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %54 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %55 = call i32 @sd_get_jcomp(%struct.gspca_dev* %53, %struct.v4l2_jpegcompression* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %22, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sd_get_jcomp(%struct.gspca_dev*, %struct.v4l2_jpegcompression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
