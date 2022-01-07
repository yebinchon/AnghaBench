; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.zoran_fh = type { %struct.TYPE_4__, %struct.zoran* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.zoran = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* @zoran_g_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_g_jpegcomp(%struct.file* %0, i8* %1, %struct.v4l2_jpegcompression* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_jpegcompression*, align 8
  %7 = alloca %struct.zoran_fh*, align 8
  %8 = alloca %struct.zoran*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_jpegcompression* %2, %struct.v4l2_jpegcompression** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.zoran_fh*
  store %struct.zoran_fh* %10, %struct.zoran_fh** %7, align 8
  %11 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %12 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %11, i32 0, i32 1
  %13 = load %struct.zoran*, %struct.zoran** %12, align 8
  store %struct.zoran* %13, %struct.zoran** %8, align 8
  %14 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %15 = call i32 @memset(%struct.v4l2_jpegcompression* %14, i32 0, i32 28)
  %16 = load %struct.zoran*, %struct.zoran** %8, align 8
  %17 = getelementptr inbounds %struct.zoran, %struct.zoran* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %20 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %27 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %37 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %42 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %35, i32 %40, i32 %45)
  %47 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %48 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %58 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %63 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %56, i32 %61, i32 %66)
  %68 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %69 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %76 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.zoran*, %struct.zoran** %8, align 8
  %83 = getelementptr inbounds %struct.zoran, %struct.zoran* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_jpegcompression*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
