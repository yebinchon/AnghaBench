; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port_config.c_sci_mpc_agent_link_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port_config.c_sci_mpc_agent_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.sci_port_configuration_agent = type { i32, i32, i32, i32 }
%struct.isci_port = type { i32 }
%struct.isci_phy = type { i32 }

@SCIC_SDS_MPC_RECONFIGURATION_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, %struct.sci_port_configuration_agent*, %struct.isci_port*, %struct.isci_phy*)* @sci_mpc_agent_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_mpc_agent_link_down(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1, %struct.isci_port* %2, %struct.isci_phy* %3) #0 {
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.sci_port_configuration_agent*, align 8
  %7 = alloca %struct.isci_port*, align 8
  %8 = alloca %struct.isci_phy*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %6, align 8
  store %struct.isci_port* %2, %struct.isci_port** %7, align 8
  store %struct.isci_phy* %3, %struct.isci_phy** %8, align 8
  %9 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %10 = icmp ne %struct.isci_port* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %4
  %12 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %13 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %18 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %22 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %27 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %31 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %11
  %35 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %36 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %41 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %46 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %48 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %47, i32 0, i32 3
  %49 = load i32, i32* @SCIC_SDS_MPC_RECONFIGURATION_TIMEOUT, align 4
  %50 = call i32 @sci_mod_timer(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %39, %34, %11
  %52 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %53 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %54 = call i32 @sci_port_link_down(%struct.isci_port* %52, %struct.isci_phy* %53)
  br label %55

55:                                               ; preds = %51, %4
  ret void
}

declare dso_local i32 @sci_mod_timer(i32*, i32) #1

declare dso_local i32 @sci_port_link_down(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
