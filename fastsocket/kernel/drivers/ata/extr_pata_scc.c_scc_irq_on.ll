; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_irq_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_irq_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__*, i32, i32, %struct.ata_ioports }
%struct.TYPE_2__ = type { {}* }
%struct.ata_ioports = type { i32 }

@ATA_NIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @scc_irq_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_irq_on(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_ioports*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 3
  store %struct.ata_ioports* %6, %struct.ata_ioports** %3, align 8
  %7 = load i32, i32* @ATA_NIEN, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %19 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @out_be32(i32 %20, i32 %23)
  %25 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %26 = call i32 @ata_wait_idle(%struct.ata_port* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.ata_port*)**
  %32 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %31, align 8
  %33 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %34 = call i32 %32(%struct.ata_port* %33)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
