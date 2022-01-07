; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_send_rscn_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_send_rscn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_rscn_event_header = type { i32, i32, i32 }

@ELS_CMD_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"0147 Failed to allocate memory for RSCN event\0A\00", align 1
@FC_REG_RSCN_EVENT = common dso_local global i32 0, align 4
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_iocbq*)* @lpfc_send_rscn_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_send_rscn_event(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_rscn_event_header*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %4, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %5, align 8
  %16 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ELS_CMD_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 12, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.lpfc_rscn_event_header* @kmalloc(i32 %29, i32 %30)
  store %struct.lpfc_rscn_event_header* %31, %struct.lpfc_rscn_event_header** %9, align 8
  %32 = load %struct.lpfc_rscn_event_header*, %struct.lpfc_rscn_event_header** %9, align 8
  %33 = icmp ne %struct.lpfc_rscn_event_header* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @LOG_ELS, align 4
  %38 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %64

39:                                               ; preds = %2
  %40 = load i32, i32* @FC_REG_RSCN_EVENT, align 4
  %41 = load %struct.lpfc_rscn_event_header*, %struct.lpfc_rscn_event_header** %9, align 8
  %42 = getelementptr inbounds %struct.lpfc_rscn_event_header, %struct.lpfc_rscn_event_header* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.lpfc_rscn_event_header*, %struct.lpfc_rscn_event_header** %9, align 8
  %45 = getelementptr inbounds %struct.lpfc_rscn_event_header, %struct.lpfc_rscn_event_header* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.lpfc_rscn_event_header*, %struct.lpfc_rscn_event_header** %9, align 8
  %47 = getelementptr inbounds %struct.lpfc_rscn_event_header, %struct.lpfc_rscn_event_header* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @memcpy(i32 %48, i32* %49, i32 %50)
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %53 = call i32 (...) @fc_get_event_number()
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.lpfc_rscn_event_header*, %struct.lpfc_rscn_event_header** %9, align 8
  %59 = bitcast %struct.lpfc_rscn_event_header* %58 to i8*
  %60 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %61 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %52, i32 %53, i32 %57, i8* %59, i32 %60)
  %62 = load %struct.lpfc_rscn_event_header*, %struct.lpfc_rscn_event_header** %9, align 8
  %63 = call i32 @kfree(%struct.lpfc_rscn_event_header* %62)
  br label %64

64:                                               ; preds = %39, %34
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.lpfc_rscn_event_header* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @kfree(%struct.lpfc_rscn_event_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
