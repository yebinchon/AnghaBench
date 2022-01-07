; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewPhysicalDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewPhysicalDeviceInfo.c"
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
%struct.TYPE_19__ = type { i8, i8, i8 }
%struct.TYPE_18__ = type { i32, i32 }

@DAC960_ImmediateCommand = common dso_local global i32 0, align 4
@DAC960_V2_IOCTL = common dso_local global i32 0, align 4
@DAC960_V2_GetPhysicalDeviceInfoValid = common dso_local global i32 0, align 4
@DAC960_V2_NormalCompletion = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8, i8, i8)* @DAC960_V2_NewPhysicalDeviceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_V2_NewPhysicalDeviceInfo(%struct.TYPE_26__* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %13 = call %struct.TYPE_17__* @DAC960_AllocateCommand(%struct.TYPE_26__* %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %10, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = call i32 @DAC960_V2_ClearCommand(%struct.TYPE_17__* %17)
  %19 = load i32, i32* @DAC960_ImmediateCommand, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @DAC960_V2_IOCTL, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load i8, i8* %8, align 1
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store i8 %37, i8* %41, align 4
  %42 = load i8, i8* %7, align 1
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  store i8 %42, i8* %46, align 1
  %47 = load i8, i8* %6, align 1
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  store i8 %47, i8* %51, align 2
  %52 = load i32, i32* @DAC960_V2_GetPhysicalDeviceInfoValid, align 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  store i32 %59, i32* %66, align 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_17__* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_17__* %84)
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  ret i32 %89
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
