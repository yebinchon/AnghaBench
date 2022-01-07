; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me_daq.c_me_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me_daq.c_me_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ENABLE_DAC = common dso_local global i32 0, align 4
@dev_private = common dso_local global %struct.TYPE_2__* null, align 8
@ME_CONTROL_2 = common dso_local global i64 0, align 8
@BUFFERED_DAC = common dso_local global i32 0, align 4
@DAC_BIPOLAR_A = common dso_local global i32 0, align 4
@DAC_GAIN_1_A = common dso_local global i32 0, align 4
@DAC_GAIN_0_A = common dso_local global i32 0, align 4
@ME_DAC_CONTROL = common dso_local global i64 0, align 8
@ME_DAC_CONTROL_UPDATE = common dso_local global i64 0, align 8
@ME_DAC_DATA_A = common dso_local global i64 0, align 8
@ME_DAC_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @ENABLE_DAC, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ME_CONTROL_2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 %19, i64 %24)
  %26 = load i32, i32* @BUFFERED_DAC, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ME_CONTROL_2, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 %33, i64 %38)
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %95, %4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %40
  %47 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %47, i32 0, i32 1
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CR_CHAN(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %54, i32 0, i32 1
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CR_RANGE(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 2176, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %46
  %71 = load i32, i32* @DAC_BIPOLAR_A, align 4
  %72 = load i32, i32* @DAC_GAIN_1_A, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %94

80:                                               ; preds = %46
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* @DAC_BIPOLAR_A, align 4
  %85 = load i32, i32* @DAC_GAIN_0_A, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = ashr i32 %86, %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %83, %80
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %40

98:                                               ; preds = %40
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ME_DAC_CONTROL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writew(i32 %101, i64 %106)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ME_DAC_CONTROL_UPDATE, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readw(i64 %112)
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %158, %98
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %161

120:                                              ; preds = %114
  %121 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %121, i32 0, i32 1
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @CR_CHAN(i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %130, %133
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ME_DAC_DATA_A, align 8
  %139 = add nsw i64 %137, %138
  %140 = load i32, i32* %9, align 4
  %141 = shl i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = call i32 @writew(i32 %134, i64 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %147, %150
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  br label %158

158:                                              ; preds = %120
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %114

161:                                              ; preds = %114
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ME_DAC_UPDATE, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @readw(i64 %166)
  %168 = load i32, i32* %11, align 4
  ret i32 %168
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
