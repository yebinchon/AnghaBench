; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c_mi1_mdio_ext_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c_mi1_mdio_ext_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.adapter* }
%struct.adapter = type { i32 }

@A_ELMER0_PORT0_MI1_ADDR = common dso_local global i32 0, align 4
@A_ELMER0_PORT0_MI1_DATA = common dso_local global i32 0, align 4
@A_ELMER0_PORT0_MI1_OP = common dso_local global i32 0, align 4
@MI1_OP_INDIRECT_ADDRESS = common dso_local global i32 0, align 4
@MI1_OP_INDIRECT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @mi1_mdio_ext_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi1_mdio_ext_read(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @V_MI1_REG_ADDR(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @V_MI1_PHY_ADDR(i32 %17)
  %19 = or i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.adapter*, %struct.adapter** %9, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.adapter*, %struct.adapter** %9, align 8
  %24 = load i32, i32* @A_ELMER0_PORT0_MI1_ADDR, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @__t1_tpi_write(%struct.adapter* %23, i32 %24, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %9, align 8
  %28 = load i32, i32* @A_ELMER0_PORT0_MI1_DATA, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @__t1_tpi_write(%struct.adapter* %27, i32 %28, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %9, align 8
  %32 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %33 = load i32, i32* @MI1_OP_INDIRECT_ADDRESS, align 4
  %34 = call i32 @__t1_tpi_write(%struct.adapter* %31, i32 %32, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %9, align 8
  %36 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %37 = call i32 @mi1_wait_until_ready(%struct.adapter* %35, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %9, align 8
  %39 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %40 = load i32, i32* @MI1_OP_INDIRECT_READ, align 4
  %41 = call i32 @__t1_tpi_write(%struct.adapter* %38, i32 %39, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %9, align 8
  %43 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %44 = call i32 @mi1_wait_until_ready(%struct.adapter* %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %9, align 8
  %46 = load i32, i32* @A_ELMER0_PORT0_MI1_DATA, align 4
  %47 = call i32 @__t1_tpi_read(%struct.adapter* %45, i32 %46, i32* %11)
  %48 = load %struct.adapter*, %struct.adapter** %9, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i32 @V_MI1_REG_ADDR(i32) #1

declare dso_local i32 @V_MI1_PHY_ADDR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__t1_tpi_write(%struct.adapter*, i32, i32) #1

declare dso_local i32 @mi1_wait_until_ready(%struct.adapter*, i32) #1

declare dso_local i32 @__t1_tpi_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
