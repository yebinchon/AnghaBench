; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_sata_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_sata_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { %struct.ipr_resource_entry*, %struct.ipr_ioa_cfg* }
%struct.ipr_resource_entry = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ipr_sata_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_sata_reset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipr_sata_port*, align 8
  %8 = alloca %struct.ipr_ioa_cfg*, align 8
  %9 = alloca %struct.ipr_resource_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %15, align 8
  store %struct.ipr_sata_port* %16, %struct.ipr_sata_port** %7, align 8
  %17 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %7, align 8
  %18 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %17, i32 0, i32 1
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %18, align 8
  store %struct.ipr_ioa_cfg* %19, %struct.ipr_ioa_cfg** %8, align 8
  store i64 0, i64* %10, align 8
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @ENTER, align 4
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %35, %3
  %31 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %37 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32 %40, i64 %41)
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %44 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %47 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event(i32 %45, i32 %51)
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %54 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_lock_irqsave(i32 %57, i64 %58)
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %7, align 8
  %62 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %61, i32 0, i32 0
  %63 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %62, align 8
  store %struct.ipr_resource_entry* %63, %struct.ipr_resource_entry** %9, align 8
  %64 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %65 = icmp ne %struct.ipr_resource_entry* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %68 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %69 = call i32 @ipr_device_reset(%struct.ipr_ioa_cfg* %67, %struct.ipr_resource_entry* %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %71 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %60
  %75 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %76 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32 %79, i64 %80)
  %82 = load i32, i32* @LEAVE, align 4
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ipr_device_reset(%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
