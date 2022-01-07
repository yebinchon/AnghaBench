; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_init_emac_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_init_emac_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32, i32, i32, i32 }

@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@MAC_TYPE_EMAC = common dso_local global i32 0, align 4
@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*)* @bnx2x_init_emac_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_emac_loopback(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %6 = load %struct.link_params*, %struct.link_params** %3, align 8
  %7 = getelementptr inbounds %struct.link_params, %struct.link_params* %6, i32 0, i32 1
  %8 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  store %struct.bnx2x* %8, %struct.bnx2x** %5, align 8
  %9 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %10 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @SPEED_1000, align 4
  %12 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %13 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DUPLEX_FULL, align 4
  %15 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %16 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BNX2X_FLOW_CTRL_NONE, align 4
  %18 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %19 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MAC_TYPE_EMAC, align 4
  %21 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %22 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %24 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %25 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.link_params*, %struct.link_params** %3, align 8
  %27 = call i32 @bnx2x_xgxs_deassert(%struct.link_params* %26)
  %28 = load %struct.link_params*, %struct.link_params** %3, align 8
  %29 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %30 = call i32 @bnx2x_emac_enable(%struct.link_params* %28, %struct.link_vars* %29, i32 1)
  %31 = load %struct.link_params*, %struct.link_params** %3, align 8
  %32 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %33 = call i32 @bnx2x_emac_program(%struct.link_params* %31, %struct.link_vars* %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %35 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %36 = load %struct.link_params*, %struct.link_params** %3, align 8
  %37 = getelementptr inbounds %struct.link_params, %struct.link_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %35, %40
  %42 = call i32 @REG_WR(%struct.bnx2x* %34, i64 %41, i32 0)
  ret void
}

declare dso_local i32 @bnx2x_xgxs_deassert(%struct.link_params*) #1

declare dso_local i32 @bnx2x_emac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_emac_program(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
