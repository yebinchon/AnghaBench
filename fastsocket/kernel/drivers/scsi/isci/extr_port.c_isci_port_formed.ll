; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_isci_port_formed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_isci_port_formed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { %struct.asd_sas_port*, %struct.TYPE_2__* }
%struct.asd_sas_port = type { %struct.isci_port* }
%struct.isci_port = type { i32 }
%struct.TYPE_2__ = type { %struct.isci_host* }
%struct.isci_host = type { i32, %struct.isci_port* }
%struct.isci_phy = type { i32 }

@SCI_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_port_formed(%struct.asd_sas_phy* %0) #0 {
  %2 = alloca %struct.asd_sas_phy*, align 8
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_phy*, align 8
  %5 = alloca %struct.asd_sas_port*, align 8
  %6 = alloca %struct.isci_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %2, align 8
  %9 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %2, align 8
  %10 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.isci_host*, %struct.isci_host** %12, align 8
  store %struct.isci_host* %13, %struct.isci_host** %3, align 8
  %14 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %2, align 8
  %15 = call %struct.isci_phy* @to_iphy(%struct.asd_sas_phy* %14)
  store %struct.isci_phy* %15, %struct.isci_phy** %4, align 8
  %16 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %2, align 8
  %17 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %16, i32 0, i32 0
  %18 = load %struct.asd_sas_port*, %struct.asd_sas_port** %17, align 8
  store %struct.asd_sas_port* %18, %struct.asd_sas_port** %5, align 8
  store %struct.isci_port* null, %struct.isci_port** %6, align 8
  %19 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %20 = call i32 @wait_for_start(%struct.isci_host* %19)
  %21 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %22 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %47, %1
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SCI_MAX_PORTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %31 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %30, i32 0, i32 1
  %32 = load %struct.isci_port*, %struct.isci_port** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %32, i64 %34
  store %struct.isci_port* %35, %struct.isci_port** %6, align 8
  %36 = load %struct.isci_port*, %struct.isci_port** %6, align 8
  %37 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %40 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %50

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %25

50:                                               ; preds = %45, %25
  %51 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %52 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SCI_MAX_PORTS, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store %struct.isci_port* null, %struct.isci_port** %6, align 8
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.isci_port*, %struct.isci_port** %6, align 8
  %61 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %62 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %61, i32 0, i32 0
  store %struct.isci_port* %60, %struct.isci_port** %62, align 8
  ret void
}

declare dso_local %struct.isci_phy* @to_iphy(%struct.asd_sas_phy*) #1

declare dso_local i32 @wait_for_start(%struct.isci_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
