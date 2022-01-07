; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_handle_sli_cfg_ebuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_handle_sli_cfg_ebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.fc_bsg_job = type { i32 }
%struct.lpfc_dmabuf = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2971 SLI_CONFIG buffer (type:x%x)\0A\00", align 1
@mbox_rd = common dso_local global i64 0, align 8
@LPFC_BSG_MBOX_DONE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"2972 SLI_CONFIG rd buffer state mismatch:x%x\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@LPFC_BSG_MBOX_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"2973 SLI_CONFIG wr buffer state mismatch:x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.fc_bsg_job*, %struct.lpfc_dmabuf*)* @lpfc_bsg_handle_sli_cfg_ebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_handle_sli_cfg_ebuf(%struct.lpfc_hba* %0, %struct.fc_bsg_job* %1, %struct.lpfc_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.fc_bsg_job* %1, %struct.fc_bsg_job** %6, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %7, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %10 = load i32, i32* @KERN_INFO, align 4
  %11 = load i32, i32* @LOG_LIBDFC, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @mbox_rd, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %3
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LPFC_BSG_MBOX_DONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_LIBDFC, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %40 = call i32 @lpfc_bsg_mbox_ext_abort(%struct.lpfc_hba* %39)
  %41 = load i32, i32* @EPIPE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %82

43:                                               ; preds = %23
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %45 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %46 = call i32 @lpfc_bsg_read_ebuf_get(%struct.lpfc_hba* %44, %struct.fc_bsg_job* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %52 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %53 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %51, %struct.lpfc_dmabuf* %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %80

55:                                               ; preds = %3
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LPFC_BSG_MBOX_HOST, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* @LOG_LIBDFC, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %72 = call i32 @lpfc_bsg_mbox_ext_abort(%struct.lpfc_hba* %71)
  %73 = load i32, i32* @EPIPE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %82

75:                                               ; preds = %55
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %77 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %78 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %79 = call i32 @lpfc_bsg_write_ebuf_set(%struct.lpfc_hba* %76, %struct.fc_bsg_job* %77, %struct.lpfc_dmabuf* %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %75, %54
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %62, %30
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64) #1

declare dso_local i32 @lpfc_bsg_mbox_ext_abort(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_bsg_read_ebuf_get(%struct.lpfc_hba*, %struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_bsg_write_ebuf_set(%struct.lpfc_hba*, %struct.fc_bsg_job*, %struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
