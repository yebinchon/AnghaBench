; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_cancel_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_cancel_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_3__*, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { %struct.pmcraid_ioarcb }
%struct.pmcraid_ioarcb = type { i32, i64, i64, i64, i32*, i32, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pmcraid_resource_entry* }
%struct.pmcraid_resource_entry = type { i32 }

@PMCRAID_MAX_CDB_LEN = common dso_local global i32 0, align 4
@SYNC_OVERRIDE = common dso_local global i32 0, align 4
@REQ_TYPE_IOACMD = common dso_local global i32 0, align 4
@PMCRAID_CANCEL_ALL_REQUESTS = common dso_local global i32 0, align 4
@PMCRAID_SYNC_COMPLETE_AFTER_CANCEL = common dso_local global i32 0, align 4
@PMCRAID_REQUEST_SENSE_TIMEOUT = common dso_local global i32 0, align 4
@pmcraid_timeout_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*, i64)* @pmcraid_cancel_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_cancel_all(%struct.pmcraid_cmd* %0, i64 %1) #0 {
  %3 = alloca %struct.pmcraid_cmd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.pmcraid_ioarcb*, align 8
  %7 = alloca %struct.pmcraid_resource_entry*, align 8
  %8 = alloca void (%struct.pmcraid_cmd*)*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %9, i32 0, i32 1
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %5, align 8
  %12 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.pmcraid_ioarcb* %15, %struct.pmcraid_ioarcb** %6, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %19, align 8
  store %struct.pmcraid_resource_entry* %20, %struct.pmcraid_resource_entry** %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, void (%struct.pmcraid_cmd*)* @pmcraid_erp_done, void (%struct.pmcraid_cmd*)* @pmcraid_request_sense
  store void (%struct.pmcraid_cmd*)* %24, void (%struct.pmcraid_cmd*)** %8, align 8
  %25 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %26 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @PMCRAID_MAX_CDB_LEN, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  %30 = load i32, i32* @SYNC_OVERRIDE, align 4
  %31 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %32 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @REQ_TYPE_IOACMD, align 4
  %34 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %35 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @PMCRAID_CANCEL_ALL_REQUESTS, align 4
  %37 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %38 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %42 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @RES_IS_GSCSI(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %2
  %47 = load i32, i32* @PMCRAID_SYNC_COMPLETE_AFTER_CANCEL, align 4
  %48 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %49 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %2
  %53 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %54 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %56 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %58 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %60 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = and i64 %62, -32
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 8
  %65 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %66 = load void (%struct.pmcraid_cmd*)*, void (%struct.pmcraid_cmd*)** %8, align 8
  %67 = load i32, i32* @PMCRAID_REQUEST_SENSE_TIMEOUT, align 4
  %68 = load i32, i32* @pmcraid_timeout_handler, align 4
  %69 = call i32 @pmcraid_send_cmd(%struct.pmcraid_cmd* %65, void (%struct.pmcraid_cmd*)* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local void @pmcraid_erp_done(%struct.pmcraid_cmd*) #1

declare dso_local void @pmcraid_request_sense(%struct.pmcraid_cmd*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @RES_IS_GSCSI(i32) #1

declare dso_local i32 @pmcraid_send_cmd(%struct.pmcraid_cmd*, void (%struct.pmcraid_cmd*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
