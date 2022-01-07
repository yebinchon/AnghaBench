; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ext_phy_10G_an_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ext_phy_10G_an_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }
%struct.link_vars = type { i32 }

@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@LINK_STATUS_PARALLEL_DETECTION_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_vars*)* @bnx2x_ext_phy_10G_an_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %10 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %11 = load i32, i32* @MDIO_AN_REG_STATUS, align 4
  %12 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %8, %struct.bnx2x_phy* %9, i32 %10, i32 %11, i32* %7)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %15 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %16 = load i32, i32* @MDIO_AN_REG_STATUS, align 4
  %17 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %13, %struct.bnx2x_phy* %14, i32 %15, i32 %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %23 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %24 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @LINK_STATUS_PARALLEL_DETECTION_USED, align 4
  %33 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %34 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
