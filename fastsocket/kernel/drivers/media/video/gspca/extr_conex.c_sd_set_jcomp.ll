; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_sd_set_jcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_sd_set_jcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.v4l2_jpegcompression = type { i64 }
%struct.sd = type { i64, i32 }

@QUALITY_MIN = common dso_local global i64 0, align 8
@QUALITY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_jpegcompression*)* @sd_set_jcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_jcomp(%struct.gspca_dev* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.v4l2_jpegcompression*, align 8
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QUALITY_MIN, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @QUALITY_MIN, align 8
  %15 = load %struct.sd*, %struct.sd** %5, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QUALITY_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* @QUALITY_MAX, align 8
  %25 = load %struct.sd*, %struct.sd** %5, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %33

27:                                               ; preds = %17
  %28 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sd*, %struct.sd** %5, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.sd*, %struct.sd** %5, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sd*, %struct.sd** %5, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @jpeg_set_qual(i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %34
  ret i32 0
}

declare dso_local i32 @jpeg_set_qual(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
