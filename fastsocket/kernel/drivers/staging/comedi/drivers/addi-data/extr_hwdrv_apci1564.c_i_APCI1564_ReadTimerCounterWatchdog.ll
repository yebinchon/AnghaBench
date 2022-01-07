; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ReadTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ReadTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_WATCHDOG = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_WATCHDOG = common dso_local global i64 0, align 8
@APCI1564_TCW_TRIG_STATUS = common dso_local global i64 0, align 8
@ADDIDATA_TIMER = common dso_local global i64 0, align 8
@APCI1564_TIMER = common dso_local global i64 0, align 8
@ADDIDATA_COUNTER = common dso_local global i64 0, align 8
@APCI1564_TCW_SYNC_ENABLEDISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\0A Invalid Subdevice !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_ReadTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @APCI1564_TCW_TRIG_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inl(i64 %22)
  %24 = and i32 %23, 1
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inl(i64 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  br label %147

35:                                               ; preds = %4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ADDIDATA_TIMER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @APCI1564_TIMER, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @APCI1564_TCW_TRIG_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inl(i64 %48)
  %50 = and i32 %49, 1
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @APCI1564_TIMER, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inl(i64 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  br label %146

61:                                               ; preds = %35
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ADDIDATA_COUNTER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %61
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = mul nsw i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %70, %76
  %78 = load i64, i64* @APCI1564_TCW_SYNC_ENABLEDISABLE, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @inl(i64 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = mul nsw i32 %89, 32
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %85, %91
  %93 = load i64, i64* @APCI1564_TCW_TRIG_STATUS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @inl(i64 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = lshr i32 %96, 1
  %98 = and i32 %97, 1
  %99 = trunc i32 %98 to i8
  %100 = zext i8 %99 to i32
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = lshr i32 %103, 2
  %105 = and i32 %104, 1
  %106 = trunc i32 %105 to i8
  %107 = zext i8 %106 to i32
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = lshr i32 %110, 3
  %112 = and i32 %111, 1
  %113 = trunc i32 %112 to i8
  %114 = zext i8 %113 to i32
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  %118 = lshr i32 %117, 0
  %119 = and i32 %118, 1
  %120 = trunc i32 %119 to i8
  %121 = zext i8 %120 to i32
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  store i32 %121, i32* %123, align 4
  br label %145

124:                                              ; preds = %61
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ADDIDATA_TIMER, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ADDIDATA_COUNTER, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %136, %130, %124
  br label %145

145:                                              ; preds = %144, %67
  br label %146

146:                                              ; preds = %145, %41
  br label %147

147:                                              ; preds = %146, %15
  %148 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  ret i32 %150
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
