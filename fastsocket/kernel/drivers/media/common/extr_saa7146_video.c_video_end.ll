; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.TYPE_2__, %struct.saa7146_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32*, %struct.saa7146_fh* }
%struct.file = type { i32 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"not capturing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"capturing, but in another open.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FORMAT_IS_PLANAR = common dso_local global i32 0, align 4
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4
@MASK_21 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_fh*, %struct.file*)* @video_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_end(%struct.saa7146_fh* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_fh*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  %8 = alloca %struct.saa7146_format*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %12, i32 0, i32 1
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %13, align 8
  store %struct.saa7146_dev* %14, %struct.saa7146_dev** %6, align 8
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 1
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %16, align 8
  store %struct.saa7146_vv* %17, %struct.saa7146_vv** %7, align 8
  store %struct.saa7146_format* null, %struct.saa7146_format** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %19 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %20 = bitcast %struct.saa7146_fh* %19 to i8*
  %21 = call i32 @DEB_EE(i8* %20)
  %22 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %23 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STATUS_CAPTURE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @STATUS_CAPTURE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @DEB_S(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %111

31:                                               ; preds = %2
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 2
  %34 = load %struct.saa7146_fh*, %struct.saa7146_fh** %33, align 8
  %35 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %36 = icmp ne %struct.saa7146_fh* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @DEB_S(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %111

41:                                               ; preds = %31
  %42 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %43 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %44 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %42, i32 %46)
  store %struct.saa7146_format* %47, %struct.saa7146_format** %8, align 8
  %48 = load %struct.saa7146_format*, %struct.saa7146_format** %8, align 8
  %49 = icmp eq %struct.saa7146_format* null, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.saa7146_format*, %struct.saa7146_format** %8, align 8
  %53 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FORMAT_IS_PLANAR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 0, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %41
  %59 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %60 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @MASK_22, align 4
  %65 = load i32, i32* @MASK_21, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MASK_20, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %72

69:                                               ; preds = %41
  %70 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @MASK_22, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %58
  %73 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %74 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %78 = load i32, i32* @MC1, align 4
  %79 = load i32, i32* @MASK_28, align 4
  %80 = call i32 @saa7146_write(%struct.saa7146_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %82 = load i32, i32* @MASK_27, align 4
  %83 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %81, i32 %82)
  %84 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %85 = load i32, i32* @MC1, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @saa7146_write(%struct.saa7146_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %89 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %93 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %92, i32 0, i32 2
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %93, align 8
  %94 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %95 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @saa7146_res_free(%struct.saa7146_fh* %96, i32 %97)
  %99 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %100 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %72
  %104 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %105 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @saa7146_start_preview(i32* %106)
  %108 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %109 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %103, %72
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %37, %29
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @saa7146_start_preview(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
