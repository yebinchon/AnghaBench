; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_GetChronoProgressStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_GetChronoProgressStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_CHRONOMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Chronometer not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"The module is not a Chronometer module\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_GetChronoProgressStatus(%struct.comedi_device* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %77

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, 4294901760
  %23 = load i32, i32* @APCI1710_CHRONOMETER, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %12
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %71

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 8
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = mul nsw i32 64, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = call i32 @inl(i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i8*, i8** %6, align 8
  store i8 3, i8* %53, align 1
  br label %70

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  store i8 2, i8* %59, align 1
  br label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  store i8 1, i8* %65, align 1
  br label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %52
  br label %73

71:                                               ; preds = %26
  %72 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %70
  br label %76

74:                                               ; preds = %12
  %75 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %7, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %79

77:                                               ; preds = %3
  %78 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
