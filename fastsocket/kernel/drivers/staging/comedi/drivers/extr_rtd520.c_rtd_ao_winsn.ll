; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"comedi: rtd520 DAC chan=%d range=%d writing %d as 0x%x\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@RTD_DAC_TIMEOUT = common dso_local global i32 0, align 4
@FS_DAC1_NOT_EMPTY = common dso_local global i32 0, align 4
@FS_DAC2_NOT_EMPTY = common dso_local global i32 0, align 4
@WAIT_QUIETLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"rtd520: Error: DAC never finished! FifoStatus=0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_RANGE(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @RtdDacRange(%struct.comedi_device* %24, i32 %25, i32 %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %128, %4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %131

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 3
  store i32 %40, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %48, 2048
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 2048
  %57 = shl i32 %56, 3
  store i32 %57, i32* %13, align 4
  br label %65

58:                                               ; preds = %43, %34
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 3
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %72, i32 %73)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @RtdDacFifoPut(%struct.comedi_device* %75, i32 %76, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @RtdDacUpdate(%struct.comedi_device* %79, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %114, %65
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @RTD_DAC_TIMEOUT, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = call i32 @RtdFifoStatus(%struct.comedi_device* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 0, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @FS_DAC1_NOT_EMPTY, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @FS_DAC2_NOT_EMPTY, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = and i32 %100, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @WAIT_QUIETLY, align 4
  br label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %93

117:                                              ; preds = %111, %93
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @RTD_DAC_TIMEOUT, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  %123 = xor i32 %122, 26214
  %124 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ETIMEDOUT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %133

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %28

131:                                              ; preds = %28
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %121
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @RtdDacRange(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @RtdDacFifoPut(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @RtdDacUpdate(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdFifoStatus(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
