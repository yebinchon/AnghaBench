; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@cb_pcidas_ai_rinsn.timeout = internal constant i32 10000, align 4
@CR_ALT_SOURCE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CALIBRATION_REG = common dso_local global i64 0, align 8
@IS_UNIPOLAR = common dso_local global i32 0, align 4
@UNIP = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i64 0, align 8
@SE = common dso_local global i32 0, align 4
@ADCMUX_CONT = common dso_local global i64 0, align 8
@ADCFIFOCLR = common dso_local global i64 0, align 8
@ADCDATA = common dso_local global i64 0, align 8
@EOC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidas_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CR_ALT_SOURCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = call i32 @cal_enable_bits(%struct.comedi_device* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CALIBRATION_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %22, i64 %27)
  store i32 0, i32* %13, align 4
  br label %40

29:                                               ; preds = %4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CALIBRATION_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 0, i64 %34)
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_CHAN(i32 %38)
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %29, %20
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @BEGIN_SCAN(i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @END_SCAN(i32 %43)
  %45 = or i32 %42, %44
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CR_RANGE(i32 %48)
  %50 = call i32 @GAIN_BITS(i32 %49)
  %51 = or i32 %45, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %53 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CR_RANGE(i32 %54)
  %56 = load i32, i32* @IS_UNIPOLAR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %40
  %60 = load i32, i32* @UNIP, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %40
  %64 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @CR_AREF(i32 %66)
  %68 = load i64, i64* @AREF_DIFF, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @SE, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ADCMUX_CONT, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outw(i32 %75, i64 %80)
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ADCFIFOCLR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 0, i64 %86)
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %136, %74
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %88
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ADCDATA, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outw(i32 0, i64 %99)
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %116, %94
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 10000
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ADCMUX_CONT, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @inw(i64 %109)
  %111 = load i32, i32* @EOC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %119

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %101

119:                                              ; preds = %114, %101
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 10000
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %141

125:                                              ; preds = %119
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ADCDATA, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @inw(i64 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %88

139:                                              ; preds = %88
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %122
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @cal_enable_bits(%struct.comedi_device*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @BEGIN_SCAN(i32) #1

declare dso_local i32 @END_SCAN(i32) #1

declare dso_local i32 @GAIN_BITS(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
