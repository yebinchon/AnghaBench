; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36016.c_zr36016_set_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36016.c_zr36016_set_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { i64 }
%struct.tvnorm = type { i32, i64 }
%struct.vfe_settings = type { i32, i64, i32, i32, i32 }
%struct.vfe_polarity = type { i32 }
%struct.zr36016 = type { i32, i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s: set_video %d.%d, %d/%d-%dx%d (0x%x) call\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, %struct.tvnorm*, %struct.vfe_settings*, %struct.vfe_polarity*)* @zr36016_set_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36016_set_video(%struct.videocodec* %0, %struct.tvnorm* %1, %struct.vfe_settings* %2, %struct.vfe_polarity* %3) #0 {
  %5 = alloca %struct.videocodec*, align 8
  %6 = alloca %struct.tvnorm*, align 8
  %7 = alloca %struct.vfe_settings*, align 8
  %8 = alloca %struct.vfe_polarity*, align 8
  %9 = alloca %struct.zr36016*, align 8
  store %struct.videocodec* %0, %struct.videocodec** %5, align 8
  store %struct.tvnorm* %1, %struct.tvnorm** %6, align 8
  store %struct.vfe_settings* %2, %struct.vfe_settings** %7, align 8
  store %struct.vfe_polarity* %3, %struct.vfe_polarity** %8, align 8
  %10 = load %struct.videocodec*, %struct.videocodec** %5, align 8
  %11 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.zr36016*
  store %struct.zr36016* %13, %struct.zr36016** %9, align 8
  %14 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %15 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %18 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %21 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %24 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %27 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %30 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %33 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %36 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i64 %22, i32 %25, i64 %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %40 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %43 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %45 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %48 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %50 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %4
  %54 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %55 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %58

57:                                               ; preds = %4
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ 1, %57 ]
  %60 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %61 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %66 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %68 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %71 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %75 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %77 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 1
  %83 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %84 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %86 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 255
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 1
  %93 = load %struct.zr36016*, %struct.zr36016** %9, align 8
  %94 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i64, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
