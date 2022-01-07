; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_handle_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_handle_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ACPI event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @ata_acpi_handle_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_acpi_handle_hotplug(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_eh_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ata_eh_info* %13, %struct.ata_eh_info** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %15 = icmp ne %struct.ata_device* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %44 [
    i32 130, label %31
    i32 129, label %31
    i32 128, label %38
  ]

31:                                               ; preds = %24, %24
  %32 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %33 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %35 = call i32 @ata_ehi_hotplugged(%struct.ata_eh_info* %34)
  %36 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %37 = call i32 @ata_port_freeze(%struct.ata_port* %36)
  br label %44

38:                                               ; preds = %24
  %39 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %40 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %42 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %43 = call i32 @ata_acpi_detach_device(%struct.ata_port* %41, %struct.ata_device* %42)
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %24, %38, %31
  %45 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32 %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %54 = call i32 @ata_port_wait_eh(%struct.ata_port* %53)
  br label %55

55:                                               ; preds = %52, %44
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*) #1

declare dso_local i32 @ata_ehi_hotplugged(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_acpi_detach_device(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ata_port_wait_eh(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
