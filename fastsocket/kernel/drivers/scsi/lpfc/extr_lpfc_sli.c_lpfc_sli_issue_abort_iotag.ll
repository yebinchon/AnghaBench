; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_abort_iotag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_abort_iotag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i64 }
%struct.lpfc_iocbq = type { i32, i8*, i8*, %struct.TYPE_2__, %struct.lpfc_vport* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_vport = type { i32 }

@IOCB_ERROR = common dso_local global i32 0, align 4
@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@lpfc_ignore_els_cmpl = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_issue_abort_iotag(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %8, align 8
  %14 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %14, i32* %9, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 3
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %22, %3
  store i32 0, i32* %4, align 4
  br label %72

36:                                               ; preds = %28
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %38 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FC_UNLOADING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_ELS_RING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** @lpfc_ignore_els_cmpl, align 8
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %64

60:                                               ; preds = %49
  %61 = load i8*, i8** @lpfc_ignore_els_cmpl, align 8
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %70

65:                                               ; preds = %43, %36
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %67 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %68 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %69 = call i32 @lpfc_sli_abort_iotag_issue(%struct.lpfc_hba* %66, %struct.lpfc_sli_ring* %67, %struct.lpfc_iocbq* %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %35
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @lpfc_sli_abort_iotag_issue(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
