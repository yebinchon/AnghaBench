; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-core.c_mcp_bus_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-core.c_mcp_bus_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.mcp = type { i32 }
%struct.mcp_driver = type { i32 (%struct.mcp.0*, i32)* }
%struct.mcp.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @mcp_bus_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_bus_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mcp_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.mcp* @to_mcp(%struct.device* %8)
  store %struct.mcp* %9, %struct.mcp** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.mcp_driver* @to_mcp_driver(i64 %17)
  store %struct.mcp_driver* %18, %struct.mcp_driver** %7, align 8
  %19 = load %struct.mcp_driver*, %struct.mcp_driver** %7, align 8
  %20 = getelementptr inbounds %struct.mcp_driver, %struct.mcp_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.mcp.0*, i32)*, i32 (%struct.mcp.0*, i32)** %20, align 8
  %22 = load %struct.mcp*, %struct.mcp** %5, align 8
  %23 = bitcast %struct.mcp* %22 to %struct.mcp.0*
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %21(%struct.mcp.0* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %14, %2
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local %struct.mcp* @to_mcp(%struct.device*) #1

declare dso_local %struct.mcp_driver* @to_mcp_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
