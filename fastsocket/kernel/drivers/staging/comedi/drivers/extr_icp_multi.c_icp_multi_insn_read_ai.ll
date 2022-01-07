; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_insn_read_ai.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_insn_read_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ADC_READY = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ICP_MULTI_INT_EN = common dso_local global i64 0, align 8
@ICP_MULTI_INT_STAT = common dso_local global i64 0, align 8
@ADC_ST = common dso_local global i32 0, align 4
@ICP_MULTI_ADC_CSR = common dso_local global i64 0, align 8
@ADC_BSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"A/D insn timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ICP_MULTI_AI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @icp_multi_insn_read_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_multi_insn_read_ai(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @ADC_READY, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ICP_MULTI_INT_EN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writew(i32 %20, i64 %25)
  %27 = load i32, i32* @ADC_READY, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ICP_MULTI_INT_STAT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i32 %34, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %43, i32 0, i32 1
  %45 = call i32 @setup_channel_list(%struct.comedi_device* %41, %struct.comedi_subdevice* %42, i32* %44, i32 1)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %142, %4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %145

52:                                               ; preds = %46
  %53 = load i32, i32* @ADC_ST, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ICP_MULTI_ADC_CSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i32 %60, i64 %65)
  %67 = load i32, i32* @ADC_ST, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = call i32 @udelay(i32 1)
  store i32 100, i32* %11, align 4
  br label %74

74:                                               ; preds = %89, %52
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ICP_MULTI_ADC_CSR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readw(i64 %83)
  %85 = load i32, i32* @ADC_BSY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  br label %129

89:                                               ; preds = %78
  %90 = call i32 @udelay(i32 1)
  br label %74

91:                                               ; preds = %74
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = call i32 @comedi_error(%struct.comedi_device* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ADC_READY, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ICP_MULTI_INT_EN, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writew(i32 %102, i64 %107)
  %109 = load i32, i32* @ADC_READY, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ICP_MULTI_INT_STAT, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writew(i32 %116, i64 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* @ETIME, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %176

129:                                              ; preds = %88
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ICP_MULTI_AI, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @readw(i64 %134)
  %136 = ashr i32 %135, 4
  %137 = and i32 %136, 4095
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %129
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %46

145:                                              ; preds = %46
  %146 = load i32, i32* @ADC_READY, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ICP_MULTI_INT_EN, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writew(i32 %154, i64 %159)
  %161 = load i32, i32* @ADC_READY, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ICP_MULTI_INT_STAT, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writew(i32 %168, i64 %173)
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %145, %91
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
