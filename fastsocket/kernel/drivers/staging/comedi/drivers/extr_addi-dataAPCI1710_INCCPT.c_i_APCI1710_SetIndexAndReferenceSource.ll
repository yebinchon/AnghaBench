; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_SetIndexAndReferenceSource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_SetIndexAndReferenceSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_12__* null, align 8
@APCI1710_INCREMENTAL_COUNTER = common dso_local global i32 0, align 4
@APCI1710_SOURCE_0 = common dso_local global i8 0, align 1
@APCI1710_SOURCE_1 = common dso_local global i8 0, align 1
@APCI1710_INVERT_INDEX_RFERENCE = common dso_local global i32 0, align 4
@APCI1710_DEFAULT_INDEX_RFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"The source selection is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"The module is not a counter module\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"The selected module number is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_SetIndexAndReferenceSource(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %112

11:                                               ; preds = %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 4294901760
  %22 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %109

25:                                               ; preds = %11
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 65535
  %35 = icmp sge i32 %34, 12597
  br i1 %35, label %36, label %106

36:                                               ; preds = %25
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @APCI1710_SOURCE_0, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @APCI1710_SOURCE_1, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %103

48:                                               ; preds = %42, %36
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @APCI1710_SOURCE_1, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @APCI1710_INVERT_INDEX_RFERENCE, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %67, i32* %77, align 4
  br label %102

78:                                               ; preds = %48
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load i8, i8* %5, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @APCI1710_DEFAULT_INDEX_RFERENCE, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load i8, i8* %5, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %91, i32* %101, align 4
  br label %102

102:                                              ; preds = %78, %54
  br label %105

103:                                              ; preds = %42
  %104 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %102
  br label %108

106:                                              ; preds = %25
  %107 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %105
  br label %111

109:                                              ; preds = %11
  %110 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %108
  br label %114

112:                                              ; preds = %3
  %113 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %111
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
