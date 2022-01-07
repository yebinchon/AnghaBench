; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_port_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_port_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATA_PFLAG_UNLOADING = common dso_local global i32 0, align 4
@ATA_PFLAG_UNLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @ata_port_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_port_detach(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load i32, i32* @ATA_PFLAG_UNLOADING, align 4
  %18 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %23 = call i32 @ata_port_schedule_eh(%struct.ata_port* %22)
  %24 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32 %26, i64 %27)
  %29 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %30 = call i32 @ata_port_wait_eh(%struct.ata_port* %29)
  %31 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATA_PFLAG_UNLOADED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 2
  %42 = call i32 @cancel_rearming_delayed_work(i32* %41)
  br label %43

43:                                               ; preds = %11, %10
  %44 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scsi_remove_host(i32 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ata_port_wait_eh(%struct.ata_port*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cancel_rearming_delayed_work(i32*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
