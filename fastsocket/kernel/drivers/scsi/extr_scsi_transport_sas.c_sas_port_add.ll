; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_port = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_port_add(%struct.sas_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_port*, align 8
  %4 = alloca i32, align 4
  store %struct.sas_port* %0, %struct.sas_port** %3, align 8
  %5 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %6 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %5, i32 0, i32 1
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %13 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %12, i32 0, i32 0
  %14 = call i32 @device_add(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %21 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %20, i32 0, i32 0
  %22 = call i32 @transport_add_device(i32* %21)
  %23 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %24 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %23, i32 0, i32 0
  %25 = call i32 @transport_configure_device(i32* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @transport_add_device(i32*) #1

declare dso_local i32 @transport_configure_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
