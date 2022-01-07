; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_link_detected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_link_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64, i32*, %struct.isci_host* }
%struct.isci_host = type { %struct.isci_port* }
%struct.isci_phy = type { i64, i64 }

@SCIC_SDS_DUMMY_PORT = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_port_link_detected(%struct.isci_port* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  %6 = alloca %struct.isci_host*, align 8
  %7 = alloca %struct.isci_port*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %5, align 8
  %8 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %9 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCIC_SDS_DUMMY_PORT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %15 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SAS_PROTOCOL_SATA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %21 = call i64 @sci_port_is_wide(%struct.isci_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %25 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %26 = call i32 @sci_port_invalid_link_up(%struct.isci_port* %24, %struct.isci_phy* %25)
  store i32 0, i32* %3, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %29 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %28, i32 0, i32 2
  %30 = load %struct.isci_host*, %struct.isci_host** %29, align 8
  store %struct.isci_host* %30, %struct.isci_host** %6, align 8
  %31 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %32 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %31, i32 0, i32 0
  %33 = load %struct.isci_port*, %struct.isci_port** %32, align 8
  %34 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %35 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %33, i64 %36
  store %struct.isci_port* %37, %struct.isci_port** %7, align 8
  %38 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %39 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %42 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %45 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @writel(i64 %40, i32* %47)
  br label %49

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %13, %2
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @sci_port_is_wide(%struct.isci_port*) #1

declare dso_local i32 @sci_port_invalid_link_up(%struct.isci_port*, %struct.isci_phy*) #1

declare dso_local i32 @writel(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
