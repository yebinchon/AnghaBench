; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_dump.c_sas_dump_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_dump.c_sas_dump_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"port%d: class:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"port%d: sas_addr:%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"port%d: attached_sas_addr:%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"port%d: iproto:0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"port%d: tproto:0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"port%d: oob_mode:0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"port%d: num_phys:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_dump_port(%struct.asd_sas_port* %0) #0 {
  %2 = alloca %struct.asd_sas_port*, align 8
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %2, align 8
  %3 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %4 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %7 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %11 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %14 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SAS_ADDR(i32 %15)
  %17 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %19 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %22 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SAS_ADDR(i32 %23)
  %25 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %27 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %30 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %34 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %37 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %41 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %44 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %48 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %51 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
