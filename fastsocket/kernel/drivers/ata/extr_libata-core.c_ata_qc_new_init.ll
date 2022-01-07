; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_new_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port*, i32* }
%struct.ata_port = type { i32 }
%struct.ata_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_queued_cmd* @ata_qc_new_init(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %3, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = call %struct.ata_queued_cmd* @ata_qc_new(%struct.ata_port* %10)
  store %struct.ata_queued_cmd* %11, %struct.ata_queued_cmd** %4, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %13 = icmp ne %struct.ata_queued_cmd* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 1
  store %struct.ata_port* %17, %struct.ata_port** %19, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 0
  store %struct.ata_device* %20, %struct.ata_device** %22, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %24 = call i32 @ata_qc_reinit(%struct.ata_queued_cmd* %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  ret %struct.ata_queued_cmd* %26
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_new(%struct.ata_port*) #1

declare dso_local i32 @ata_qc_reinit(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
