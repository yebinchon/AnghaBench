; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewControllerInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewControllerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i32, i64, %struct.TYPE_16__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@DAC960_ImmediateCommand = common dso_local global i32 0, align 4
@DAC960_V2_IOCTL = common dso_local global i32 0, align 4
@DAC960_V2_GetControllerInfo = common dso_local global i32 0, align 4
@DAC960_V2_NormalCompletion = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @DAC960_V2_NewControllerInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_V2_NewControllerInfo(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %7 = call %struct.TYPE_24__* @DAC960_AllocateCommand(%struct.TYPE_23__* %6)
  store %struct.TYPE_24__* %7, %struct.TYPE_24__** %3, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %4, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = call i32 @DAC960_V2_ClearCommand(%struct.TYPE_24__* %11)
  %13 = load i32, i32* @DAC960_ImmediateCommand, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @DAC960_V2_IOCTL, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @DAC960_V2_GetControllerInfo, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  store i32 %41, i32* %48, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_24__* %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %5, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_24__* %66)
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local %struct.TYPE_24__* @DAC960_AllocateCommand(%struct.TYPE_23__*) #1

declare dso_local i32 @DAC960_V2_ClearCommand(%struct.TYPE_24__*) #1

declare dso_local i32 @DAC960_ExecuteCommand(%struct.TYPE_24__*) #1

declare dso_local i32 @DAC960_DeallocateCommand(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
