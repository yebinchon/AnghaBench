; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_StartStopWriteTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_StartStopWriteTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_WATCHDOG = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_WATCHDOG = common dso_local global i64 0, align 8
@APCI1564_TCW_PROG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADDIDATA_TIMER = common dso_local global i64 0, align 8
@APCI1564_TIMER = common dso_local global i64 0, align 8
@ADDIDATA_COUNTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_StartStopWriteTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %47 [
    i32 0, label %20
    i32 1, label %29
    i32 2, label %38
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outl(i32 0, i64 %27)
  br label %51

29:                                               ; preds = %16
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outl(i32 1, i64 %36)
  br label %51

38:                                               ; preds = %16
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outl(i32 513, i64 %45)
  br label %51

47:                                               ; preds = %16
  %48 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %183

51:                                               ; preds = %38, %29, %20
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ADDIDATA_TIMER, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %115

58:                                               ; preds = %52
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @APCI1564_TIMER, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inl(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = and i64 %73, 4294965759
  %75 = or i64 %74, 1
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @APCI1564_TIMER, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outl(i32 %77, i64 %84)
  br label %114

86:                                               ; preds = %58
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @APCI1564_TIMER, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @inl(i64 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = and i64 %101, 4294965758
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @APCI1564_TIMER, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outl(i32 %104, i64 %111)
  br label %113

113:                                              ; preds = %91, %86
  br label %114

114:                                              ; preds = %113, %63
  br label %115

115:                                              ; preds = %114, %52
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ADDIDATA_COUNTER, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %179

121:                                              ; preds = %115
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = mul nsw i32 %128, 32
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %124, %130
  %132 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @inl(i64 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %145

139:                                              ; preds = %121
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = and i64 %141, 4294965759
  %143 = or i64 %142, 1
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  br label %164

145:                                              ; preds = %121
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  br label %163

151:                                              ; preds = %145
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = zext i32 %157 to i64
  %159 = and i64 %158, 4294965759
  %160 = or i64 %159, 1024
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %156, %151
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %139
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 1
  %173 = mul nsw i32 %172, 32
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %168, %174
  %176 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @outl(i32 %165, i64 %177)
  br label %179

179:                                              ; preds = %164, %115
  %180 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %181 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %179, %47
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
