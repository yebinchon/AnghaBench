; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_ReportControllerConfiguration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_ReportControllerConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Configuring Mylex %s PCI RAID Controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"  Firmware Version: %s, Channels: %d, Memory Size: %dMB\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"  PCI Bus: %d, Device: %d, Function: %d, I/O Address: \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Unassigned\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"  PCI Address: 0x%X mapped at 0x%lX, IRQ Channel: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"  Controller Queue Depth: %d, Maximum Blocks per Command: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"  Driver Queue Depth: %d, Scatter/Gather Limit: %d of %d Segments\0A\00", align 1
@DAC960_V1_Controller = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [63 x i8] c"  Stripe Size: %dKB, Segment Size: %dKB, BIOS Geometry: %d/%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"  SAF-TE Enclosure Management Enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @DAC960_ReportControllerConfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_ReportControllerConfiguration(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 17
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %3, i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 16
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %8, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %35)
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_6__* %44, i32 %47, i64 %50, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_6__* %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_6__* %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DAC960_V1_Controller, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %43
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_6__* %80, i32 %84, i32 %88, i32 %92, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %79
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = call i32 (i8*, %struct.TYPE_6__*, ...) @DAC960_Info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %103, %79
  br label %107

107:                                              ; preds = %106, %43
  ret i32 1
}

declare dso_local i32 @DAC960_Info(i8*, %struct.TYPE_6__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
