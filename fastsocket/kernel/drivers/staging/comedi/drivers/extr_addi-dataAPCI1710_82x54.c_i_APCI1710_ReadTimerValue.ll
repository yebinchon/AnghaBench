; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_ReadTimerValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_ReadTimerValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_82X54_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timer not initialised see function\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Timer selection wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"The module is not a TIMER module\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_ReadTimerValue(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %88

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, 4294901760
  %24 = load i32, i32* @APCI1710_82X54_TIMER, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %13
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sle i32 %29, 2
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %79

47:                                               ; preds = %31
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 2, %49
  %51 = or i32 %50, 208
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 12
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = mul nsw i32 64, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = call i32 @outl(i32 %51, i64 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i8, i8* %7, align 1
  %68 = zext i8 %67 to i32
  %69 = mul nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = mul nsw i32 64, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = call i32 @inl(i64 %76)
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %81

79:                                               ; preds = %31
  %80 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %47
  br label %84

82:                                               ; preds = %27
  %83 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %81
  br label %87

85:                                               ; preds = %13
  %86 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %84
  br label %90

88:                                               ; preds = %4
  %89 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
