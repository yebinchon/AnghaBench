; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_set_camera_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_set_camera_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uvd = type { i32, i64 }
%struct.konicawc = type { i64, i32, i32, i32, i32, i32 }

@camera_sizes = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @konicawc_set_camera_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_set_camera_size(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.konicawc*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %4 = load %struct.uvd*, %struct.uvd** %2, align 8
  %5 = getelementptr inbounds %struct.uvd, %struct.uvd* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.konicawc*
  store %struct.konicawc* %7, %struct.konicawc** %3, align 8
  %8 = load %struct.uvd*, %struct.uvd** %2, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @camera_sizes, align 8
  %10 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %11 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @konicawc_set_misc(%struct.uvd* %8, i32 2, i32 %15, i32 8)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @camera_sizes, align 8
  %18 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %19 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %25 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @camera_sizes, align 8
  %27 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %28 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %34 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %36 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %39 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %43 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %45 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 3
  %48 = sdiv i32 %47, 2
  %49 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %50 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %52 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 256
  %55 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %56 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %58 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %61 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @VIDEOSIZE(i32 %59, i32 %62)
  %64 = load %struct.uvd*, %struct.uvd** %2, align 8
  %65 = getelementptr inbounds %struct.uvd, %struct.uvd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local i32 @konicawc_set_misc(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @VIDEOSIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
