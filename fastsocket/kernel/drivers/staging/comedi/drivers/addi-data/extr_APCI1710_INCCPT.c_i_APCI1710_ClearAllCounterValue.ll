; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_ClearAllCounterValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_ClearAllCounterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI1710_INCREMENTAL_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No counter module found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_ClearAllCounterValue(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, 4294901760
  %13 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %52, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 4294901760
  %25 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %16
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 4294901760
  %37 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %28
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 4294901760
  %49 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %40, %28, %16, %1
  store i8 0, i8* %3, align 1
  br label %53

53:                                               ; preds = %84, %52
  %54 = load i8, i8* %3, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %87

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i8, i8* %3, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, 4294901760
  %68 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %57
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 16
  %77 = load i8, i8* %3, align 1
  %78 = zext i8 %77 to i32
  %79 = mul nsw i32 64, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = call i32 @outl(i32 1, i64 %81)
  br label %83

83:                                               ; preds = %71, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i8, i8* %3, align 1
  %86 = add i8 %85, 1
  store i8 %86, i8* %3, align 1
  br label %53

87:                                               ; preds = %53
  br label %90

88:                                               ; preds = %40
  %89 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
