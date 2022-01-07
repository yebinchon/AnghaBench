; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_daqboard2000_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_daqboard2000_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.daqboard2000_hw* }
%struct.daqboard2000_hw = type { i32, i32, i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DAQBOARD2000_AcqResetScanListFifo = common dso_local global i32 0, align 4
@DAQBOARD2000_AcqResetResultsFifo = common dso_local global i32 0, align 4
@DAQBOARD2000_AcqResetConfigPipe = common dso_local global i32 0, align 4
@DAQBOARD2000_SeqStartScanList = common dso_local global i32 0, align 4
@DAQBOARD2000_AcqConfigPipeFull = common dso_local global i32 0, align 4
@DAQBOARD2000_AdcPacerEnable = common dso_local global i32 0, align 4
@DAQBOARD2000_AcqLogicScanning = common dso_local global i32 0, align 4
@DAQBOARD2000_AcqResultsFIFOHasValidData = common dso_local global i32 0, align 4
@DAQBOARD2000_AdcPacerDisable = common dso_local global i32 0, align 4
@DAQBOARD2000_SeqStopScanList = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @daqboard2000_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqboard2000_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.daqboard2000_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %15, align 8
  store %struct.daqboard2000_hw* %16, %struct.daqboard2000_hw** %10, align 8
  %17 = load i32, i32* @DAQBOARD2000_AcqResetScanListFifo, align 4
  %18 = load i32, i32* @DAQBOARD2000_AcqResetResultsFifo, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DAQBOARD2000_AcqResetConfigPipe, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %23 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %25 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %24, i32 0, i32 1
  store i32 1000000, i32* %25, align 4
  %26 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %27 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_RANGE(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_CHAN(i32 %34)
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %114, %4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %117

42:                                               ; preds = %36
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @setup_sampling(%struct.comedi_device* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @DAQBOARD2000_SeqStartScanList, align 4
  %48 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %49 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %62, %42
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 20
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %55 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DAQBOARD2000_AcqConfigPipeFull, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %50

65:                                               ; preds = %60, %50
  %66 = load i32, i32* @DAQBOARD2000_AdcPacerEnable, align 4
  %67 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %68 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %81, %65
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 20
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %74 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DAQBOARD2000_AcqLogicScanning, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %84

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %69

84:                                               ; preds = %79, %69
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 20
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %90 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DAQBOARD2000_AcqResultsFIFOHasValidData, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %100

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %85

100:                                              ; preds = %95, %85
  %101 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %102 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @DAQBOARD2000_AdcPacerDisable, align 4
  %109 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %110 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @DAQBOARD2000_SeqStopScanList, align 4
  %112 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %10, align 8
  %113 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %100
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %36

117:                                              ; preds = %36
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @setup_sampling(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
