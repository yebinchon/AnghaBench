; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci035.c_i_APCI035_StartStopWriteTimerWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci035.c_i_APCI035_StartStopWriteTimerWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@i_WatchdogNbr = common dso_local global i32 0, align 4
@ADDIDATA_WATCHDOG = common dso_local global i64 0, align 8
@i_Temp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI035_StartStopWriteTimerWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @i_WatchdogNbr, align 4
  %20 = sub nsw i32 %19, 1
  %21 = mul nsw i32 %20, 32
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = add nsw i64 %23, 12
  %25 = call i32 @inl(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = and i64 %27, 4294965759
  %29 = or i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @i_WatchdogNbr, align 4
  %36 = sub nsw i32 %35, 1
  %37 = mul nsw i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = add nsw i64 %39, 12
  %41 = call i32 @outl(i32 %31, i64 %40)
  br label %42

42:                                               ; preds = %15, %4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @i_WatchdogNbr, align 4
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %52, 32
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = add nsw i64 %55, 12
  %57 = call i32 @inl(i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = and i64 %59, 4294965759
  %61 = or i64 %60, 512
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @i_WatchdogNbr, align 4
  %68 = sub nsw i32 %67, 1
  %69 = mul nsw i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = add nsw i64 %71, 12
  %73 = call i32 @outl(i32 %63, i64 %72)
  br label %74

74:                                               ; preds = %47, %42
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @i_WatchdogNbr, align 4
  %85 = sub nsw i32 %84, 1
  %86 = mul nsw i32 %85, 32
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = add nsw i64 %88, 12
  %90 = call i32 @outl(i32 %80, i64 %89)
  br label %91

91:                                               ; preds = %79, %74
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %125

96:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i32, i32* %10, align 4
  %99 = icmp sle i32 %98, 4
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 2, i32* %9, align 4
  br label %108

107:                                              ; preds = %100
  store i32 16, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* @i_WatchdogNbr, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @i_WatchdogNbr, align 4
  %115 = sub nsw i32 %114, 1
  %116 = mul nsw i32 %115, 32
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = add nsw i64 %118, 0
  %120 = call i32 @outl(i32 %110, i64 %119)
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %97

124:                                              ; preds = %97
  br label %125

125:                                              ; preds = %124, %91
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %159

130:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %131

131:                                              ; preds = %155, %130
  %132 = load i32, i32* %10, align 4
  %133 = icmp sle i32 %132, 4
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, i32* %9, align 4
  br label %142

141:                                              ; preds = %134
  store i32 8, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* @i_WatchdogNbr, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @i_WatchdogNbr, align 4
  %149 = sub nsw i32 %148, 1
  %150 = mul nsw i32 %149, 32
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %147, %151
  %153 = add nsw i64 %152, 0
  %154 = call i32 @outl(i32 %144, i64 %153)
  br label %155

155:                                              ; preds = %142
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %131

158:                                              ; preds = %131
  br label %159

159:                                              ; preds = %158, %125
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 5
  br i1 %163, label %164, label %193

164:                                              ; preds = %159
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %165

165:                                              ; preds = %189, %164
  %166 = load i32, i32* %10, align 4
  %167 = icmp sle i32 %166, 4
  br i1 %167, label %168, label %192

168:                                              ; preds = %165
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 4, i32* %9, align 4
  br label %176

175:                                              ; preds = %168
  store i32 32, i32* %9, align 4
  br label %176

176:                                              ; preds = %175, %174
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* @i_WatchdogNbr, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @i_WatchdogNbr, align 4
  %183 = sub nsw i32 %182, 1
  %184 = mul nsw i32 %183, 32
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %181, %185
  %187 = add nsw i64 %186, 0
  %188 = call i32 @outl(i32 %178, i64 %187)
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %165

192:                                              ; preds = %165
  store i32 1, i32* @i_Temp, align 4
  br label %193

193:                                              ; preds = %192, %159
  %194 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  ret i32 %196
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
