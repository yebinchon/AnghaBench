; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_deactivate_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_deactivate_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, i32, i32, i32*, %struct.isci_host* }
%struct.isci_host = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.isci_phy = type { i32, i32 }

@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_port_deactivate_phy(%struct.isci_port* %0, %struct.isci_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isci_host*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %9 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %8, i32 0, i32 4
  %10 = load %struct.isci_host*, %struct.isci_host** %9, align 8
  store %struct.isci_host* %10, %struct.isci_host** %7, align 8
  %11 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %12 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %17 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %21 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %26 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %30 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %35 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %38 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %3
  %40 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %41 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %42 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %44 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %43, i32 0, i32 4
  %45 = load %struct.isci_host*, %struct.isci_host** %44, align 8
  %46 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %39
  %53 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %54 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %57 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %60 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = call i32 @writel(i32 %55, i32* %63)
  br label %65

65:                                               ; preds = %52, %39
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %70 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %71 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %72 = call i32 @isci_port_link_down(%struct.isci_host* %69, %struct.isci_phy* %70, %struct.isci_port* %71)
  br label %73

73:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @isci_port_link_down(%struct.isci_host*, %struct.isci_phy*, %struct.isci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
