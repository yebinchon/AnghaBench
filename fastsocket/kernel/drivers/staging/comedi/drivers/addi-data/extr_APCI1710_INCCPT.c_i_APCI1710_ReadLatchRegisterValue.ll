; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_ReadLatchRegisterValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_ReadLatchRegisterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"The selected latch register parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_ReadLatchRegisterValue(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i32* %3) #0 {
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
  br i1 %12, label %13, label %53

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
  br i1 %24, label %25, label %50

25:                                               ; preds = %13
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %33, %38
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = mul nsw i32 64, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = call i32 @inl(i64 %44)
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  br label %49

47:                                               ; preds = %25
  %48 = call i32 @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %29
  br label %52

50:                                               ; preds = %13
  %51 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %49
  br label %55

53:                                               ; preds = %4
  %54 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
