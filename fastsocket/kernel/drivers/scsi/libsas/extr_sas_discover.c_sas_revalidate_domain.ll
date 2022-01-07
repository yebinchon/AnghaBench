; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_revalidate_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_revalidate_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.sas_discovery_event = type { %struct.asd_sas_port* }
%struct.asd_sas_port = type { i32, i64, %struct.TYPE_2__, %struct.sas_ha_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.sas_ha_struct = type { i32, i32 }

@SAS_HA_ATA_EH_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"REVALIDATION DEFERRED on port %d, pid:%d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"REVALIDATING DOMAIN on port %d, pid:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_revalidate_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_revalidate_domain(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_discovery_event*, align 8
  %5 = alloca %struct.asd_sas_port*, align 8
  %6 = alloca %struct.sas_ha_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct* %7)
  store %struct.sas_discovery_event* %8, %struct.sas_discovery_event** %4, align 8
  %9 = load %struct.sas_discovery_event*, %struct.sas_discovery_event** %4, align 8
  %10 = getelementptr inbounds %struct.sas_discovery_event, %struct.sas_discovery_event* %9, i32 0, i32 0
  %11 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  store %struct.asd_sas_port* %11, %struct.asd_sas_port** %5, align 8
  %12 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %13 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %12, i32 0, i32 3
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  store %struct.sas_ha_struct* %14, %struct.sas_ha_struct** %6, align 8
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %25 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @task_pid_nr(i32 %27)
  %29 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %59

30:                                               ; preds = %1
  %31 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  %32 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %33 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %31, i32* %34)
  %36 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %37 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @current, align 4
  %40 = call i32 @task_pid_nr(i32 %39)
  %41 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %43 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %48 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @sas_ex_revalidate_domain(i64 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %30
  %52 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %53 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @current, align 4
  %56 = call i32 @task_pid_nr(i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %23
  %60 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %61 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  ret void
}

declare dso_local %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sas_ex_revalidate_domain(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
