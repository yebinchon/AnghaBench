; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_srr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_srr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i8*, i8*, %struct.fc_seq*, %struct.fc_rport*, i32, %struct.fc_lport* }
%struct.fc_seq = type { i32 }
%struct.fc_rport = type { i32, %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fc_lport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fc_seq* (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32, %struct.fc_fcp_pkt.1*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_fcp_pkt.1 = type opaque
%struct.fc_exch = type { i32, i32 }
%struct.fcp_srr = type { i32, i32, i8*, i8*, i32 }
%struct.fc_frame.2 = type { i32 }

@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@RPORT_ST_READY = common dso_local global i64 0, align 8
@ELS_SRR = common dso_local global i32 0, align 4
@FC_RCTL_ELS4_REQ = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4
@fc_fcp_srr_resp = common dso_local global i32 0, align 4
@fc_fcp_pkt_destroy = common dso_local global i32 0, align 4
@FC_SRB_RCV_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*, i32, i8*)* @fc_fcp_srr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_srr(%struct.fc_fcp_pkt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.fc_fcp_pkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.fc_rport_libfc_priv*, align 8
  %10 = alloca %struct.fc_exch*, align 8
  %11 = alloca %struct.fc_seq*, align 8
  %12 = alloca %struct.fcp_srr*, align 8
  %13 = alloca %struct.fc_frame.2*, align 8
  %14 = alloca i32, align 4
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %15, i32 0, i32 6
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %7, align 8
  %18 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %19 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.fc_exch* @fc_seq_exch(i32 %20)
  store %struct.fc_exch* %21, %struct.fc_exch** %10, align 8
  %22 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %23 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %22, i32 0, i32 4
  %24 = load %struct.fc_rport*, %struct.fc_rport** %23, align 8
  store %struct.fc_rport* %24, %struct.fc_rport** %8, align 8
  %25 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %26 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %25, i32 0, i32 1
  %27 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %26, align 8
  store %struct.fc_rport_libfc_priv* %27, %struct.fc_rport_libfc_priv** %9, align 8
  %28 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %29 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %36 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RPORT_ST_READY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %3
  br label %125

41:                                               ; preds = %34
  %42 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %43 = call %struct.fc_frame.2* @fc_fcp_frame_alloc(%struct.fc_lport* %42, i32 32)
  store %struct.fc_frame.2* %43, %struct.fc_frame.2** %13, align 8
  %44 = load %struct.fc_frame.2*, %struct.fc_frame.2** %13, align 8
  %45 = icmp ne %struct.fc_frame.2* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %125

47:                                               ; preds = %41
  %48 = load %struct.fc_frame.2*, %struct.fc_frame.2** %13, align 8
  %49 = call %struct.fcp_srr* @fc_frame_payload_get(%struct.fc_frame.2* %48, i32 32)
  store %struct.fcp_srr* %49, %struct.fcp_srr** %12, align 8
  %50 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %51 = call i32 @memset(%struct.fcp_srr* %50, i32 0, i32 32)
  %52 = load i32, i32* @ELS_SRR, align 4
  %53 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %54 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %56 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htons(i32 %57)
  %59 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %60 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %62 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htons(i32 %63)
  %65 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %66 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %69 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @htonl(i8* %70)
  %72 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %73 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.fc_frame.2*, %struct.fc_frame.2** %13, align 8
  %75 = load i32, i32* @FC_RCTL_ELS4_REQ, align 4
  %76 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %77 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %80 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FC_TYPE_FCP, align 4
  %85 = load i32, i32* @FC_FCTL_REQ, align 4
  %86 = call i32 @fc_fill_fc_hdr(%struct.fc_frame.2* %74, i32 %75, i32 %78, i32 %83, i32 %84, i32 %85, i32 0)
  %87 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %88 = call i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %87)
  store i32 %88, i32* %14, align 4
  %89 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %90 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.fc_seq* (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32, %struct.fc_fcp_pkt.1*, i32)*, %struct.fc_seq* (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32, %struct.fc_fcp_pkt.1*, i32)** %91, align 8
  %93 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %94 = bitcast %struct.fc_lport* %93 to %struct.fc_lport.0*
  %95 = load %struct.fc_frame.2*, %struct.fc_frame.2** %13, align 8
  %96 = bitcast %struct.fc_frame.2* %95 to %struct.fc_frame*
  %97 = load i32, i32* @fc_fcp_srr_resp, align 4
  %98 = load i32, i32* @fc_fcp_pkt_destroy, align 4
  %99 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %100 = bitcast %struct.fc_fcp_pkt* %99 to %struct.fc_fcp_pkt.1*
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @jiffies_to_msecs(i32 %101)
  %103 = call %struct.fc_seq* %92(%struct.fc_lport.0* %94, %struct.fc_frame* %96, i32 %97, i32 %98, %struct.fc_fcp_pkt.1* %100, i32 %102)
  store %struct.fc_seq* %103, %struct.fc_seq** %11, align 8
  %104 = load %struct.fc_seq*, %struct.fc_seq** %11, align 8
  %105 = icmp ne %struct.fc_seq* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %47
  br label %125

107:                                              ; preds = %47
  %108 = load %struct.fc_seq*, %struct.fc_seq** %11, align 8
  %109 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %110 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %109, i32 0, i32 3
  store %struct.fc_seq* %108, %struct.fc_seq** %110, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %113 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %116 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @FC_SRB_RCV_STATUS, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %120 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %124 = call i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt* %123)
  br label %128

125:                                              ; preds = %106, %46, %40
  %126 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %127 = call i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt* %126)
  br label %128

128:                                              ; preds = %125, %107
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(i32) #1

declare dso_local %struct.fc_frame.2* @fc_fcp_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fcp_srr* @fc_frame_payload_get(%struct.fc_frame.2*, i32) #1

declare dso_local i32 @memset(%struct.fcp_srr*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i8*) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame.2*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
