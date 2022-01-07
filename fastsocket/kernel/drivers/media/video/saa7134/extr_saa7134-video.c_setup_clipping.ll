; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_setup_clipping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_setup_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }
%struct.v4l2_clip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cliplist = type { i32, i32, i8* }

@cliplist_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cols\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.v4l2_clip*, i32, i32)* @setup_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_clipping(%struct.saa7134_dev* %0, %struct.v4l2_clip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.v4l2_clip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x %struct.cliplist], align 16
  %10 = alloca [16 x %struct.cliplist], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.v4l2_clip* %1, %struct.v4l2_clip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 0
  %20 = call i32 @memset(%struct.cliplist* %19, i32 0, i32 256)
  %21 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 0
  %22 = call i32 @memset(%struct.cliplist* %21, i32 0, i32 256)
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %133, %4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i1 [ false, %23 ], [ %29, %27 ]
  br i1 %31, label %32, label %136

32:                                               ; preds = %30
  %33 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %33, i64 %35
  %37 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @clip_range(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 16
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %53, i64 %55
  %57 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %60, i64 %62
  %64 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %59, %66
  %68 = call i8* @clip_range(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %71, i32 0, i32 2
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %81, i64 %83
  %85 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sdiv i32 %87, %88
  %90 = call i8* @clip_range(i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %93, i32 0, i32 2
  store i8* %90, i8** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = shl i32 1, %95
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 16
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %103, i64 %105
  %107 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %110, i64 %112
  %114 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %109, %116
  %118 = load i32, i32* %14, align 4
  %119 = sdiv i32 %117, %118
  %120 = call i8* @clip_range(i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %123, i32 0, i32 2
  store i8* %120, i8** %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %32
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %23

136:                                              ; preds = %30
  %137 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 0
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @cliplist_cmp, align 4
  %140 = call i32 @sort(%struct.cliplist* %137, i32 %138, i32 16, i32 %139, i32* null)
  %141 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 0
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @cliplist_cmp, align 4
  %144 = call i32 @sort(%struct.cliplist* %141, i32 %142, i32 16, i32 %143, i32* null)
  %145 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %146 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %9, i64 0, i64 0
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @set_cliplist(%struct.saa7134_dev* %145, i32 896, %struct.cliplist* %146, i32 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %149 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %150 = getelementptr inbounds [16 x %struct.cliplist], [16 x %struct.cliplist]* %10, i64 0, i64 0
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @set_cliplist(%struct.saa7134_dev* %149, i32 900, %struct.cliplist* %150, i32 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @memset(%struct.cliplist*, i32, i32) #1

declare dso_local i8* @clip_range(i32) #1

declare dso_local i32 @sort(%struct.cliplist*, i32, i32, i32, i32*) #1

declare dso_local i32 @set_cliplist(%struct.saa7134_dev*, i32, %struct.cliplist*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
