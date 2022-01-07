; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32, i32 }

@PCI_BT_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot get vbi RESOURCE_DMA3_BRS resource\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@vbi_pixel_to_capture = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@vbi_qops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@vbi_read_timeout = common dso_local global i32 0, align 4
@SAA7146_USE_PORT_B_FOR_VBI = common dso_local global i32 0, align 4
@BRS_CTRL = common dso_local global i32 0, align 4
@MASK_30 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"vbi workaround failed!\0A\00", align 1
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.file*)* @vbi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_open(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.saa7146_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.saa7146_fh*, %struct.saa7146_fh** %10, align 8
  store %struct.saa7146_fh* %11, %struct.saa7146_fh** %6, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = load i32, i32* @PCI_BT_V1, align 4
  %14 = call i32 @saa7146_read(%struct.saa7146_dev* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %17 = bitcast %struct.saa7146_fh* %16 to i8*
  %18 = call i32 @DEB_VBI(i8* %17)
  %19 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %20 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %21 = call i32 @saa7146_res_get(%struct.saa7146_fh* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = call i32 @DEB_S(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -2031617
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 1900544
  store i32 %32, i32* %7, align 4
  %33 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %34 = load i32, i32* @PCI_BT_V1, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @saa7146_write(%struct.saa7146_dev* %33, i32 %34, i32 %35)
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %38 = load i32, i32* @MC2, align 4
  %39 = load i32, i32* @MASK_04, align 4
  %40 = load i32, i32* @MASK_20, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @saa7146_write(%struct.saa7146_dev* %37, i32 %38, i32 %41)
  %43 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %44 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %43, i32 0, i32 2
  %45 = call i32 @memset(%struct.TYPE_7__* %44, i32 0, i32 32)
  %46 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %47 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 27000000, i32* %48, align 8
  %49 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %50 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 248, i32* %51, align 4
  %52 = load i32, i32* @vbi_pixel_to_capture, align 4
  %53 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %54 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %57 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %58 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  %60 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %61 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 5, i32* %64, align 4
  %65 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %66 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 16, i32* %69, align 4
  %70 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %71 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 312, i32* %74, align 4
  %75 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %76 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 16, i32* %79, align 4
  %80 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %81 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %80, i32 0, i32 1
  %82 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %83 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %87 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %86, i32 0, i32 2
  %88 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %89 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %92 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %91, i32 0, i32 1
  %93 = call i32 @videobuf_queue_sg_init(i32* %81, i32* @vbi_qops, i32* %85, i32* %87, i32 %88, i32 %89, i32 4, %struct.file* %90, i32* %92)
  %94 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %95 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %94, i32 0, i32 0
  %96 = call i32 @init_timer(%struct.TYPE_8__* %95)
  %97 = load i32, i32* @vbi_read_timeout, align 4
  %98 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %99 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load %struct.file*, %struct.file** %5, align 8
  %102 = ptrtoint %struct.file* %101 to i64
  %103 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %104 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* @SAA7146_USE_PORT_B_FOR_VBI, align 4
  %107 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %108 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %106, %111
  %113 = icmp ne i32 0, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %28
  %115 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %116 = load i32, i32* @BRS_CTRL, align 4
  %117 = load i32, i32* @MASK_30, align 4
  %118 = load i32, i32* @MASK_29, align 4
  %119 = or i32 %117, %118
  %120 = or i32 %119, 3670016
  %121 = call i32 @saa7146_write(%struct.saa7146_dev* %115, i32 %116, i32 %120)
  br label %132

122:                                              ; preds = %28
  %123 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %124 = load i32, i32* @BRS_CTRL, align 4
  %125 = call i32 @saa7146_write(%struct.saa7146_dev* %123, i32 %124, i32 1)
  %126 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %127 = call i32 @vbi_workaround(%struct.saa7146_dev* %126)
  store i32 %127, i32* %8, align 4
  %128 = icmp ne i32 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 @DEB_VBI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %122
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %134 = load i32, i32* @MC2, align 4
  %135 = load i32, i32* @MASK_08, align 4
  %136 = load i32, i32* @MASK_24, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @saa7146_write(%struct.saa7146_dev* %133, i32 %134, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %132, %24
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32 @saa7146_res_get(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.file*, i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @vbi_workaround(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
