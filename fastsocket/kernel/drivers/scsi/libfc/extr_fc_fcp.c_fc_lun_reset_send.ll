; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.fc_lport.0*, %struct.fc_fcp_pkt.1*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_fcp_pkt.1 = type opaque

@fc_tm_done = common dso_local global i32 0, align 4
@FC_MAX_RECOV_RETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fc_lun_reset_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lun_reset_send(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %6, %struct.fc_fcp_pkt** %3, align 8
  %7 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %8 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %7, i32 0, i32 2
  %9 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  store %struct.fc_lport* %9, %struct.fc_lport** %4, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.fc_lport.0*, %struct.fc_fcp_pkt.1*, i32)*, i64 (%struct.fc_lport.0*, %struct.fc_fcp_pkt.1*, i32)** %12, align 8
  %14 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %15 = bitcast %struct.fc_lport* %14 to %struct.fc_lport.0*
  %16 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %17 = bitcast %struct.fc_fcp_pkt* %16 to %struct.fc_fcp_pkt.1*
  %18 = load i32, i32* @fc_tm_done, align 4
  %19 = call i64 %13(%struct.fc_lport.0* %15, %struct.fc_fcp_pkt.1* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %23 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = sext i32 %24 to i64
  %27 = load i64, i64* @FC_MAX_RECOV_RETRY, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %47

30:                                               ; preds = %21
  %31 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %32 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %47

35:                                               ; preds = %30
  %36 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %37 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %36, i32 0, i32 0
  %38 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %39 = ptrtoint %struct.fc_fcp_pkt* %38 to i64
  %40 = call i32 @setup_timer(i32* %37, void (i64)* @fc_lun_reset_send, i64 %39)
  %41 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %42 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %43 = call i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %42)
  %44 = call i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt* %41, i32 %43)
  %45 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %46 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %45)
  br label %47

47:                                               ; preds = %29, %34, %35, %1
  ret void
}

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @setup_timer(i32*, void (i64)*, i64) #1

declare dso_local i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
