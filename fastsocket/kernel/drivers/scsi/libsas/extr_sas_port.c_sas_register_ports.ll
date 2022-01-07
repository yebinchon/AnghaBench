; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_port.c_sas_register_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_port.c_sas_register_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, %struct.asd_sas_port** }
%struct.asd_sas_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_register_ports(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_port*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 1
  %14 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %14, i64 %16
  %18 = load %struct.asd_sas_port*, %struct.asd_sas_port** %17, align 8
  store %struct.asd_sas_port* %18, %struct.asd_sas_port** %4, align 8
  %19 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %20 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @sas_init_port(%struct.asd_sas_port* %19, %struct.sas_ha_struct* %20, i32 %21)
  %23 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %24 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %23, i32 0, i32 0
  %25 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %26 = call i32 @sas_init_disc(i32* %24, %struct.asd_sas_port* %25)
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @sas_init_port(%struct.asd_sas_port*, %struct.sas_ha_struct*, i32) #1

declare dso_local i32 @sas_init_disc(i32*, %struct.asd_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
