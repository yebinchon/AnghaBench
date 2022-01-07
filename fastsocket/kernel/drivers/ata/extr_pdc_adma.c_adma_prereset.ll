; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pdc_adma.c_adma_prereset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pdc_adma.c_adma_prereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.adma_port_priv* }
%struct.adma_port_priv = type { i64 }

@adma_state_idle = common dso_local global i64 0, align 8
@adma_state_mmio = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @adma_prereset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adma_prereset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.adma_port_priv*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %5, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load %struct.adma_port_priv*, %struct.adma_port_priv** %11, align 8
  store %struct.adma_port_priv* %12, %struct.adma_port_priv** %6, align 8
  %13 = load %struct.adma_port_priv*, %struct.adma_port_priv** %6, align 8
  %14 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @adma_state_idle, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* @adma_state_mmio, align 8
  %20 = load %struct.adma_port_priv*, %struct.adma_port_priv** %6, align 8
  %21 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %24 = call i32 @adma_reinit_engine(%struct.ata_port* %23)
  %25 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @ata_sff_prereset(%struct.ata_link* %25, i64 %26)
  ret i32 %27
}

declare dso_local i32 @adma_reinit_engine(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
