; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.TYPE_2__, %struct.saa7146_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.saa7146_fh*, %struct.saa7146_fh* }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"already capturing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"already capturing in another open.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"warning: suspending overlay video for streaming capture.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"suspending video failed. aborting\0A\00", align 1
@FORMAT_IS_PLANAR = common dso_local global i32 0, align 4
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot get capture resource %d\0A\00", align 1
@MC2 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_fh*)* @video_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_begin(%struct.saa7146_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.saa7146_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %11 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %10, i32 0, i32 1
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %11, align 8
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %4, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %14, align 8
  store %struct.saa7146_vv* %15, %struct.saa7146_vv** %5, align 8
  store %struct.saa7146_format* null, %struct.saa7146_format** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %17 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %18 = bitcast %struct.saa7146_fh* %17 to i8*
  %19 = call i32 @DEB_EE(i8* %18)
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %21 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @STATUS_CAPTURE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %28 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %27, i32 0, i32 1
  %29 = load %struct.saa7146_fh*, %struct.saa7146_fh** %28, align 8
  %30 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %31 = icmp eq %struct.saa7146_fh* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @DEB_S(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

34:                                               ; preds = %26
  %35 = call i32 @DEB_S(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %126

38:                                               ; preds = %1
  %39 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %40 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @STATUS_OVERLAY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = call i32 @DEB_S(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %48 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %47, i32 0, i32 1
  %49 = load %struct.saa7146_fh*, %struct.saa7146_fh** %48, align 8
  %50 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %51 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %50, i32 0, i32 2
  store %struct.saa7146_fh* %49, %struct.saa7146_fh** %51, align 8
  %52 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %53 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %52, i32 0, i32 1
  %54 = load %struct.saa7146_fh*, %struct.saa7146_fh** %53, align 8
  %55 = call i32 @saa7146_stop_preview(%struct.saa7146_fh* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 0, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = call i32 @DEB_D(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %126

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %64 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %65 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %63, i32 %67)
  store %struct.saa7146_format* %68, %struct.saa7146_format** %6, align 8
  %69 = load %struct.saa7146_format*, %struct.saa7146_format** %6, align 8
  %70 = icmp eq %struct.saa7146_format* null, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.saa7146_format*, %struct.saa7146_format** %6, align 8
  %74 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FORMAT_IS_PLANAR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 0, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %62
  %80 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %81 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %7, align 4
  br label %87

85:                                               ; preds = %62
  %86 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %79
  %88 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @saa7146_res_get(%struct.saa7146_fh* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 0, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @DEB_S(i8* %96)
  %98 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %99 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %98, i32 0, i32 2
  %100 = load %struct.saa7146_fh*, %struct.saa7146_fh** %99, align 8
  %101 = icmp ne %struct.saa7146_fh* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %104 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %103, i32 0, i32 2
  %105 = load %struct.saa7146_fh*, %struct.saa7146_fh** %104, align 8
  %106 = call i32 @saa7146_start_preview(%struct.saa7146_fh* %105)
  %107 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %108 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %107, i32 0, i32 2
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %108, align 8
  br label %109

109:                                              ; preds = %102, %93
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %126

112:                                              ; preds = %87
  %113 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %114 = load i32, i32* @MC2, align 4
  %115 = load i32, i32* @MASK_27, align 4
  %116 = call i32 @saa7146_write(%struct.saa7146_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %118 = load i32, i32* @MASK_27, align 4
  %119 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %117, i32 %118)
  %120 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %121 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %122 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %121, i32 0, i32 1
  store %struct.saa7146_fh* %120, %struct.saa7146_fh** %122, align 8
  %123 = load i32, i32* @STATUS_CAPTURE, align 4
  %124 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %125 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %112, %109, %58, %34, %32
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @saa7146_stop_preview(%struct.saa7146_fh*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @saa7146_res_get(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @saa7146_start_preview(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
