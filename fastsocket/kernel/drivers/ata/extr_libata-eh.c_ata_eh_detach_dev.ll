; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_detach_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32, %struct.ata_link* }
%struct.ata_link = type { %struct.ata_eh_context, i32, %struct.ata_port* }
%struct.ata_eh_context = type { i32, i64*, i32 }
%struct.ata_port = type { i32, i32 }

@ATA_DFLAG_DETACH = common dso_local global i32 0, align 4
@ATA_DFLAG_DETACHED = common dso_local global i32 0, align 4
@ATA_PFLAG_SCSI_HOTPLUG = common dso_local global i32 0, align 4
@ATA_EH_PERDEV_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_eh_detach_dev(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_eh_context*, align 8
  %6 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %7 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %8 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %7, i32 0, i32 2
  %9 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  store %struct.ata_link* %9, %struct.ata_link** %3, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 2
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %4, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 0
  store %struct.ata_eh_context* %14, %struct.ata_eh_context** %5, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %16 = call i32 @ata_dev_disable(%struct.ata_device* %15)
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load i32, i32* @ATA_DFLAG_DETACH, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %29 = call i64 @ata_scsi_offline_dev(%struct.ata_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load i32, i32* @ATA_DFLAG_DETACHED, align 4
  %33 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @ATA_PFLAG_SCSI_HOTPLUG, align 4
  %38 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %31, %1
  %43 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %44 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %45 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %46 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %45, i32 0, i32 1
  %47 = load i32, i32* @ATA_EH_PERDEV_MASK, align 4
  %48 = call i32 @ata_eh_clear_action(%struct.ata_link* %43, %struct.ata_device* %44, i32* %46, i32 %47)
  %49 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %50 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %51 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %52 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %52, i32 0, i32 2
  %54 = load i32, i32* @ATA_EH_PERDEV_MASK, align 4
  %55 = call i32 @ata_eh_clear_action(%struct.ata_link* %49, %struct.ata_device* %50, i32* %53, i32 %54)
  %56 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %57 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %60 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %64 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %70 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32 %75, i64 %76)
  ret void
}

declare dso_local i32 @ata_dev_disable(%struct.ata_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @ata_scsi_offline_dev(%struct.ata_device*) #1

declare dso_local i32 @ata_eh_clear_action(%struct.ata_link*, %struct.ata_device*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
