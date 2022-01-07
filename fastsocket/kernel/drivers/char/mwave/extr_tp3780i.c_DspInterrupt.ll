; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_tp3780i.c_DspInterrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_tp3780i.c_DspInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i16 }

@mwave_s_mdd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TRACE_TP3780I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tp3780i::DspInterrupt entry irq %x dev_id %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"tp3780i::DspInterrupt, return from dsp3780i_GetIPCSource, usIPCSource %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"tp3780i::DspInterrupt usPCNum %x usIPCSource %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"tp3780i::DspInterrupt usIntCount %x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"tp3780i::DspInterrupt, waking up usPCNum %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"tp3780i::DspInterrupt, no one waiting for IPC %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"tp3780i::DspInterrupt, return false from dsp3780i_GetIPCSource\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"tp3780i::DspInterrupt exit\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @DspInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DspInterrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_8__* @mwave_s_mdd, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %7, align 2
  store i16 0, i16* %8, align 2
  %17 = load i32, i32* @TRACE_TP3780I, align 4
  %18 = load i32, i32* %3, align 4
  %19 = trunc i32 %18 to i16
  %20 = load i8*, i8** %4, align 8
  %21 = ptrtoint i8* %20 to i16
  %22 = call i32 @PRINTK_3(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i16 zeroext %19, i16 zeroext %21)
  %23 = load i16, i16* %7, align 2
  %24 = call i64 @dsp3780I_GetIPCSource(i16 zeroext %23, i16* %8)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %139

26:                                               ; preds = %2
  %27 = load i32, i32* @TRACE_TP3780I, align 4
  %28 = load i16, i16* %8, align 2
  %29 = call i32 @PRINTK_2(i32 %27, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %28)
  store i16 1, i16* %9, align 2
  store i16 1, i16* %10, align 2
  br label %30

30:                                               ; preds = %135, %26
  %31 = load i16, i16* %10, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp sle i32 %32, 16
  br i1 %33, label %34, label %138

34:                                               ; preds = %30
  %35 = load i16, i16* %8, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %9, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %125

41:                                               ; preds = %34
  %42 = load i16, i16* %9, align 2
  %43 = zext i16 %42 to i32
  %44 = xor i32 %43, -1
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, %44
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %8, align 2
  %49 = load i32, i32* @TRACE_TP3780I, align 4
  %50 = load i16, i16* %10, align 2
  %51 = load i16, i16* %8, align 2
  %52 = call i32 @PRINTK_3(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %50, i16 zeroext %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i16, i16* %10, align 2
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %41
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i16, i16* %10, align 2
  %69 = zext i16 %68 to i32
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %64, %41
  %75 = load i32, i32* @TRACE_TP3780I, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i16, i16* %10, align 2
  %80 = zext i16 %79 to i32
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = trunc i32 %85 to i16
  %87 = call i32 @PRINTK_2(i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i16, i16* %10, align 2
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TRUE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %74
  %101 = load i32, i32* @TRACE_TP3780I, align 4
  %102 = load i16, i16* %10, align 2
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %103, 1
  %105 = trunc i32 %104 to i16
  %106 = call i32 @PRINTK_2(i32 %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i16, i16* %10, align 2
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = call i32 @wake_up_interruptible(i32* %115)
  br label %124

117:                                              ; preds = %74
  %118 = load i32, i32* @TRACE_TP3780I, align 4
  %119 = load i16, i16* %10, align 2
  %120 = zext i16 %119 to i32
  %121 = sub nsw i32 %120, 1
  %122 = trunc i32 %121 to i16
  %123 = call i32 @PRINTK_2(i32 %118, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %122)
  br label %124

124:                                              ; preds = %117, %100
  br label %125

125:                                              ; preds = %124, %34
  %126 = load i16, i16* %8, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %138

130:                                              ; preds = %125
  %131 = load i16, i16* %9, align 2
  %132 = zext i16 %131 to i32
  %133 = shl i32 %132, 1
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %9, align 2
  br label %135

135:                                              ; preds = %130
  %136 = load i16, i16* %10, align 2
  %137 = add i16 %136, 1
  store i16 %137, i16* %10, align 2
  br label %30

138:                                              ; preds = %129, %30
  br label %142

139:                                              ; preds = %2
  %140 = load i32, i32* @TRACE_TP3780I, align 4
  %141 = call i32 @PRINTK_1(i32 %140, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %138
  %143 = load i32, i32* @TRACE_TP3780I, align 4
  %144 = call i32 @PRINTK_1(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %145
}

declare dso_local i32 @PRINTK_3(i32, i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i64 @dsp3780I_GetIPCSource(i16 zeroext, i16*) #1

declare dso_local i32 @PRINTK_2(i32, i8*, i16 zeroext) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @PRINTK_1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
