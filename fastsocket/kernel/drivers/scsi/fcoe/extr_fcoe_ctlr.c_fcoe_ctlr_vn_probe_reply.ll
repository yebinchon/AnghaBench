; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32 }
%struct.fc_rport_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fc_rport_priv*)* @fcoe_ctlr_vn_probe_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_probe_reply(%struct.fcoe_ctlr* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %4, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %6 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %10 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %16 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 131, label %18
    i32 130, label %18
    i32 132, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %14, %14, %14, %14
  %19 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %20 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %19)
  br label %25

21:                                               ; preds = %14
  %22 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %23 = call i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr* %22)
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %13, %24, %21, %18
  ret void
}

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
