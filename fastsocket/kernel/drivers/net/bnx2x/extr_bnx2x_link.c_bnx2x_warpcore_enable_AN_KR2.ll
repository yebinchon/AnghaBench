; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_enable_AN_KR2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_enable_AN_KR2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@bnx2x_warpcore_enable_AN_KR2.reg_set = internal global [15 x %struct.bnx2x_reg_set] [%struct.bnx2x_reg_set { i32 143, i32 136, i32 41303, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 134, i32 52194, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 135, i32 30007, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 133, i32 41303, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 137, i32 52194, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 138, i32 30007, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 139, i32 10, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 141, i32 25600, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 140, i32 1568, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 142, i32 343, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 130, i32 25700, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 129, i32 12624, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 128, i32 12624, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 132, i32 343, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 131, i32 1568, i32 0, i32 0, i32 0 }], align 16
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enabling 20G-KR2\0A\00", align 1
@MDIO_WC_REG_CL49_USERB0_CTRL = common dso_local global i32 0, align 4
@LINK_ATTR_SYNC_KR2_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_warpcore_enable_AN_KR2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_enable_AN_KR2(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load i32, i32* @NETIF_MSG_LINK, align 4
  %13 = call i32 @DP(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %16 = load i32, i32* @MDIO_WC_REG_CL49_USERB0_CTRL, align 4
  %17 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %14, %struct.bnx2x_phy* %15, i32 143, i32 %16, i32 192)
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %38, %3
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.bnx2x_reg_set* getelementptr inbounds ([15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_enable_AN_KR2.reg_set, i64 0, i64 0))
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds [15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_enable_AN_KR2.reg_set, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds [15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_enable_AN_KR2.reg_set, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds [15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_enable_AN_KR2.reg_set, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %28, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %22
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* @LINK_ATTR_SYNC_KR2_ENABLE, align 4
  %43 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %44 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.link_params*, %struct.link_params** %5, align 8
  %48 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %49 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bnx2x_update_link_attr(%struct.link_params* %47, i32 %50)
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.bnx2x_reg_set*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_update_link_attr(%struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
