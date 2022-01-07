; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8073_xaui_wa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8073_xaui_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8073_CHIP_REV = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8073_SPEED_LINK_STATUS = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XAUI work-around not required\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bit 15 went off\0A\00", align 1
@MDIO_PMA_REG_8073_XAUI_WA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"XAUI workaround has completed\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Warning: XAUI work-around timeout !!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*)* @bnx2x_8073_xaui_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8073_xaui_wa(%struct.bnx2x* %0, %struct.bnx2x_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %11 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %12 = load i32, i32* @MDIO_PMA_REG_8073_CHIP_REV, align 4
  %13 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %9, %struct.bnx2x_phy* %10, i32 %11, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %68, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1000
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %24 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %25 = load i32, i32* @MDIO_PMA_REG_8073_SPEED_LINK_STATUS, align 4
  %26 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %22, %struct.bnx2x_phy* %23, i32 %24, i32 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 16384
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 8192
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* @NETIF_MSG_LINK, align 4
  %36 = call i32 @DP(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 32768
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @NETIF_MSG_LINK, align 4
  %43 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %61, %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 1000
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %49 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %50 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %51 = load i32, i32* @MDIO_PMA_REG_8073_XAUI_WA, align 4
  %52 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %48, %struct.bnx2x_phy* %49, i32 %50, i32 %51, i32* %6)
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 32768
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @NETIF_MSG_LINK, align 4
  %58 = call i32 @DP(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

59:                                               ; preds = %47
  %60 = call i32 @usleep_range(i32 3000, i32 6000)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %44

64:                                               ; preds = %44
  br label %71

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65
  %67 = call i32 @usleep_range(i32 3000, i32 6000)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %18

71:                                               ; preds = %64, %18
  %72 = load i32, i32* @NETIF_MSG_LINK, align 4
  %73 = call i32 @DP(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %56, %34, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
