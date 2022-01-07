; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_rport_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.fcoe_rport = type { i32, i32 }

@FIP_SC_VN_PROBE_REP = common dso_local global i32 0, align 4
@FIP_FL_REC_OR_P2P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fc_rport_priv*)* @fcoe_ctlr_vn_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_probe_req(%struct.fcoe_ctlr* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  %5 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %4, align 8
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %7 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %6)
  store %struct.fcoe_rport* %7, %struct.fcoe_rport** %5, align 8
  %8 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %9 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %13 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %19 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %57 [
    i32 132, label %21
    i32 128, label %21
    i32 131, label %28
    i32 130, label %28
    i32 129, label %54
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %23 = load i32, i32* @FIP_SC_VN_PROBE_REP, align 4
  %24 = load %struct.fcoe_rport*, %struct.fcoe_rport** %5, align 8
  %25 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %22, i32 %23, i32 %26, i32 0)
  br label %58

28:                                               ; preds = %17, %17
  %29 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %30 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %35 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load %struct.fcoe_rport*, %struct.fcoe_rport** %5, align 8
  %41 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FIP_FL_REC_OR_P2P, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %48 = load i32, i32* @FIP_SC_VN_PROBE_REP, align 4
  %49 = load %struct.fcoe_rport*, %struct.fcoe_rport** %5, align 8
  %50 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %47, i32 %48, i32 %51, i32 0)
  br label %58

53:                                               ; preds = %39, %28
  br label %54

54:                                               ; preds = %17, %53
  %55 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %56 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %55)
  br label %58

57:                                               ; preds = %17
  br label %58

58:                                               ; preds = %16, %57, %54, %46, %21
  ret void
}

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr*, i32, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
