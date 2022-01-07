; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_ConfigTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_ConfigTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_WATCHDOG = common dso_local global i32 0, align 4
@APCI3501_WATCHDOG = common dso_local global i64 0, align 8
@APCI3501_TCW_PROG = common dso_local global i64 0, align 8
@APCI3501_TCW_TIMEBASE = common dso_local global i64 0, align 8
@APCI3501_TCW_RELOAD_VALUE = common dso_local global i64 0, align 8
@ADDIDATA_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3501_ConfigTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @current, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ADDIDATA_WATCHDOG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %4
  %19 = load i32, i32* @ADDIDATA_WATCHDOG, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outl(i32 0, i64 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %18
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outl(i32 2, i64 %41)
  br label %52

43:                                               ; preds = %18
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outl(i32 0, i64 %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* @APCI3501_TCW_TIMEBASE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outl(i32 %55, i64 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* @APCI3501_TCW_RELOAD_VALUE, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outl(i32 %66, i64 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @inl(i64 %81)
  %83 = sext i32 %82 to i64
  %84 = or i64 %83, 4294449632
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outl(i32 %86, i64 %93)
  br label %195

95:                                               ; preds = %4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ADDIDATA_TIMER, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %194

101:                                              ; preds = %95
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @inl(i64 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = and i64 %111, 4294965758
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outl(i32 %114, i64 %121)
  %123 = load i32, i32* @ADDIDATA_TIMER, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %139

130:                                              ; preds = %101
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @outl(i32 2, i64 %137)
  br label %148

139:                                              ; preds = %101
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outl(i32 0, i64 %146)
  br label %148

148:                                              ; preds = %139, %130
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i64, i64* @APCI3501_TCW_TIMEBASE, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outl(i32 %151, i64 %158)
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i64, i64* @APCI3501_TCW_RELOAD_VALUE, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @outl(i32 %162, i64 %169)
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @inl(i64 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = zext i32 %179 to i64
  %181 = and i64 %180, 4294384098
  %182 = or i64 %181, 16384
  %183 = or i64 %182, 16
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %190 = add nsw i64 %188, %189
  %191 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @outl(i32 %185, i64 %192)
  br label %194

194:                                              ; preds = %148, %95
  br label %195

195:                                              ; preds = %194, %52
  %196 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  ret i32 %198
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
