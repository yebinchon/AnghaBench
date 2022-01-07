; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @twl_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = icmp ne %struct.Scsi_Host* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = call i32 @__twl_shutdown(%struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %9, %19, %10
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @__twl_shutdown(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
