; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-core.c_mcp_bus_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-core.c_mcp_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mcp = type { i32 }
%struct.mcp_driver = type { i32 (%struct.mcp.0*)* }
%struct.mcp.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mcp_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_bus_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mcp*, align 8
  %4 = alloca %struct.mcp_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.mcp* @to_mcp(%struct.device* %5)
  store %struct.mcp* %6, %struct.mcp** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mcp_driver* @to_mcp_driver(i32 %9)
  store %struct.mcp_driver* %10, %struct.mcp_driver** %4, align 8
  %11 = load %struct.mcp_driver*, %struct.mcp_driver** %4, align 8
  %12 = getelementptr inbounds %struct.mcp_driver, %struct.mcp_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.mcp.0*)*, i32 (%struct.mcp.0*)** %12, align 8
  %14 = load %struct.mcp*, %struct.mcp** %3, align 8
  %15 = bitcast %struct.mcp* %14 to %struct.mcp.0*
  %16 = call i32 %13(%struct.mcp.0* %15)
  ret i32 %16
}

declare dso_local %struct.mcp* @to_mcp(%struct.device*) #1

declare dso_local %struct.mcp_driver* @to_mcp_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
