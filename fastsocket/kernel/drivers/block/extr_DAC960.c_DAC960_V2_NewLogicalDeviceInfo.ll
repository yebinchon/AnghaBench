; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewLogicalDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewLogicalDeviceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i32, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i16 }
%struct.TYPE_18__ = type { i32, i32 }

@DAC960_ImmediateCommand = common dso_local global i32 0, align 4
@DAC960_V2_IOCTL = common dso_local global i32 0, align 4
@DAC960_V2_GetLogicalDeviceInfoValid = common dso_local global i32 0, align 4
@DAC960_V2_NormalCompletion = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i16)* @DAC960_V2_NewLogicalDeviceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_V2_NewLogicalDeviceInfo(%struct.TYPE_26__* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %9 = call %struct.TYPE_17__* @DAC960_AllocateCommand(%struct.TYPE_26__* %8)
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = call i32 @DAC960_V2_ClearCommand(%struct.TYPE_17__* %13)
  %15 = load i32, i32* @DAC960_ImmediateCommand, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @DAC960_V2_IOCTL, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i16, i16* %4, align 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  store i16 %33, i16* %37, align 4
  %38 = load i32, i32* @DAC960_V2_GetLogicalDeviceInfoValid, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_17__* %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %7, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_17__* %70)
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local %struct.TYPE_17__* @DAC960_AllocateCommand(%struct.TYPE_26__*) #1

declare dso_local i32 @DAC960_V2_ClearCommand(%struct.TYPE_17__*) #1

declare dso_local i32 @DAC960_ExecuteCommand(%struct.TYPE_17__*) #1

declare dso_local i32 @DAC960_DeallocateCommand(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
