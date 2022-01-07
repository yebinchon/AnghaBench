; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_set_out_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_set_out_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32* }

@VIDEO_MODE_NTSC = common dso_local global i32 0, align 4
@VIDEO_MODE_PAL = common dso_local global i32 0, align 4
@debNormal = common dso_local global i32 0, align 4
@XILINX_CTL0 = common dso_local global i32 0, align 4
@SAA7146_NUM_LINE_BYTE1 = common dso_local global i32 0, align 4
@NewCard = common dso_local global i64 0, align 8
@IBM_MP2_DISP_MODE = common dso_local global i32 0, align 4
@IBM_MP2_DISP_DLY = common dso_local global i32 0, align 4
@PALFirstActive = common dso_local global i32 0, align 4
@NTSCFirstActive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*, i32)* @set_out_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_out_format(%struct.saa7146* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146*, align 8
  %4 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @VIDEO_MODE_NTSC, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  %11 = call i32 @initialize_saa7121(%struct.saa7146* %5, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %14 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VIDEO_MODE_PAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %22 = load i32, i32* @debNormal, align 4
  %23 = load i32, i32* @XILINX_CTL0, align 4
  %24 = call i32 @debiwrite(%struct.saa7146* %21, i32 %22, i32 %23, i32 2056, i32 2)
  %25 = call i32 @mdelay(i32 50)
  %26 = load i32, i32* @SAA7146_NUM_LINE_BYTE1, align 4
  %27 = call i32 @saawrite(i32 18875072, i32 %26)
  %28 = load i64, i64* @NewCard, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %32 = load i32, i32* @debNormal, align 4
  %33 = load i32, i32* @IBM_MP2_DISP_MODE, align 4
  %34 = call i32 @debiwrite(%struct.saa7146* %31, i32 %32, i32 %33, i32 57600, i32 2)
  %35 = call i32 @mdelay(i32 50)
  br label %36

36:                                               ; preds = %30, %20
  %37 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %38 = load i32, i32* @debNormal, align 4
  %39 = load i32, i32* @IBM_MP2_DISP_MODE, align 4
  %40 = load i64, i64* @NewCard, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 58624, i32 25856
  %44 = call i32 @debiwrite(%struct.saa7146* %37, i32 %38, i32 %39, i32 %43, i32 2)
  %45 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %46 = load i32, i32* @debNormal, align 4
  %47 = load i32, i32* @IBM_MP2_DISP_DLY, align 4
  %48 = load i64, i64* @NewCard, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* @PALFirstActive, align 4
  br label %55

52:                                               ; preds = %36
  %53 = load i32, i32* @PALFirstActive, align 4
  %54 = sub nsw i32 %53, 6
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  %57 = or i32 256, %56
  %58 = call i32 @debiwrite(%struct.saa7146* %45, i32 %46, i32 %47, i32 %57, i32 2)
  br label %89

59:                                               ; preds = %2
  %60 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %61 = load i32, i32* @debNormal, align 4
  %62 = load i32, i32* @XILINX_CTL0, align 4
  %63 = call i32 @debiwrite(%struct.saa7146* %60, i32 %61, i32 %62, i32 2048, i32 2)
  %64 = call i32 @mdelay(i32 50)
  %65 = load i32, i32* @SAA7146_NUM_LINE_BYTE1, align 4
  %66 = call i32 @saawrite(i32 15729344, i32 %65)
  %67 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %68 = load i32, i32* @debNormal, align 4
  %69 = load i32, i32* @IBM_MP2_DISP_MODE, align 4
  %70 = load i64, i64* @NewCard, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 57600, i32 24832
  %74 = call i32 @debiwrite(%struct.saa7146* %67, i32 %68, i32 %69, i32 %73, i32 2)
  %75 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %76 = load i32, i32* @debNormal, align 4
  %77 = load i32, i32* @IBM_MP2_DISP_DLY, align 4
  %78 = load i64, i64* @NewCard, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %59
  %81 = load i32, i32* @NTSCFirstActive, align 4
  br label %85

82:                                               ; preds = %59
  %83 = load i32, i32* @NTSCFirstActive, align 4
  %84 = sub nsw i32 %83, 6
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  %87 = or i32 256, %86
  %88 = call i32 @debiwrite(%struct.saa7146* %75, i32 %76, i32 %77, i32 %87, i32 2)
  br label %89

89:                                               ; preds = %85, %55
  ret void
}

declare dso_local i32 @initialize_saa7121(%struct.saa7146*, i32) #1

declare dso_local i32 @debiwrite(%struct.saa7146*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @saawrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
