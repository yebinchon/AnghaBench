; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_reg_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"********DAS1600 REGISTER DUMP********\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"DAS16_MUX: %x\0A\00", align 1
@DAS16_MUX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"DAS16_DIO: %x\0A\00", align 1
@DAS16_DIO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"DAS16_STATUS: %x\0A\00", align 1
@DAS16_STATUS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"DAS16_CONTROL: %x\0A\00", align 1
@DAS16_CONTROL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"DAS16_PACER: %x\0A\00", align 1
@DAS16_PACER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"DAS16_GAIN: %x\0A\00", align 1
@DAS16_GAIN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"DAS16_CNTR_CONTROL: %x\0A\00", align 1
@DAS16_CNTR_CONTROL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"DAS1600_CONV: %x\0A\00", align 1
@DAS1600_CONV = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"DAS1600_BURST: %x\0A\00", align 1
@DAS1600_BURST = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"DAS1600_ENABLE: %x\0A\00", align 1
@DAS1600_ENABLE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"DAS1600_STATUS_B: %x\0A\00", align 1
@DAS1600_STATUS_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @reg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_dump(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DAS16_MUX, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  %10 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DAS16_DIO, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  %17 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DAS16_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb(i64 %22)
  %24 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAS16_CONTROL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inb(i64 %29)
  %31 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DAS16_PACER, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  %38 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DAS16_GAIN, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  %45 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DAS16_CNTR_CONTROL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inb(i64 %50)
  %52 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DAS1600_CONV, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inb(i64 %57)
  %59 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DAS1600_BURST, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @inb(i64 %64)
  %66 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DAS1600_ENABLE, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @inb(i64 %71)
  %73 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DAS1600_STATUS_B, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inb(i64 %78)
  %80 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %79)
  ret void
}

declare dso_local i32 @DEBUG_PRINT(i8*, ...) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
