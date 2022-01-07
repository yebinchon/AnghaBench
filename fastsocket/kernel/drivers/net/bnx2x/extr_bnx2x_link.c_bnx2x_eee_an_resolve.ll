; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_eee_an_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_eee_an_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32 }

@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_AN_REG_LP_EEE_ADV = common dso_local global i32 0, align 4
@SHMEM_EEE_100M_ADV = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EEE negotiated - 100M\0A\00", align 1
@SHMEM_EEE_1G_ADV = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"EEE negotiated - 1G\0A\00", align 1
@SHMEM_EEE_10G_ADV = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"EEE negotiated - 10G\0A\00", align 1
@SHMEM_EEE_LP_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_LP_ADV_STATUS_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"EEE is active\0A\00", align 1
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_eee_an_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_eee_an_resolve(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %12 = load %struct.link_params*, %struct.link_params** %5, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  store %struct.bnx2x* %14, %struct.bnx2x** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %17 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %18 = load i32, i32* @MDIO_AN_REG_EEE_ADV, align 4
  %19 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %15, %struct.bnx2x_phy* %16, i32 %17, i32 %18, i32* %8)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %22 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %23 = load i32, i32* @MDIO_AN_REG_LP_EEE_ADV, align 4
  %24 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %20, %struct.bnx2x_phy* %21, i32 %22, i32 %23, i32* %9)
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @SHMEM_EEE_100M_ADV, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %37 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPEED_100, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* @NETIF_MSG_LINK, align 4
  %44 = call i32 @DP(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %28
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 20
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* @SHMEM_EEE_1G_ADV, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 20
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %59 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPEED_1000, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* @NETIF_MSG_LINK, align 4
  %66 = call i32 @DP(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %50
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 104
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* @SHMEM_EEE_10G_ADV, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 104
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %81 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SPEED_10000, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* @NETIF_MSG_LINK, align 4
  %88 = call i32 @DP(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %72
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %94 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %101 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %90
  %107 = load i32, i32* @NETIF_MSG_LINK, align 4
  %108 = call i32 @DP(i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %110 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %111 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %106, %90
  ret void
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
