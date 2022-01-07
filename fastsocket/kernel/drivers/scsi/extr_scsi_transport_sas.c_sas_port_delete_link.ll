; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_delete_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_delete_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sas_phy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_port*, %struct.sas_phy*)* @sas_port_delete_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_port_delete_link(%struct.sas_port* %0, %struct.sas_phy* %1) #0 {
  %3 = alloca %struct.sas_port*, align 8
  %4 = alloca %struct.sas_phy*, align 8
  store %struct.sas_port* %0, %struct.sas_port** %3, align 8
  store %struct.sas_phy* %1, %struct.sas_phy** %4, align 8
  %5 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %6 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %9 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %8, i32 0, i32 0
  %10 = call i8* @dev_name(%struct.TYPE_4__* %9)
  %11 = call i32 @sysfs_remove_link(i32* %7, i8* %10)
  %12 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %13 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @sysfs_remove_link(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
