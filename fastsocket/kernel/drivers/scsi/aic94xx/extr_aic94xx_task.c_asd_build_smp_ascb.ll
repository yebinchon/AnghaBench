; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_build_smp_ascb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_build_smp_ascb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.scb*, %struct.asd_ha_struct* }
%struct.scb = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.asd_ha_struct = type { i32 }
%struct.sas_task = type { %struct.TYPE_9__, %struct.domain_device* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.domain_device = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@INITIATE_SMP_TASK = common dso_local global i32 0, align 4
@asd_task_tasklet_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ascb*, %struct.sas_task*, i32)* @asd_build_smp_ascb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_build_smp_ascb(%struct.asd_ascb* %0, %struct.sas_task* %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_ha_struct*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.scb*, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %11 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %10, i32 0, i32 2
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %11, align 8
  store %struct.asd_ha_struct* %12, %struct.asd_ha_struct** %7, align 8
  %13 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 1
  %15 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  store %struct.domain_device* %15, %struct.domain_device** %8, align 8
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %17 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %23 = call i32 @pci_map_sg(i32 %18, i32* %21, i32 1, i32 %22)
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %25 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %28 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %31 = call i32 @pci_map_sg(i32 %26, i32* %29, i32 1, i32 %30)
  %32 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %33 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %32, i32 0, i32 1
  %34 = load %struct.scb*, %struct.scb** %33, align 8
  store %struct.scb* %34, %struct.scb** %9, align 8
  %35 = load i32, i32* @INITIATE_SMP_TASK, align 4
  %36 = load %struct.scb*, %struct.scb** %9, align 8
  %37 = getelementptr inbounds %struct.scb, %struct.scb* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scb*, %struct.scb** %9, align 8
  %43 = getelementptr inbounds %struct.scb, %struct.scb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %46 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = call i64 @sg_dma_address(i32* %47)
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le64(i32 %49)
  %51 = load %struct.scb*, %struct.scb** %9, align 8
  %52 = getelementptr inbounds %struct.scb, %struct.scb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %56 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = call i64 @sg_dma_len(i32* %57)
  %59 = sub nsw i64 %58, 4
  %60 = call i8* @cpu_to_le32(i64 %59)
  %61 = load %struct.scb*, %struct.scb** %9, align 8
  %62 = getelementptr inbounds %struct.scb, %struct.scb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %66 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i64 @sg_dma_address(i32* %67)
  %69 = trunc i64 %68 to i32
  %70 = call i8* @cpu_to_le64(i32 %69)
  %71 = load %struct.scb*, %struct.scb** %9, align 8
  %72 = getelementptr inbounds %struct.scb, %struct.scb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  %75 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %76 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i64 @sg_dma_len(i32* %77)
  %79 = sub nsw i64 %78, 4
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = load %struct.scb*, %struct.scb** %9, align 8
  %82 = getelementptr inbounds %struct.scb, %struct.scb* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i8* %80, i8** %84, align 8
  %85 = call i8* @cpu_to_le16(i32 65535)
  %86 = load %struct.scb*, %struct.scb** %9, align 8
  %87 = getelementptr inbounds %struct.scb, %struct.scb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %90 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i8* @cpu_to_le16(i32 %92)
  %94 = load %struct.scb*, %struct.scb** %9, align 8
  %95 = getelementptr inbounds %struct.scb, %struct.scb* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load i32, i32* @asd_task_tasklet_complete, align 4
  %98 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %99 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret i32 0
}

declare dso_local i32 @pci_map_sg(i32, i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @sg_dma_address(i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_len(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
