; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_StartStopWriteTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_StartStopWriteTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_WATCHDOG = common dso_local global i64 0, align 8
@APCI3501_WATCHDOG = common dso_local global i64 0, align 8
@APCI3501_TCW_PROG = common dso_local global i64 0, align 8
@ADDIDATA_TIMER = common dso_local global i64 0, align 8
@APCI3501_TCW_TRIG_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3501_StartStopWriteTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %101

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = and i64 %31, 4294965759
  %33 = or i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outl(i32 %35, i64 %42)
  br label %100

44:                                               ; preds = %16
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inl(i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = and i64 %59, 4294965758
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outl(i32 0, i64 %68)
  br label %99

70:                                               ; preds = %44
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @inl(i64 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = and i64 %85, 4294965759
  %87 = or i64 %86, 512
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outl(i32 %89, i64 %96)
  br label %98

98:                                               ; preds = %75, %70
  br label %99

99:                                               ; preds = %98, %49
  br label %100

100:                                              ; preds = %99, %21
  br label %101

101:                                              ; preds = %100, %4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ADDIDATA_TIMER, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %193

107:                                              ; preds = %101
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @inl(i64 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = and i64 %122, 4294965759
  %124 = or i64 %123, 1
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @outl(i32 %126, i64 %133)
  br label %192

135:                                              ; preds = %107
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %135
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @inl(i64 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = zext i32 %149 to i64
  %151 = and i64 %150, 4294965758
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @outl(i32 %153, i64 %160)
  br label %191

162:                                              ; preds = %135
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %172 = add nsw i64 %170, %171
  %173 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @inl(i64 %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = zext i32 %176 to i64
  %178 = and i64 %177, 4294965759
  %179 = or i64 %178, 512
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %186 = add nsw i64 %184, %185
  %187 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outl(i32 %181, i64 %188)
  br label %190

190:                                              ; preds = %167, %162
  br label %191

191:                                              ; preds = %190, %140
  br label %192

192:                                              ; preds = %191, %112
  br label %193

193:                                              ; preds = %192, %101
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64, i64* @APCI3501_TCW_TRIG_STATUS, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @inl(i64 %200)
  %202 = and i32 %201, 1
  store i32 %202, i32* %10, align 4
  %203 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %204 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  ret i32 %205
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
