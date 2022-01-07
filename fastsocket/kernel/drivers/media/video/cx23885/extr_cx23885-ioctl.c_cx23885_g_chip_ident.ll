; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-ioctl.c_cx23885_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-ioctl.c_cx23885_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cx23885_dev = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cx23885_fh = type { %struct.cx23885_dev* }

@V4L2_IDENT_NONE = common dso_local global i8* null, align 8
@RDR_CFG2 = common dso_local global i32 0, align 4
@V4L2_IDENT_CX23888 = common dso_local global i8* null, align 8
@V4L2_IDENT_CX23885 = common dso_local global i8* null, align 8
@V4L2_IDENT_CX23887 = common dso_local global i8* null, align 8
@V4L2_IDENT_UNKNOWN = common dso_local global i8* null, align 8
@V4L2_IDENT_CX23417 = common dso_local global i8* null, align 8
@CX23885_HW_888_IR = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_chip_ident = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_g_chip_ident(%struct.file* %0, i8* %1, %struct.v4l2_dbg_chip_ident* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_dbg_chip_ident* %2, %struct.v4l2_dbg_chip_ident** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cx23885_fh*
  %12 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %11, i32 0, i32 0
  %13 = load %struct.cx23885_dev*, %struct.cx23885_dev** %12, align 8
  store %struct.cx23885_dev* %13, %struct.cx23885_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** @V4L2_IDENT_NONE, align 8
  %15 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %120 [
    i32 130, label %23
    i32 128, label %108
    i32 129, label %114
  ]

23:                                               ; preds = %3
  %24 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %104 [
    i32 0, label %28
    i32 1, label %85
    i32 2, label %97
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* @RDR_CFG2, align 4
  %30 = call i32 @cx_read(i32 %29)
  %31 = and i32 %30, 255
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %33 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %64 [
    i32 34898, label %37
    i32 34944, label %49
  ]

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** @V4L2_IDENT_CX23888, align 8
  %42 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %37
  %45 = load i8*, i8** @V4L2_IDENT_CX23885, align 8
  %46 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %68

49:                                               ; preds = %28
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 14
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** @V4L2_IDENT_CX23887, align 8
  %57 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %63

59:                                               ; preds = %52
  %60 = load i8*, i8** @V4L2_IDENT_CX23888, align 8
  %61 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %68

64:                                               ; preds = %28
  %65 = load i8*, i8** @V4L2_IDENT_UNKNOWN, align 8
  %66 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %63, %48
  %69 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %70 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  %78 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %79 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 255
  %82 = or i32 %77, %81
  %83 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %107

85:                                               ; preds = %23
  %86 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %87 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i8*, i8** @V4L2_IDENT_CX23417, align 8
  %92 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %85
  br label %107

97:                                               ; preds = %23
  %98 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %99 = load i32, i32* @CX23885_HW_888_IR, align 4
  %100 = load i32, i32* @core, align 4
  %101 = load i32, i32* @g_chip_ident, align 4
  %102 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %103 = call i32 @call_hw(%struct.cx23885_dev* %98, i32 %99, i32 %100, i32 %101, %struct.v4l2_dbg_chip_ident* %102)
  br label %107

104:                                              ; preds = %23
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %97, %96, %68
  br label %123

108:                                              ; preds = %3
  %109 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %110 = load i32, i32* @core, align 4
  %111 = load i32, i32* @g_chip_ident, align 4
  %112 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %113 = call i32 @call_all(%struct.cx23885_dev* %109, i32 %110, i32 %111, %struct.v4l2_dbg_chip_ident* %112)
  br label %123

114:                                              ; preds = %3
  %115 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %116 = load i32, i32* @core, align 4
  %117 = load i32, i32* @g_chip_ident, align 4
  %118 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %6, align 8
  %119 = call i32 @call_all(%struct.cx23885_dev* %115, i32 %116, i32 %117, %struct.v4l2_dbg_chip_ident* %118)
  br label %123

120:                                              ; preds = %3
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %114, %108, %107
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @call_hw(%struct.cx23885_dev*, i32, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
