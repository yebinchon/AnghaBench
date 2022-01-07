; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_saa7146_set_vbi_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_saa7146_set_vbi_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_4__, %struct.saa7146_vv* }
%struct.TYPE_4__ = type { i32 }
%struct.saa7146_vv = type { i64 }
%struct.saa7146_buf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.saa7146_video_dma = type { i32, i32, i32, i64, i64, i64 }

@SAA7146_HPS_SYNC_PORT_A = common dso_local global i64 0, align 8
@CMD_E_FID_A = common dso_local global i64 0, align 8
@CMD_E_FID_B = common dso_local global i64 0, align 8
@CMD_O_FID_A = common dso_local global i64 0, align 8
@CMD_O_FID_B = common dso_local global i64 0, align 8
@vbi_pixel_to_capture = common dso_local global i32 0, align 4
@ME1 = common dso_local global i32 0, align 4
@CMD_WR_REG = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i64 0, align 8
@MASK_12 = common dso_local global i64 0, align 8
@CMD_WR_REG_MASK = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i64 0, align 8
@MASK_20 = common dso_local global i64 0, align 8
@CMD_PAUSE = common dso_local global i64 0, align 8
@CMD_INTERRUPT = common dso_local global i64 0, align 8
@CMD_STOP = common dso_local global i64 0, align 8
@RPS_ADDR1 = common dso_local global i32 0, align 4
@MASK_13 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, %struct.saa7146_buf*, %struct.saa7146_buf*)* @saa7146_set_vbi_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_set_vbi_capture(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_buf*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  %8 = alloca %struct.saa7146_video_dma, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 1
  %14 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  store %struct.saa7146_vv* %14, %struct.saa7146_vv** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %16 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SAA7146_HPS_SYNC_PORT_A, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @CMD_E_FID_A, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @CMD_E_FID_B, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  store i64 %25, i64* %10, align 8
  %26 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %27 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SAA7146_HPS_SYNC_PORT_A, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @CMD_O_FID_A, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @CMD_O_FID_B, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %11, align 8
  %37 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %38 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %8, i32 0, i32 5
  store i64 %42, i64* %43, align 8
  %44 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %45 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @vbi_pixel_to_capture, align 4
  %51 = mul nsw i32 16, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %8, i32 0, i32 4
  store i64 %53, i64* %54, align 8
  %55 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %56 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @vbi_pixel_to_capture, align 4
  %62 = mul nsw i32 32, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %8, i32 0, i32 3
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @vbi_pixel_to_capture, align 4
  %67 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %8, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %69 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ME1, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %8, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @vbi_pixel_to_capture, align 4
  %78 = or i32 1048576, %77
  %79 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %8, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %81 = call i32 @saa7146_write_out_dma(%struct.saa7146_dev* %80, i32 3, %struct.saa7146_video_dma* %8)
  store i32 0, i32* %9, align 4
  %82 = load i32, i32* @CMD_WR_REG, align 4
  %83 = or i32 %82, 256
  %84 = load i32, i32* @MC2, align 4
  %85 = sdiv i32 %84, 4
  %86 = or i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = call i32 @WRITE_RPS1(i64 %87)
  %89 = load i64, i64* @MASK_28, align 8
  %90 = load i64, i64* @MASK_12, align 8
  %91 = or i64 %89, %90
  %92 = call i32 @WRITE_RPS1(i64 %91)
  %93 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %94 = load i32, i32* @MC1, align 4
  %95 = sdiv i32 %94, 4
  %96 = or i32 %93, %95
  %97 = sext i32 %96 to i64
  %98 = call i32 @WRITE_RPS1(i64 %97)
  %99 = load i64, i64* @MASK_04, align 8
  %100 = load i64, i64* @MASK_20, align 8
  %101 = or i64 %99, %100
  %102 = call i32 @WRITE_RPS1(i64 %101)
  %103 = load i64, i64* @MASK_04, align 8
  %104 = load i64, i64* @MASK_20, align 8
  %105 = or i64 %103, %104
  %106 = call i32 @WRITE_RPS1(i64 %105)
  %107 = load i64, i64* @CMD_PAUSE, align 8
  %108 = load i64, i64* %11, align 8
  %109 = or i64 %107, %108
  %110 = call i32 @WRITE_RPS1(i64 %109)
  %111 = load i64, i64* @CMD_PAUSE, align 8
  %112 = load i64, i64* %10, align 8
  %113 = or i64 %111, %112
  %114 = call i32 @WRITE_RPS1(i64 %113)
  %115 = load i64, i64* @CMD_INTERRUPT, align 8
  %116 = call i32 @WRITE_RPS1(i64 %115)
  %117 = load i64, i64* @CMD_STOP, align 8
  %118 = call i32 @WRITE_RPS1(i64 %117)
  %119 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %120 = load i64, i64* @MASK_28, align 8
  %121 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %119, i64 %120)
  %122 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %123 = load i32, i32* @RPS_ADDR1, align 4
  %124 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %125 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @saa7146_write(%struct.saa7146_dev* %122, i32 %123, i32 %127)
  %129 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %130 = load i32, i32* @MC1, align 4
  %131 = load i32, i32* @MASK_13, align 4
  %132 = load i32, i32* @MASK_29, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @saa7146_write(%struct.saa7146_dev* %129, i32 %130, i32 %133)
  ret void
}

declare dso_local i32 @saa7146_write_out_dma(%struct.saa7146_dev*, i32, %struct.saa7146_video_dma*) #1

declare dso_local i32 @WRITE_RPS1(i64) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
