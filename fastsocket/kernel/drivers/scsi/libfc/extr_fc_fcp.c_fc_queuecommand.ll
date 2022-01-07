; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_lport = type { i32, i64 }
%struct.fc_rport = type { %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32 }
%struct.fc_fcp_pkt = type { i32, i64, i64, i64, %struct.fc_rport*, %struct.scsi_cmnd* }
%struct.fc_stats = type { i32, i32, i32, i32, i32 }
%struct.fc_remote_port = type { i32 }

@DID_IMM_RETRY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@FC_SRB_READ = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FC_SRB_WRITE = common dso_local global i64 0, align 8
@FC_SRB_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca %struct.fc_fcp_pkt*, align 8
  %9 = alloca %struct.fc_rport_libfc_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fc_stats*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @scsi_target(%struct.TYPE_2__* %15)
  %17 = call %struct.fc_rport* @starget_to_rport(i32 %16)
  store %struct.fc_rport* %17, %struct.fc_rport** %7, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.fc_lport* @shost_priv(i32 %22)
  store %struct.fc_lport* %23, %struct.fc_lport** %6, align 8
  %24 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %25 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %32(%struct.scsi_cmnd* %33)
  store i32 0, i32* %3, align 4
  br label %164

34:                                               ; preds = %2
  %35 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %36 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %35, i32 0, i32 0
  %37 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %36, align 8
  %38 = bitcast %struct.fc_rport_libfc_priv* %37 to %struct.fc_remote_port**
  %39 = load %struct.fc_remote_port*, %struct.fc_remote_port** %38, align 8
  %40 = icmp ne %struct.fc_remote_port* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @DID_IMM_RETRY, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %46(%struct.scsi_cmnd* %47)
  br label %162

48:                                               ; preds = %34
  %49 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %50 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %49, i32 0, i32 0
  %51 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %50, align 8
  store %struct.fc_rport_libfc_priv* %51, %struct.fc_rport_libfc_priv** %9, align 8
  %52 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %53 = call i32 @fc_fcp_lport_queue_ready(%struct.fc_lport* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %57 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %62 = call i32 @fc_fcp_can_queue_ramp_down(%struct.fc_lport* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %64, i32* %11, align 4
  br label %162

65:                                               ; preds = %48
  %66 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call %struct.fc_fcp_pkt* @fc_fcp_pkt_alloc(%struct.fc_lport* %66, i32 %67)
  store %struct.fc_fcp_pkt* %68, %struct.fc_fcp_pkt** %8, align 8
  %69 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %70 = icmp eq %struct.fc_fcp_pkt* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %72, i32* %11, align 4
  br label %162

73:                                               ; preds = %65
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %75 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %76 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %75, i32 0, i32 5
  store %struct.scsi_cmnd* %74, %struct.scsi_cmnd** %76, align 8
  %77 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %78 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %79 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %78, i32 0, i32 4
  store %struct.fc_rport* %77, %struct.fc_rport** %79, align 8
  %80 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %80, void (%struct.scsi_cmnd*)** %82, align 8
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %83)
  %85 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %86 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %88 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %90 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (...) @get_cpu()
  %93 = call %struct.fc_stats* @per_cpu_ptr(i32 %91, i32 %92)
  store %struct.fc_stats* %93, %struct.fc_stats** %12, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %73
  %100 = load i64, i64* @FC_SRB_READ, align 8
  %101 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %102 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.fc_stats*, %struct.fc_stats** %12, align 8
  %104 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %108 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fc_stats*, %struct.fc_stats** %12, align 8
  %111 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  br label %147

116:                                              ; preds = %73
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %118 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DMA_TO_DEVICE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %116
  %123 = load i64, i64* @FC_SRB_WRITE, align 8
  %124 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %125 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.fc_stats*, %struct.fc_stats** %12, align 8
  %127 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %131 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.fc_stats*, %struct.fc_stats** %12, align 8
  %134 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %132
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  br label %146

139:                                              ; preds = %116
  %140 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %141 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.fc_stats*, %struct.fc_stats** %12, align 8
  %143 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %139, %122
  br label %147

147:                                              ; preds = %146, %99
  %148 = call i32 (...) @put_cpu()
  %149 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %150 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %151 = call i32 @fc_fcp_pkt_send(%struct.fc_lport* %149, %struct.fc_fcp_pkt* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load i32, i32* @FC_SRB_FREE, align 4
  %156 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %157 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %159 = call i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt* %158)
  %160 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %154, %147
  br label %162

162:                                              ; preds = %161, %71, %63, %41
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %28
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_2__*) #1

declare dso_local %struct.fc_lport* @shost_priv(i32) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @fc_fcp_lport_queue_ready(%struct.fc_lport*) #1

declare dso_local i32 @fc_fcp_can_queue_ramp_down(%struct.fc_lport*) #1

declare dso_local %struct.fc_fcp_pkt* @fc_fcp_pkt_alloc(%struct.fc_lport*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.fc_stats* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @fc_fcp_pkt_send(%struct.fc_lport*, %struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
