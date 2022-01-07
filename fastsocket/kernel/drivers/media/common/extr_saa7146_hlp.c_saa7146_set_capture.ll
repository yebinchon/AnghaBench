; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_set_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_set_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_4__, %struct.saa7146_vv* }
%struct.TYPE_4__ = type { i32 }
%struct.saa7146_vv = type { i64 }
%struct.saa7146_buf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"buf:%p, next:%p\0A\00", align 1
@PROT_ADDR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"forcing sync to new frame\0A\00", align 1
@MC2 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@RPS_ADDR0 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_12 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_set_capture(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_buf*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.saa7146_format*, align 8
  %8 = alloca %struct.saa7146_vv*, align 8
  %9 = alloca i64, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %12 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %10, i32 %15)
  store %struct.saa7146_format* %16, %struct.saa7146_format** %7, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 1
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %8, align 8
  %20 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %21 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %22 = bitcast %struct.saa7146_buf* %21 to i8*
  %23 = call i32 @DEB_CAP(i8* %22)
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %25 = load i32, i32* @PROT_ADDR1, align 4
  %26 = call i64 @saa7146_read(%struct.saa7146_dev* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 0, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = call i32 @DEB_CAP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %32 = load i32, i32* @MC2, align 4
  %33 = load i32, i32* @MASK_27, align 4
  %34 = call i32 @saa7146_write(%struct.saa7146_dev* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %37 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %38 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %43 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %48 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @saa7146_set_window(%struct.saa7146_dev* %36, i32 %41, i32 %46, i32 %51)
  %53 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %54 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %55 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @saa7146_set_output_format(%struct.saa7146_dev* %53, i32 %56)
  %58 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %59 = call i32 @saa7146_disable_clipping(%struct.saa7146_dev* %58)
  %60 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %61 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %35
  br label %88

66:                                               ; preds = %35
  %67 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %68 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %74 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %75 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %87

76:                                               ; preds = %66
  %77 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %78 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %84 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %85 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %90 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @IS_PLANAR(i32 %91)
  %93 = icmp ne i64 0, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %96 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %97 = call i32 @calculate_video_dma_grab_planar(%struct.saa7146_dev* %95, %struct.saa7146_buf* %96)
  %98 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %99 = call i32 @program_capture_engine(%struct.saa7146_dev* %98, i32 1)
  br label %106

100:                                              ; preds = %88
  %101 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %102 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %103 = call i32 @calculate_video_dma_grab_packed(%struct.saa7146_dev* %101, %struct.saa7146_buf* %102)
  %104 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %105 = call i32 @program_capture_engine(%struct.saa7146_dev* %104, i32 0)
  br label %106

106:                                              ; preds = %100, %94
  %107 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %108 = load i32, i32* @RPS_ADDR0, align 4
  %109 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %110 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @saa7146_write(%struct.saa7146_dev* %107, i32 %108, i32 %112)
  %114 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %115 = load i32, i32* @MC1, align 4
  %116 = load i32, i32* @MASK_12, align 4
  %117 = load i32, i32* @MASK_28, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @saa7146_write(%struct.saa7146_dev* %114, i32 %115, i32 %118)
  ret void
}

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_CAP(i8*) #1

declare dso_local i64 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_set_window(%struct.saa7146_dev*, i32, i32, i32) #1

declare dso_local i32 @saa7146_set_output_format(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_disable_clipping(%struct.saa7146_dev*) #1

declare dso_local i64 @IS_PLANAR(i32) #1

declare dso_local i32 @calculate_video_dma_grab_planar(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

declare dso_local i32 @program_capture_engine(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @calculate_video_dma_grab_packed(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
