; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pdc_adma.c_adma_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pdc_adma.c_adma_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.adma_port_priv* }
%struct.adma_port_priv = type { i32 }

@adma_state_pkt = common dso_local global i32 0, align 4
@adma_state_mmio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @adma_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adma_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.adma_port_priv*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.adma_port_priv*, %struct.adma_port_priv** %8, align 8
  store %struct.adma_port_priv* %9, %struct.adma_port_priv** %4, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 129, label %20
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @adma_state_pkt, align 4
  %16 = load %struct.adma_port_priv*, %struct.adma_port_priv** %4, align 8
  %17 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %19 = call i32 @adma_packet_start(%struct.ata_queued_cmd* %18)
  store i32 0, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = call i32 (...) @BUG()
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* @adma_state_mmio, align 4
  %25 = load %struct.adma_port_priv*, %struct.adma_port_priv** %4, align 8
  %26 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @adma_packet_start(%struct.ata_queued_cmd*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
