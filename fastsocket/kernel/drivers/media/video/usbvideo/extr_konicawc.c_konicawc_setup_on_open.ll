; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_setup_on_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_setup_on_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i64 }
%struct.konicawc = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"setting brightness to %d (%d)\00", align 1
@SetBrightness = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"setting white balance to %d (%d)\00", align 1
@SetWhitebal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"setting contrast to %d (%d)\00", align 1
@SetContrast = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"setting saturation to %d (%d)\00", align 1
@SetSaturation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"setting sharpness to %d (%d)\00", align 1
@SetSharpness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @konicawc_setup_on_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @konicawc_setup_on_open(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.konicawc*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %4 = load %struct.uvd*, %struct.uvd** %2, align 8
  %5 = getelementptr inbounds %struct.uvd, %struct.uvd* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.konicawc*
  store %struct.konicawc* %7, %struct.konicawc** %3, align 8
  %8 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %9 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %12 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 11
  %15 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.uvd*, %struct.uvd** %2, align 8
  %17 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %18 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SetBrightness, align 4
  %21 = call i32 @konicawc_set_value(%struct.uvd* %16, i32 %19, i32 %20)
  %22 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %23 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %26 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 11
  %29 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %32 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SetWhitebal, align 4
  %35 = call i32 @konicawc_set_value(%struct.uvd* %30, i32 %33, i32 %34)
  %36 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %37 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %40 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 11
  %43 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.uvd*, %struct.uvd** %2, align 8
  %45 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %46 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SetContrast, align 4
  %49 = call i32 @konicawc_set_value(%struct.uvd* %44, i32 %47, i32 %48)
  %50 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %51 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %54 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 11
  %57 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load %struct.uvd*, %struct.uvd** %2, align 8
  %59 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %60 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SetSaturation, align 4
  %63 = call i32 @konicawc_set_value(%struct.uvd* %58, i32 %61, i32 %62)
  %64 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %65 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %68 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 11
  %71 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load %struct.uvd*, %struct.uvd** %2, align 8
  %73 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %74 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SetSharpness, align 4
  %77 = call i32 @konicawc_set_value(%struct.uvd* %72, i32 %75, i32 %76)
  %78 = load %struct.uvd*, %struct.uvd** %2, align 8
  %79 = call i32 @konicawc_set_camera_size(%struct.uvd* %78)
  %80 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %81 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %80, i32 0, i32 5
  store i32 -2, i32* %81, align 4
  %82 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %83 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  ret i32 0
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @konicawc_set_value(%struct.uvd*, i32, i32) #1

declare dso_local i32 @konicawc_set_camera_size(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
