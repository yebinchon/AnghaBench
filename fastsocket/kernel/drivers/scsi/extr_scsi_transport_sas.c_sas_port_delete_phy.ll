; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_delete_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_delete_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_port = type { i32, i32 }
%struct.sas_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_port_delete_phy(%struct.sas_port* %0, %struct.sas_phy* %1) #0 {
  %3 = alloca %struct.sas_port*, align 8
  %4 = alloca %struct.sas_phy*, align 8
  store %struct.sas_port* %0, %struct.sas_port** %3, align 8
  store %struct.sas_phy* %1, %struct.sas_phy** %4, align 8
  %5 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %6 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %9 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %10 = call i32 @sas_port_delete_link(%struct.sas_port* %8, %struct.sas_phy* %9)
  %11 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %12 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %11, i32 0, i32 0
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %15 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %19 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sas_port_delete_link(%struct.sas_port*, %struct.sas_phy*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
