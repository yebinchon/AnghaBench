; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_alloc_cmd_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_alloc_cmd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BG_%d : Failed to allocate memory for if info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32)* @mgmt_alloc_cmd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %0, %struct.be_dma_mem* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %16 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %15, i32 0, i32 2
  %17 = call i32 @pci_alloc_consistent(i32 %13, i32 %14, i32* %16)
  %18 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %19 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %28 = call i32 @beiscsi_log(%struct.beiscsi_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memset(i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @be_cmd_hdr_prepare(i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %31, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
