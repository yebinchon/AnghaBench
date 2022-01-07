; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_Write16BitCounterValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_Write16BitCounterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"The selected 16-Bit counter parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_Write16BitCounterValue(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %57

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %54

25:                                               ; preds = %13
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 16, %32
  %34 = shl i32 %30, %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 8
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = mul nsw i32 64, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = call i32 @outl(i32 %34, i64 %49)
  br label %53

51:                                               ; preds = %25
  %52 = call i32 @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %29
  br label %56

54:                                               ; preds = %13
  %55 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %53
  br label %59

57:                                               ; preds = %4
  %58 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
