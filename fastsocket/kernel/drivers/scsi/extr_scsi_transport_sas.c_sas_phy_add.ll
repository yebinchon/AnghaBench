; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_phy_add(%struct.sas_phy* %0) #0 {
  %2 = alloca %struct.sas_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.sas_phy* %0, %struct.sas_phy** %2, align 8
  %4 = load %struct.sas_phy*, %struct.sas_phy** %2, align 8
  %5 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %4, i32 0, i32 0
  %6 = call i32 @device_add(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.sas_phy*, %struct.sas_phy** %2, align 8
  %11 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %10, i32 0, i32 0
  %12 = call i32 @transport_add_device(i32* %11)
  %13 = load %struct.sas_phy*, %struct.sas_phy** %2, align 8
  %14 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %13, i32 0, i32 0
  %15 = call i32 @transport_configure_device(i32* %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @transport_add_device(i32*) #1

declare dso_local i32 @transport_configure_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
