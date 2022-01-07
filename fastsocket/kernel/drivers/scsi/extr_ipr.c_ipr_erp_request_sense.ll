; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_erp_request_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_erp_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ipr_cmd_pkt }
%struct.ipr_cmd_pkt = type { i32, i32, i32*, i32 }

@IPR_RQTYPE_SCSICDB = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_SYNC_OVERRIDE = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_ULEN_CHK = common dso_local global i32 0, align 4
@IPR_REQUEST_SENSE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPR_IOADL_FLAGS_READ_LAST = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_erp_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_erp_request_sense(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_cmd_pkt*, align 8
  %4 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store %struct.ipr_cmd_pkt* %7, %struct.ipr_cmd_pkt** %3, align 8
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @IPR_IOASC_SENSE_KEY(i32 %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %20 = call i32 @ipr_erp_done(%struct.ipr_cmnd* %19)
  br label %65

21:                                               ; preds = %1
  %22 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %23 = call i32 @ipr_reinit_ipr_cmnd_for_erp(%struct.ipr_cmnd* %22)
  %24 = load i32, i32* @IPR_RQTYPE_SCSICDB, align 4
  %25 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %3, align 8
  %26 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @REQUEST_SENSE, align 4
  %28 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %33 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %3, align 8
  %34 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @IPR_FLAGS_HI_SYNC_OVERRIDE, align 4
  %38 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %3, align 8
  %39 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @IPR_FLAGS_HI_NO_ULEN_CHK, align 4
  %43 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %3, align 8
  %44 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @IPR_REQUEST_SENSE_TIMEOUT, align 4
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %47, %48
  %50 = call i32 @cpu_to_be16(i32 %49)
  %51 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %3, align 8
  %52 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %54 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %55 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %58 = load i32, i32* @IPR_IOADL_FLAGS_READ_LAST, align 4
  %59 = call i32 @ipr_init_ioadl(%struct.ipr_cmnd* %53, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %61 = load i32, i32* @ipr_timeout, align 4
  %62 = load i32, i32* @IPR_REQUEST_SENSE_TIMEOUT, align 4
  %63 = mul nsw i32 %62, 2
  %64 = call i32 @ipr_do_req(%struct.ipr_cmnd* %60, i32 (%struct.ipr_cmnd*)* @ipr_erp_done, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @IPR_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @ipr_erp_done(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_reinit_ipr_cmnd_for_erp(%struct.ipr_cmnd*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ipr_init_ioadl(%struct.ipr_cmnd*, i32, i32, i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32 (%struct.ipr_cmnd*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
