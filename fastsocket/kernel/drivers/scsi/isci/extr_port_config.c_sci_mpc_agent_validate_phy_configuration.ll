; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port_config.c_sci_mpc_agent_validate_phy_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port_config.c_sci_mpc_agent_validate_phy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sci_port_configuration_agent = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.sci_sas_address = type { i64, i64 }

@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, %struct.sci_port_configuration_agent*)* @sci_mpc_agent_validate_phy_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_mpc_agent_validate_phy_configuration(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.sci_port_configuration_agent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sci_sas_address, align 8
  %9 = alloca %struct.sci_sas_address, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %149, %2
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @SCI_MAX_PORTS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %152

18:                                               ; preds = %14
  %19 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %20 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %149

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %37, i32* %3, align 4
  br label %156

38:                                               ; preds = %30
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %78, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @SCI_MAX_PHYS, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %11, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = and i32 %44, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %78

51:                                               ; preds = %43
  %52 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %53 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @sci_phy_get_sas_address(i32* %56, %struct.sci_sas_address* %8)
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %60 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %58, i64* %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %67 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i64 %65, i64* %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %51
  %76 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %76, i32* %3, align 4
  br label %156

77:                                               ; preds = %51
  br label %81

78:                                               ; preds = %50
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %39

81:                                               ; preds = %77, %39
  br label %82

82:                                               ; preds = %115, %93, %81
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @SCI_MAX_PHYS, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %146

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %11, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 1, %89
  %91 = and i32 %87, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %82

94:                                               ; preds = %86
  %95 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %96 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i32 @sci_phy_get_sas_address(i32* %99, %struct.sci_sas_address* %9)
  %101 = bitcast %struct.sci_sas_address* %8 to { i64, i64 }*
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = bitcast %struct.sci_sas_address* %9 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @sci_sas_address_compare(i64 %103, i64 %105, i64 %108, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %94
  %114 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %114, i32* %3, align 4
  br label %156

115:                                              ; preds = %94
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %118 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i64 %116, i64* %122, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %125 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i64 %123, i64* %129, align 8
  %130 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %131 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %136 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = call i32 @sci_port_add_phy(i32* %134, i32* %139)
  %141 = load i64, i64* %11, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 1, %142
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %7, align 4
  br label %82

146:                                              ; preds = %82
  %147 = load i64, i64* %11, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %146, %29
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %10, align 8
  br label %14

152:                                              ; preds = %14
  %153 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %154 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %155 = call i32 @sci_port_configuration_agent_validate_ports(%struct.isci_host* %153, %struct.sci_port_configuration_agent* %154)
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %113, %75, %36
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @sci_phy_get_sas_address(i32*, %struct.sci_sas_address*) #1

declare dso_local i64 @sci_sas_address_compare(i64, i64, i64, i64) #1

declare dso_local i32 @sci_port_add_phy(i32*, i32*) #1

declare dso_local i32 @sci_port_configuration_agent_validate_ports(%struct.isci_host*, %struct.sci_port_configuration_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
