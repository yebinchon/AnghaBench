; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mesh.c_mesh_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mesh.c_mesh_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32 }
%struct.mesh_state = type { i32, i32, i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*)* @mesh_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_remove(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.mesh_state*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %5 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %6 = call i64 @macio_get_drvdata(%struct.macio_dev* %5)
  %7 = inttoptr i64 %6 to %struct.mesh_state*
  store %struct.mesh_state* %7, %struct.mesh_state** %3, align 8
  %8 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %9 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %8, i32 0, i32 6
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call i32 @scsi_remove_host(%struct.Scsi_Host* %11)
  %13 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %14 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.mesh_state* %16)
  %18 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %19 = call i32 @mesh_shutdown(%struct.macio_dev* %18)
  %20 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %21 = call i32 @set_mesh_power(%struct.mesh_state* %20, i32 0)
  %22 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %23 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %27 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iounmap(i32 %28)
  %30 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %31 = call i32 @macio_get_pci_dev(%struct.macio_dev* %30)
  %32 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %33 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %36 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mesh_state*, %struct.mesh_state** %3, align 8
  %39 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_free_consistent(i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %43 = call i32 @macio_release_resources(%struct.macio_dev* %42)
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %45 = call i32 @scsi_host_put(%struct.Scsi_Host* %44)
  ret i32 0
}

declare dso_local i64 @macio_get_drvdata(%struct.macio_dev*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.mesh_state*) #1

declare dso_local i32 @mesh_shutdown(%struct.macio_dev*) #1

declare dso_local i32 @set_mesh_power(%struct.mesh_state*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @macio_get_pci_dev(%struct.macio_dev*) #1

declare dso_local i32 @macio_release_resources(%struct.macio_dev*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
