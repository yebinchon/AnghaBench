; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_fis_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_fis_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.nv_swncq_port_priv* }
%struct.nv_swncq_port_priv = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @nv_swncq_fis_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swncq_fis_reinit(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.nv_swncq_port_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 0
  %6 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  store %struct.nv_swncq_port_priv* %6, %struct.nv_swncq_port_priv** %3, align 8
  %7 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %3, align 8
  %10 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
