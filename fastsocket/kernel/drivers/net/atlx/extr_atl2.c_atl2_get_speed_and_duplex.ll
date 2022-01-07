; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_get_speed_and_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_get_speed_and_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@MII_ATLX_PSSR = common dso_local global i32 0, align 4
@MII_ATLX_PSSR_SPD_DPLX_RESOLVED = common dso_local global i32 0, align 4
@ATLX_ERR_PHY_RES = common dso_local global i64 0, align 8
@MII_ATLX_PSSR_SPEED = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@ATLX_ERR_PHY_SPEED = common dso_local global i64 0, align 8
@MII_ATLX_PSSR_DPLX = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl2_hw*, i32*, i32*)* @atl2_get_speed_and_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl2_get_speed_and_duplex(%struct.atl2_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.atl2_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %11 = load i32, i32* @MII_ATLX_PSSR, align 4
  %12 = call i64 @atl2_read_phy_reg(%struct.atl2_hw* %10, i32 %11, i32* %9)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %4, align 8
  br label %48

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MII_ATLX_PSSR_SPD_DPLX_RESOLVED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @ATLX_ERR_PHY_RES, align 8
  store i64 %23, i64* %4, align 8
  br label %48

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MII_ATLX_PSSR_SPEED, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @SPEED_100, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @SPEED_10, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i64, i64* @ATLX_ERR_PHY_SPEED, align 8
  store i64 %35, i64* %4, align 8
  br label %48

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MII_ATLX_PSSR_DPLX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @FULL_DUPLEX, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @HALF_DUPLEX, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %47, %34, %22, %15
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i64 @atl2_read_phy_reg(%struct.atl2_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
