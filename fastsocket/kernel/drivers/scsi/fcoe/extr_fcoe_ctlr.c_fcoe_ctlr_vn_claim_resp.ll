; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64 }
%struct.fc_rport_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"claim resp from from rport %x - state %s\0A\00", align 1
@FIP_ST_VNMP_UP = common dso_local global i64 0, align 8
@FIP_ST_VNMP_CLAIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fc_rport_priv*)* @fcoe_ctlr_vn_claim_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_claim_resp(%struct.fcoe_ctlr* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %4, align 8
  %5 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %7 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @fcoe_ctlr_state(i64 %12)
  %14 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %16 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FIP_ST_VNMP_UP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %22 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FIP_ST_VNMP_CLAIM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %2
  %27 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %29 = call i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr* %27, %struct.fc_rport_priv* %28)
  br label %30

30:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_state(i64) #1

declare dso_local i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
