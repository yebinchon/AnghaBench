; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mcp = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@Ser4MCCR0 = common dso_local global i32 0, align 4
@Ser4MCCR1 = common dso_local global i32 0, align 4
@MCCR0_MCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @mcp_sa11x0_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_sa11x0_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.mcp* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mcp* %7, %struct.mcp** %5, align 8
  %8 = load i32, i32* @Ser4MCCR0, align 4
  %9 = load %struct.mcp*, %struct.mcp** %5, align 8
  %10 = call %struct.TYPE_2__* @priv(%struct.mcp* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @Ser4MCCR1, align 4
  %13 = load %struct.mcp*, %struct.mcp** %5, align 8
  %14 = call %struct.TYPE_2__* @priv(%struct.mcp* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @MCCR0_MCE, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @Ser4MCCR0, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @Ser4MCCR0, align 4
  ret i32 0
}

declare dso_local %struct.mcp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.mcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
