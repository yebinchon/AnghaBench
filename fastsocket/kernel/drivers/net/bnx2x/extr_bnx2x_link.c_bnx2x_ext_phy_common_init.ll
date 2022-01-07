; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ext_phy_common_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ext_phy_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ext_phy 0x%x common init not required\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Warning: PHY was not initialized, Port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32*, i32*, i32, i32, i32)* @bnx2x_ext_phy_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_ext_phy_common_init(%struct.bnx2x* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %46 [
    i32 135, label %15
    i32 132, label %22
    i32 130, label %22
    i32 129, label %22
    i32 131, label %29
    i32 134, label %36
    i32 133, label %36
    i32 128, label %43
  ]

15:                                               ; preds = %6
  %16 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @bnx2x_8073_common_init_phy(%struct.bnx2x* %16, i32* %17, i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %13, align 4
  br label %50

22:                                               ; preds = %6, %6, %6
  %23 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @bnx2x_8727_common_init_phy(%struct.bnx2x* %23, i32* %24, i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  br label %50

29:                                               ; preds = %6
  %30 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @bnx2x_8726_common_init_phy(%struct.bnx2x* %30, i32* %31, i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  br label %50

36:                                               ; preds = %6, %6
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @bnx2x_84833_common_init_phy(%struct.bnx2x* %37, i32* %38, i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  br label %50

43:                                               ; preds = %6
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %50

46:                                               ; preds = %6
  %47 = load i32, i32* @NETIF_MSG_LINK, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @DP(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %43, %36, %29, %22, %15
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @netdev_err(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i32 @bnx2x_8073_common_init_phy(%struct.bnx2x*, i32*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_8727_common_init_phy(%struct.bnx2x*, i32*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_8726_common_init_phy(%struct.bnx2x*, i32*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_84833_common_init_phy(%struct.bnx2x*, i32*, i32*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
