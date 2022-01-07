; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_InitCompareLogic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_InitCompareLogic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InitCompareLogic(%struct.comedi_device* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %48

11:                                               ; preds = %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %45

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 28
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nsw i32 64, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = call i32 @outl(i32 %24, i64 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %47

45:                                               ; preds = %11
  %46 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -3, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %23
  br label %50

48:                                               ; preds = %3
  %49 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -2, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
