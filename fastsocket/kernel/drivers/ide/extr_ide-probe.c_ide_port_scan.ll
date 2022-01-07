; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_port_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_port_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@IDE_PFLAG_PROBING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_port_scan(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = call i32 @ide_port_apply_params(%struct.TYPE_12__* %4)
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call i32 @ide_port_cable_detect(%struct.TYPE_12__* %6)
  %8 = load i32, i32* @IDE_PFLAG_PROBING, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = call i32 @ide_port_init_devices(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = call i32 @ide_probe_port(%struct.TYPE_12__* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @IDE_PFLAG_PROBING, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = call i32 @ide_port_tune_devices(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call i32 @ide_port_setup_devices(%struct.TYPE_12__* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = call i32 @ide_acpi_port_init_devices(%struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = call i32 @hwif_register_devices(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = call i32 @ide_proc_port_register_devices(%struct.TYPE_12__* %37)
  br label %39

39:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @ide_port_apply_params(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_port_cable_detect(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_port_init_devices(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_probe_port(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_port_tune_devices(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_port_setup_devices(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_acpi_port_init_devices(%struct.TYPE_12__*) #1

declare dso_local i32 @hwif_register_devices(%struct.TYPE_12__*) #1

declare dso_local i32 @ide_proc_port_register_devices(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
