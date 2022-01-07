; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, %struct.TYPE_2__, %struct.fc_rport* }
%struct.TYPE_2__ = type { i64 }
%struct.fc_rport = type { %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32 }

@FC_SRB_FCP_PROCESSING_TMO = common dso_local global i32 0, align 4
@FC_RP_FLAGS_REC_SUPPORTED = common dso_local global i32 0, align 4
@FC_SRB_RCV_STATUS = common dso_local global i32 0, align 4
@FC_TIMED_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fc_fcp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca %struct.fc_rport_libfc_priv*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %7, %struct.fc_fcp_pkt** %3, align 8
  %8 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %9 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %8, i32 0, i32 2
  %10 = load %struct.fc_rport*, %struct.fc_rport** %9, align 8
  store %struct.fc_rport* %10, %struct.fc_rport** %4, align 8
  %11 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %12 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %11, i32 0, i32 0
  %13 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %12, align 8
  store %struct.fc_rport_libfc_priv* %13, %struct.fc_rport_libfc_priv** %5, align 8
  %14 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %15 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %20 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %62

25:                                               ; preds = %18
  %26 = load i32, i32* @FC_SRB_FCP_PROCESSING_TMO, align 4
  %27 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %28 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %5, align 8
  %32 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FC_RP_FLAGS_REC_SUPPORTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %39 = call i32 @fc_fcp_rec(%struct.fc_fcp_pkt* %38)
  br label %55

40:                                               ; preds = %25
  %41 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %42 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FC_SRB_RCV_STATUS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %49 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %48)
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %52 = load i32, i32* @FC_TIMED_OUT, align 4
  %53 = call i32 @fc_fcp_recovery(%struct.fc_fcp_pkt* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* @FC_SRB_FCP_PROCESSING_TMO, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %59 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %24
  %63 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %64 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %63)
  br label %65

65:                                               ; preds = %62, %17
  ret void
}

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_rec(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_recovery(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
