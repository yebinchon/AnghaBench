; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_try_get_set_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_try_get_set_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64*, i64*, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.saa7134_tvnorm* }
%struct.saa7134_tvnorm = type { i64, i64, i64 }

@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @saa7134_try_get_set_fmt_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_try_get_set_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.saa7134_fh*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.saa7134_tvnorm*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %11, %struct.saa7134_fh** %7, align 8
  %12 = load %struct.saa7134_fh*, %struct.saa7134_fh** %7, align 8
  %13 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %8, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %16, align 8
  store %struct.saa7134_tvnorm* %17, %struct.saa7134_tvnorm** %9, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 27000000, i32* %21, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 2048, i32* %25, align 4
  %26 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  store i32 %26, i32* %30, align 8
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 256, i32* %34, align 8
  %35 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %9, align 8
  %36 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %37, i64* %43, align 8
  %44 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %9, align 8
  %45 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %9, align 8
  %48 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = add nsw i64 %50, 1
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %51, i64* %57, align 8
  %58 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %9, align 8
  %59 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 %60, i64* %66, align 8
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  store i64 %73, i64* %79, align 8
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
