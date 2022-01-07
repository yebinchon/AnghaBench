; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_GetTimerProgressStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_GetTimerProgressStatus.c"
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
@.str = private unnamed_addr constant [20 x i8] c"ProgressStatus : %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_GetTimerProgressStatus(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %96

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 4294901760
  %25 = load i32, i32* @APCI1710_82X54_TIMER, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %14
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 2
  br i1 %31, label %32, label %92

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %90

48:                                               ; preds = %32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 2, %50
  %52 = or i32 %51, 224
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 12
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = mul nsw i32 64, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = call i32 @outl(i32 %52, i64 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 16
  %69 = load i8, i8* %7, align 1
  %70 = zext i8 %69 to i32
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = load i8, i8* %6, align 1
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 64, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %73, %77
  %79 = call i32 @inl(i64 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = lshr i32 %80, 8
  %82 = trunc i32 %81 to i8
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 1
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %8, align 8
  store i8 %85, i8* %86, align 1
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 zeroext %88)
  br label %91

90:                                               ; preds = %32
  store i32 -5, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %48
  br label %93

92:                                               ; preds = %28
  store i32 -3, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %91
  br label %95

94:                                               ; preds = %14
  store i32 -4, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %97

96:                                               ; preds = %4
  store i32 -2, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %95
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
