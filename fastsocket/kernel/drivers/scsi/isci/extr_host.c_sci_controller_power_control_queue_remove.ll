; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_power_control_queue_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_power_control_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32**, i32 }
%struct.isci_phy = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_controller_power_control_queue_remove(%struct.isci_host* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_phy*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %4, align 8
  %5 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %6 = icmp eq %struct.isci_phy* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %10 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %14 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %21 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %27 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %31 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
