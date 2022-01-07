; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V1_SetDeviceState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V1_SetDeviceState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8, i8, i64, i32, i32 }

@DAC960_V1_StartDevice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s of Physical Device %d:%d Succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s of Physical Device %d:%d Failed - Unable to Start Device\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%s of Physical Device %d:%d Failed - No Device at Address\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"%s of Physical Device %d:%d Failed - Invalid Channel or Target or Modifier\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%s of Physical Device %d:%d Failed - Channel Busy\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"%s of Physical Device %d:%d Failed - Unexpected Status %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i8, i8, i32, i8*)* @DAC960_V1_SetDeviceState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_V1_SetDeviceState(i32* %0, %struct.TYPE_10__* %1, i8 zeroext %2, i8 zeroext %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %13, align 8
  %17 = load i32, i32* @DAC960_V1_StartDevice, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 4
  %21 = load i8, i8* %9, align 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i8 %21, i8* %24, align 8
  %25 = load i8, i8* %10, align 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i8 %25, i8* %28, align 1
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_10__* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %72 [
    i32 129, label %42
    i32 128, label %48
    i32 130, label %54
    i32 131, label %60
    i32 132, label %66
  ]

42:                                               ; preds = %6
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %9, align 1
  %46 = load i8, i8* %10, align 1
  %47 = call i32 (i8*, i32*, i8*, i8, i8, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %43, i8* %44, i8 zeroext %45, i8 zeroext %46)
  br label %82

48:                                               ; preds = %6
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %9, align 1
  %52 = load i8, i8* %10, align 1
  %53 = call i32 (i8*, i32*, i8*, i8, i8, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %49, i8* %50, i8 zeroext %51, i8 zeroext %52)
  br label %82

54:                                               ; preds = %6
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %9, align 1
  %58 = load i8, i8* %10, align 1
  %59 = call i32 (i8*, i32*, i8*, i8, i8, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32* %55, i8* %56, i8 zeroext %57, i8 zeroext %58)
  br label %82

60:                                               ; preds = %6
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %9, align 1
  %64 = load i8, i8* %10, align 1
  %65 = call i32 (i8*, i32*, i8*, i8, i8, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32* %61, i8* %62, i8 zeroext %63, i8 zeroext %64)
  br label %82

66:                                               ; preds = %6
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %9, align 1
  %70 = load i8, i8* %10, align 1
  %71 = call i32 (i8*, i32*, i8*, i8, i8, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32* %67, i8* %68, i8 zeroext %69, i8 zeroext %70)
  br label %82

72:                                               ; preds = %6
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i8, i8* %9, align 1
  %76 = load i8, i8* %10, align 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32*, i8*, i8, i8, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32* %73, i8* %74, i8 zeroext %75, i8 zeroext %76, i32 %80)
  br label %82

82:                                               ; preds = %72, %66, %60, %54, %48, %42
  ret void
}

declare dso_local i32 @DAC960_ExecuteCommand(%struct.TYPE_10__*) #1

declare dso_local i32 @DAC960_UserCritical(i8*, i32*, i8*, i8 zeroext, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
