; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@SKY2_HW_FIBRE_PHY = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SKY2_HW_GIGABIT = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@PHY_M_PS_SPEED_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i32)* @sky2_phy_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_phy_speed(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %7 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SKY2_HW_FIBRE_PHY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SPEED_1000, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %16 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SKY2_HW_GIGABIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 129
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SPEED_100, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %21
  %28 = load i32, i32* @SPEED_10, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PHY_M_PS_SPEED_MSK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %37 [
    i32 128, label %33
    i32 129, label %35
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @SPEED_1000, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @SPEED_100, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @SPEED_10, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %27, %25, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
