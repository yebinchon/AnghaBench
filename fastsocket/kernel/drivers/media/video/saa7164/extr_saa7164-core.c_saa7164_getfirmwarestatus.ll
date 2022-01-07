; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-core.c_saa7164_getfirmwarestatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-core.c_saa7164_getfirmwarestatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { %struct.saa7164_fw_status }
%struct.saa7164_fw_status = type { i8*, i8*, i8*, i8*, i8*, i8* }

@SAA_DEVICE_SYSINIT_STATUS = common dso_local global i32 0, align 4
@SAA_DEVICE_SYSINIT_MODE = common dso_local global i32 0, align 4
@SAA_DEVICE_SYSINIT_SPEC = common dso_local global i32 0, align 4
@SAA_DEVICE_SYSINIT_INST = common dso_local global i32 0, align 4
@SAA_DEVICE_SYSINIT_CPULOAD = common dso_local global i32 0, align 4
@SAA_DEVICE_SYSINIT_REMAINHEAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Firmware status:\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" .status     = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" .mode       = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" .spec       = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" .inst       = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" .cpuload    = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" .remainheap = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7164_getfirmwarestatus(%struct.saa7164_dev* %0) #0 {
  %2 = alloca %struct.saa7164_dev*, align 8
  %3 = alloca %struct.saa7164_fw_status*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %2, align 8
  %4 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %5 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %4, i32 0, i32 0
  store %struct.saa7164_fw_status* %5, %struct.saa7164_fw_status** %3, align 8
  %6 = load i32, i32* @SAA_DEVICE_SYSINIT_STATUS, align 4
  %7 = call i8* @saa7164_readl(i32 %6)
  %8 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %9 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %9, i32 0, i32 5
  store i8* %7, i8** %10, align 8
  %11 = load i32, i32* @SAA_DEVICE_SYSINIT_MODE, align 4
  %12 = call i8* @saa7164_readl(i32 %11)
  %13 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %14 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %14, i32 0, i32 4
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @SAA_DEVICE_SYSINIT_SPEC, align 4
  %17 = call i8* @saa7164_readl(i32 %16)
  %18 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %19 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %19, i32 0, i32 3
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @SAA_DEVICE_SYSINIT_INST, align 4
  %22 = call i8* @saa7164_readl(i32 %21)
  %23 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %24 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @SAA_DEVICE_SYSINIT_CPULOAD, align 4
  %27 = call i8* @saa7164_readl(i32 %26)
  %28 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %29 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @SAA_DEVICE_SYSINIT_REMAINHEAP, align 4
  %32 = call i8* @saa7164_readl(i32 %31)
  %33 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %34 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.saa7164_fw_status*, %struct.saa7164_fw_status** %3, align 8
  %38 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %37, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.saa7164_fw_status*, %struct.saa7164_fw_status** %3, align 8
  %42 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.saa7164_fw_status*, %struct.saa7164_fw_status** %3, align 8
  %46 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load %struct.saa7164_fw_status*, %struct.saa7164_fw_status** %3, align 8
  %50 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = load %struct.saa7164_fw_status*, %struct.saa7164_fw_status** %3, align 8
  %54 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load %struct.saa7164_fw_status*, %struct.saa7164_fw_status** %3, align 8
  %58 = getelementptr inbounds %struct.saa7164_fw_status, %struct.saa7164_fw_status* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  ret void
}

declare dso_local i8* @saa7164_readl(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
