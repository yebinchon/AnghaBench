; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_get_boot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_get_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.be_cmd_get_session_resp = type { i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_get_session_resp*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"BM_%d : No boot session\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"BM_%d : Failed to allocate memory forbeiscsi_get_session_info\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"BM_%d : beiscsi_get_session_info Failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"BM_%d : beiscsi_get_session_info Failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_get_boot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_get_boot_info(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_cmd_get_session_resp*, align 8
  %5 = alloca %struct.be_dma_mem, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = call i32 @be_mgmt_get_boot_shandle(%struct.beiscsi_hba* %11, i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %19 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @beiscsi_log(%struct.beiscsi_hba* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %95

23:                                               ; preds = %1
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 0
  %29 = call %struct.be_cmd_get_session_resp* @pci_alloc_consistent(i32 %27, i32 4, i32* %28)
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 1
  store %struct.be_cmd_get_session_resp* %29, %struct.be_cmd_get_session_resp** %30, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 1
  %32 = load %struct.be_cmd_get_session_resp*, %struct.be_cmd_get_session_resp** %31, align 8
  %33 = icmp eq %struct.be_cmd_get_session_resp* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %38 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @beiscsi_log(%struct.beiscsi_hba* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %95

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 1
  %45 = load %struct.be_cmd_get_session_resp*, %struct.be_cmd_get_session_resp** %44, align 8
  %46 = call i32 @memset(%struct.be_cmd_get_session_resp* %45, i32 0, i32 4)
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mgmt_get_session_info(%struct.beiscsi_hba* %47, i32 %48, %struct.be_dma_mem* %5)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %56 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @beiscsi_log(%struct.beiscsi_hba* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %82

59:                                               ; preds = %43
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 1
  %63 = load %struct.be_cmd_get_session_resp*, %struct.be_cmd_get_session_resp** %62, align 8
  %64 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %60, i32 %61, i32* null, %struct.be_cmd_get_session_resp* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %71 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @beiscsi_log(%struct.beiscsi_hba* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %82

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 1
  %76 = load %struct.be_cmd_get_session_resp*, %struct.be_cmd_get_session_resp** %75, align 8
  store %struct.be_cmd_get_session_resp* %76, %struct.be_cmd_get_session_resp** %4, align 8
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %78 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %77, i32 0, i32 1
  %79 = load %struct.be_cmd_get_session_resp*, %struct.be_cmd_get_session_resp** %4, align 8
  %80 = getelementptr inbounds %struct.be_cmd_get_session_resp, %struct.be_cmd_get_session_resp* %79, i32 0, i32 0
  %81 = call i32 @memcpy(i32* %78, i32* %80, i32 4)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %74, %67, %52
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %84 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 1
  %90 = load %struct.be_cmd_get_session_resp*, %struct.be_cmd_get_session_resp** %89, align 8
  %91 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pci_free_consistent(i32 %86, i32 %88, %struct.be_cmd_get_session_resp* %90, i32 %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %82, %34, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @be_mgmt_get_boot_shandle(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local %struct.be_cmd_get_session_resp* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.be_cmd_get_session_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_session_info(%struct.beiscsi_hba*, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, i32*, %struct.be_cmd_get_session_resp*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.be_cmd_get_session_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
