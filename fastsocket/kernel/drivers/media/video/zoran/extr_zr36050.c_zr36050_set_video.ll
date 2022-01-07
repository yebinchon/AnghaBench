; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { i64 }
%struct.tvnorm = type { i32, i32 }
%struct.vfe_settings = type { i32, i32, i32, i32, i32, i32 }
%struct.vfe_polarity = type { i32 }
%struct.zr36050 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s: set_video %d.%d, %d/%d-%dx%d (0x%x) q%d call\0A\00", align 1
@ZR050_MBCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, %struct.tvnorm*, %struct.vfe_settings*, %struct.vfe_polarity*)* @zr36050_set_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36050_set_video(%struct.videocodec* %0, %struct.tvnorm* %1, %struct.vfe_settings* %2, %struct.vfe_polarity* %3) #0 {
  %5 = alloca %struct.videocodec*, align 8
  %6 = alloca %struct.tvnorm*, align 8
  %7 = alloca %struct.vfe_settings*, align 8
  %8 = alloca %struct.vfe_polarity*, align 8
  %9 = alloca %struct.zr36050*, align 8
  %10 = alloca i32, align 4
  store %struct.videocodec* %0, %struct.videocodec** %5, align 8
  store %struct.tvnorm* %1, %struct.tvnorm** %6, align 8
  store %struct.vfe_settings* %2, %struct.vfe_settings** %7, align 8
  store %struct.vfe_polarity* %3, %struct.vfe_polarity** %8, align 8
  %11 = load %struct.videocodec*, %struct.videocodec** %5, align 8
  %12 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.zr36050*
  store %struct.zr36050* %14, %struct.zr36050** %9, align 8
  %15 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %16 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %19 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %22 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %25 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %28 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %31 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %34 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %37 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %40 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %44 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %47 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 255
  %50 = sdiv i32 %45, %49
  %51 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %52 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %54 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %57 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = sdiv i32 %55, %60
  %62 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %63 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %65 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %68 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 16
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %75 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = sdiv i32 %77, 200
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 8192
  br i1 %80, label %81, label %82

81:                                               ; preds = %4
  store i32 8192, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %85 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 7
  %88 = icmp sgt i32 %83, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %91 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 7
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 3
  %97 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %98 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %100 = load i32, i32* @ZR050_MBCV, align 4
  %101 = load %struct.zr36050*, %struct.zr36050** %9, align 8
  %102 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @zr36050_write(%struct.zr36050* %99, i32 %100, i32 %103)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zr36050_write(%struct.zr36050*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
