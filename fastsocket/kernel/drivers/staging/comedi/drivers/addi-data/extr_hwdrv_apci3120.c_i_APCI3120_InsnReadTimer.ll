; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_InsnReadTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_InsnReadTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI3120_WATCHDOG = common dso_local global i64 0, align 8
@APCI3120_TIMER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"\0Aread:timer2  not configured \00", align 1
@APCI3120_SELECT_TIMER_2_LOW_WORD = common dso_local global i32 0, align 4
@APCI3120_TIMER_CRT0 = common dso_local global i64 0, align 8
@APCI3120_TIMER_VALUE = common dso_local global i64 0, align 8
@APCI3120_SELECT_TIMER_2_HIGH_WORD = common dso_local global i32 0, align 4
@APCI3120_RD_STATUS = common dso_local global i64 0, align 8
@APCI3120_FC_TIMER = common dso_local global i16 0, align 2
@APCI3120_TIMER_STATUS_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_InsnReadTimer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @APCI3120_WATCHDOG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @APCI3120_TIMER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %26 = call i32 @comedi_error(%struct.comedi_device* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %18, %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI3120_TIMER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %27
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 240
  %38 = load i32, i32* @APCI3120_SELECT_TIMER_2_LOW_WORD, align 4
  %39 = or i32 %37, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %9, align 1
  %41 = load i8, i8* %9, align 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @APCI3120_TIMER_CRT0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i8 zeroext %41, i64 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @APCI3120_TIMER_VALUE, align 8
  %52 = add nsw i64 %50, %51
  %53 = call zeroext i16 @inw(i64 %52)
  store i16 %53, i16* %10, align 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 240
  %58 = load i32, i32* @APCI3120_SELECT_TIMER_2_HIGH_WORD, align 4
  %59 = or i32 %57, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %9, align 1
  %61 = load i8, i8* %9, align 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @APCI3120_TIMER_CRT0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i8 zeroext %61, i64 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @APCI3120_TIMER_VALUE, align 8
  %72 = add nsw i64 %70, %71
  %73 = call zeroext i16 @inw(i64 %72)
  store i16 %73, i16* %11, align 2
  %74 = load i16, i16* %10, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* %11, align 2
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, 16
  %79 = or i32 %75, %78
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %79, i32* %81, align 4
  br label %112

82:                                               ; preds = %27
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @APCI3120_RD_STATUS, align 8
  %87 = add nsw i64 %85, %86
  %88 = call zeroext i16 @inw(i64 %87)
  store i16 %88, i16* %12, align 2
  %89 = load i16, i16* %12, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @APCI3120_FC_TIMER, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %90, %92
  %94 = ashr i32 %93, 12
  %95 = and i32 %94, 1
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %12, align 2
  %97 = load i16, i16* %12, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %82
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @APCI3120_TIMER_STATUS_REGISTER, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @inb(i64 %105)
  br label %107

107:                                              ; preds = %100, %82
  %108 = load i16, i16* %12, align 2
  %109 = zext i16 %108 to i32
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %33
  %113 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  ret i32 %115
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
