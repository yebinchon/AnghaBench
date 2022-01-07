; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_ReadDeviceConfiguration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_ReadDeviceConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__**, %struct.TYPE_15__**, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8, i8, i8, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PHYSICAL DEVICE ALLOCATION\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SERIAL NUMBER ALLOCATION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @DAC960_V2_ReadDeviceConfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_V2_ReadDeviceConfiguration(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i16 0, i16* %7, align 2
  br label %12

12:                                               ; preds = %1, %90
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %10, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = load i8, i8* %4, align 1
  %23 = load i8, i8* %5, align 1
  %24 = load i8, i8* %6, align 1
  %25 = call i32 @DAC960_V2_NewPhysicalDeviceInfo(%struct.TYPE_16__* %21, i8 zeroext %22, i8 zeroext %23, i8 zeroext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %12
  br label %95

28:                                               ; preds = %12
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.TYPE_15__* @kmalloc(i32 8, i32 %29)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %9, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = icmp eq %struct.TYPE_15__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = call i32 @DAC960_Failure(%struct.TYPE_16__* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %96

36:                                               ; preds = %28
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %40, align 8
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %41, i64 %43
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = call i32 @memcpy(%struct.TYPE_15__* %45, %struct.TYPE_15__* %46, i32 8)
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.TYPE_15__* @kmalloc(i32 8, i32 %48)
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %11, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %51 = icmp eq %struct.TYPE_15__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = call i32 @kfree(%struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = call i32 @DAC960_Failure(%struct.TYPE_16__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %2, align 4
  br label %96

57:                                               ; preds = %36
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %61, align 8
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %62, i64 %64
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 4
  store i8 %68, i8* %4, align 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %5, align 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 2
  store i8 %74, i8* %6, align 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = load i8, i8* %4, align 1
  %77 = load i8, i8* %5, align 1
  %78 = load i8, i8* %6, align 1
  %79 = call i32 @DAC960_V2_NewInquiryUnitSerialNumber(%struct.TYPE_16__* %75, i8 zeroext %76, i8 zeroext %77, i8 zeroext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %57
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = call i32 @memset(%struct.TYPE_15__* %82, i32 0, i32 8)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  store i32 31, i32* %85, align 4
  br label %90

86:                                               ; preds = %57
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %89 = call i32 @memcpy(%struct.TYPE_15__* %87, %struct.TYPE_15__* %88, i32 8)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i16, i16* %7, align 2
  %92 = add i16 %91, 1
  store i16 %92, i16* %7, align 2
  %93 = load i8, i8* %6, align 1
  %94 = add i8 %93, 1
  store i8 %94, i8* %6, align 1
  br label %12

95:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %52, %33
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @DAC960_V2_NewPhysicalDeviceInfo(%struct.TYPE_16__*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local %struct.TYPE_15__* @kmalloc(i32, i32) #1

declare dso_local i32 @DAC960_Failure(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_15__*) #1

declare dso_local i32 @DAC960_V2_NewInquiryUnitSerialNumber(%struct.TYPE_16__*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
