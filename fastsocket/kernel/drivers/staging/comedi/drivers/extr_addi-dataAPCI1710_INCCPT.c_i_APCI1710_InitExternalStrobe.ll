; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InitExternalStrobe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InitExternalStrobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_14__* null, align 8
@APCI1710_HIGH = common dso_local global i8 0, align 1
@APCI1710_LOW = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [42 x i8] c"External strobe level parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"External strobe selection is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InitExternalStrobe(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %100

13:                                               ; preds = %4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %97

25:                                               ; preds = %13
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %94

33:                                               ; preds = %29, %25
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @APCI1710_HIGH, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @APCI1710_LOW, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65535
  %55 = icmp sge i32 %54, 12597
  br i1 %55, label %56, label %91

56:                                               ; preds = %45, %33
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 16, %69
  %71 = sub nsw i32 255, %70
  %72 = and i32 %67, %71
  %73 = load i8, i8* %8, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, 1
  %76 = load i8, i8* %7, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 4, %77
  %79 = shl i32 %75, %78
  %80 = or i32 %72, %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load i8, i8* %6, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %80, i32* %90, align 4
  br label %93

91:                                               ; preds = %45, %39
  %92 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %56
  br label %96

94:                                               ; preds = %29
  %95 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %93
  br label %99

97:                                               ; preds = %13
  %98 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %96
  br label %102

100:                                              ; preds = %4
  %101 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
