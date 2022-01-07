; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_exec_nonemb_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_exec_nonemb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BG_%d : mgmt_exec_nonemb_cmd Failed status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.be_dma_mem*, i8*, i32)* @mgmt_exec_nonemb_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %0, %struct.be_dma_mem* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.be_dma_mem*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_ctrl_info*, align 8
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_sge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 0
  store %struct.be_ctrl_info* %15, %struct.be_ctrl_info** %9, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %17 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %16)
  store %struct.be_mcc_wrb* %17, %struct.be_mcc_wrb** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %19 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %22 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %27 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %13, align 4
  br label %99

31:                                               ; preds = %4
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %33 = call i32 @memset(%struct.be_mcc_wrb* %32, i32 0, i32 4)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %36 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %40 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %39)
  store %struct.be_sge* %40, %struct.be_sge** %11, align 8
  %41 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %42 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %43 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %41, i32 %44, i32 0, i32 1)
  %46 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %47 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @upper_32_bits(i32 %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.be_sge*, %struct.be_sge** %11, align 8
  %52 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %54 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.be_sge*, %struct.be_sge** %11, align 8
  %59 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %61 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.be_sge*, %struct.be_sge** %11, align 8
  %65 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %67 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %66)
  %68 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %69 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %74 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %71, i32 %72, i32* null, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %31
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %83 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @beiscsi_log(%struct.beiscsi_hba* %80, i32 %81, i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %13, align 4
  br label %99

88:                                               ; preds = %31
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %94 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @memcpy(i8* %92, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %88
  br label %99

99:                                               ; preds = %98, %79, %25
  %100 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %101 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %104 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %107 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %110 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pci_free_consistent(i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, i32*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
