; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_2__, %struct.ata_port* }
%struct.TYPE_2__ = type { i64 }
%struct.ata_port = type { %struct.nv_swncq_port_priv* }
%struct.nv_swncq_port_priv = type { i32 }

@ATA_PROT_NCQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @nv_swncq_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_swncq_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.nv_swncq_port_priv*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %10, align 8
  store %struct.nv_swncq_port_priv* %11, %struct.nv_swncq_port_priv** %5, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ATA_PROT_NCQ, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %20 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %19)
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %24 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %30 = call i32 @nv_swncq_issue_atacmd(%struct.ata_port* %28, %struct.ata_queued_cmd* %29)
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %34 = call i32 @nv_swncq_qc_to_dq(%struct.ata_port* %32, %struct.ata_queued_cmd* %33)
  br label %35

35:                                               ; preds = %31, %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @nv_swncq_issue_atacmd(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @nv_swncq_qc_to_dq(%struct.ata_port*, %struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
