; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_disc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_disc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.fc_disc }
%struct.fc_disc = type { void (%struct.fc_lport.0*, i32)*, i32, i32, i32, %struct.fcoe_ctlr* }
%struct.fc_lport.0 = type opaque
%struct.fcoe_ctlr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ({}*, %struct.fc_lport*)* @fcoe_ctlr_disc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_disc_start({}* %0, %struct.fc_lport* %1) #0 {
  %3 = alloca {}*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_disc*, align 8
  %6 = alloca %struct.fcoe_ctlr*, align 8
  store {}* %0, {}** %3, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  store %struct.fc_disc* %8, %struct.fc_disc** %5, align 8
  %9 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %10 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %9, i32 0, i32 4
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %10, align 8
  store %struct.fcoe_ctlr* %11, %struct.fcoe_ctlr** %6, align 8
  %12 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %13 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load {}*, {}** %3, align 8
  %16 = bitcast {}* %15 to void (%struct.fc_lport.0*, i32)*
  %17 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %18 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %17, i32 0, i32 0
  store void (%struct.fc_lport.0*, i32)* %16, void (%struct.fc_lport.0*, i32)** %18, align 8
  %19 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %20 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 2
  %23 = or i32 %22, 1
  %24 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %25 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %27 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %26, i32 0, i32 2
  store i32 1, i32* %27, align 4
  %28 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %29 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %28, i32 0, i32 0
  %30 = call i32 @schedule_work(i32* %29)
  %31 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %32 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %31, i32 0, i32 3
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
