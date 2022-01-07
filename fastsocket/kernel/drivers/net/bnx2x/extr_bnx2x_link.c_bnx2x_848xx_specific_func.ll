; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_specific_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_specific_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 = common dso_local global i32 0, align 4
@NIG_REG_LATCH_BC_0 = common dso_local global i32 0, align 4
@NIG_LATCH_BC_ENABLE_MI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_848xx_specific_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_848xx_specific_func(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.link_params*, %struct.link_params** %5, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %45 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %27 = load %struct.link_params*, %struct.link_params** %5, align 8
  %28 = getelementptr inbounds %struct.link_params, %struct.link_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bnx2x_save_848xx_spirom_version(%struct.bnx2x_phy* %25, %struct.bnx2x* %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %18, %12
  %32 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %33 = load i32, i32* @NIG_REG_LATCH_BC_0, align 4
  %34 = load %struct.link_params*, %struct.link_params** %5, align 8
  %35 = getelementptr inbounds %struct.link_params, %struct.link_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 4
  %38 = add nsw i32 %33, %37
  %39 = load i32, i32* @NIG_LATCH_BC_ENABLE_MI_INT, align 4
  %40 = shl i32 1, %39
  %41 = call i32 @bnx2x_bits_en(%struct.bnx2x* %32, i32 %38, i32 %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %44 = call i32 @bnx2x_848xx_set_led(%struct.bnx2x* %42, %struct.bnx2x_phy* %43)
  br label %45

45:                                               ; preds = %3, %31
  ret void
}

declare dso_local i32 @bnx2x_save_848xx_spirom_version(%struct.bnx2x_phy*, %struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_848xx_set_led(%struct.bnx2x*, %struct.bnx2x_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
