; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_via.c_via_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_via.c_via_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.via_isa_bridge* }
%struct.via_isa_bridge = type { i32 }
%struct.ata_device = type { i32 }

@VIA_BAD_AST = common dso_local global i32 0, align 4
@VIA_UDMA = common dso_local global i32 0, align 4
@via_set_piomode.tclock = internal global [5 x i32] [i32 1, i32 1, i32 2, i32 3, i32 4], align 16
@via_set_piomode.udma = internal global [5 x i32] [i32 0, i32 33, i32 66, i32 100, i32 133], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @via_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.via_isa_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %11, align 8
  store %struct.via_isa_bridge* %12, %struct.via_isa_bridge** %5, align 8
  %13 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %5, align 8
  %14 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VIA_BAD_AST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %5, align 8
  %22 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VIA_UDMA, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* @via_set_piomode.tclock, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* @via_set_piomode.udma, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @via_do_set_mode(%struct.ata_port* %26, %struct.ata_device* %27, i32 %30, i32 %34, i32 %35, i32 %39)
  ret void
}

declare dso_local i32 @via_do_set_mode(%struct.ata_port*, %struct.ata_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
