; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)* }
%struct.fc_rport_priv = type { i64 }
%struct.fc_lport.0 = type opaque
%struct.fc_disc_port = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_disc_port*)* @fc_disc_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_disc_single(%struct.fc_lport* %0, %struct.fc_disc_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_disc_port*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_disc_port* %1, %struct.fc_disc_port** %5, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)** %9, align 8
  %11 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %12 = bitcast %struct.fc_lport* %11 to %struct.fc_lport.0*
  %13 = load %struct.fc_disc_port*, %struct.fc_disc_port** %5, align 8
  %14 = getelementptr inbounds %struct.fc_disc_port, %struct.fc_disc_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.fc_rport_priv* %10(%struct.fc_lport.0* %12, i32 %15)
  store %struct.fc_rport_priv* %16, %struct.fc_rport_priv** %6, align 8
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %18 = icmp ne %struct.fc_rport_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %24 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %26 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %27 = call i32 @fc_disc_gpn_id_req(%struct.fc_lport* %25, %struct.fc_rport_priv* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @fc_disc_gpn_id_req(%struct.fc_lport*, %struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
