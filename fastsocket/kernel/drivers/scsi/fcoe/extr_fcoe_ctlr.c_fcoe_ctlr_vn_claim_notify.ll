; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fc_rport_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fcoe_rport = type { i32, i32, i32 }

@FIP_FL_REC_OR_P2P = common dso_local global i32 0, align 4
@FIP_SC_VN_PROBE_REQ = common dso_local global i32 0, align 4
@fcoe_all_vn2vn = common dso_local global i32 0, align 4
@FIP_SC_VN_CLAIM_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fc_rport_priv*)* @fcoe_ctlr_vn_claim_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_claim_notify(%struct.fcoe_ctlr* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  %5 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %4, align 8
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %7 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %6)
  store %struct.fcoe_rport* %7, %struct.fcoe_rport** %5, align 8
  %8 = load %struct.fcoe_rport*, %struct.fcoe_rport** %5, align 8
  %9 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FIP_FL_REC_OR_P2P, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %16 = load i32, i32* @FIP_SC_VN_PROBE_REQ, align 4
  %17 = load i32, i32* @fcoe_all_vn2vn, align 4
  %18 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %15, i32 %16, i32 %17, i32 0)
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %21 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %78 [
    i32 129, label %23
    i32 131, label %23
    i32 130, label %23
    i32 132, label %36
    i32 128, label %36
  ]

23:                                               ; preds = %19, %19, %19
  %24 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %25 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %29 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %34 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %33)
  br label %35

35:                                               ; preds = %32, %23
  br label %79

36:                                               ; preds = %19, %19
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %38 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %42 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %36
  %46 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %47 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %51 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %49, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %58 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %57)
  br label %79

59:                                               ; preds = %45
  %60 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %61 = call i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr* %60)
  br label %79

62:                                               ; preds = %36
  %63 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %64 = load i32, i32* @FIP_SC_VN_CLAIM_REP, align 4
  %65 = load %struct.fcoe_rport*, %struct.fcoe_rport** %5, align 8
  %66 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fcoe_rport*, %struct.fcoe_rport** %5, align 8
  %69 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %72 = call i32 @fcoe_ctlr_fcoe_size(%struct.fcoe_ctlr* %71)
  %73 = call i32 @min(i32 %70, i32 %72)
  %74 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %63, i32 %64, i32 %67, i32 %73)
  %75 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %76 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %77 = call i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr* %75, %struct.fc_rport_priv* %76)
  br label %79

78:                                               ; preds = %19
  br label %79

79:                                               ; preds = %14, %78, %62, %59, %56, %35
  ret void
}

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr*, i32, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fcoe_ctlr_fcoe_size(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr*, %struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
