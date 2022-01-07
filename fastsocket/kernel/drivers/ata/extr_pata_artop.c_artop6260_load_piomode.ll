; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_artop.c_artop6260_load_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_artop.c_artop6260_load_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.ata_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@__const.artop6260_load_piomode.timing = private unnamed_addr constant [2 x [5 x %struct.TYPE_5__]] [[5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 0, i32 10, i32 8, i32 51, i32 49 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 112, i32 122, i32 120, i32 67, i32 65 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer]], align 16
@clock = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @artop6260_load_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artop6260_load_piomode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x [5 x %struct.TYPE_5__]], align 16
  %10 = alloca %struct.TYPE_5__, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = bitcast [2 x [5 x %struct.TYPE_5__]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([2 x [5 x %struct.TYPE_5__]]* @__const.artop6260_load_piomode.timing to i8*), i64 200, i1 false)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 64, %27
  %29 = load i64, i64* @clock, align 8
  %30 = getelementptr inbounds [2 x [5 x %struct.TYPE_5__]], [2 x [5 x %struct.TYPE_5__]]* %9, i64 0, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* %30, i64 0, i64 %32
  %34 = bitcast %struct.TYPE_5__* %10 to i8*
  %35 = bitcast %struct.TYPE_5__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 %35, i64 20, i1 false)
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %26, i32 %28, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %10)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
