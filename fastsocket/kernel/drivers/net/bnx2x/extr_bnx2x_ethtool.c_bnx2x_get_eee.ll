; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@eee_status = common dso_local global i32* null, align 8
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BC Version does not support EEE\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SHMEM_EEE_SUPPORTED_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_SUPPORTED_SHIFT = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_SHIFT = common dso_local global i32 0, align 4
@SHMEM_EEE_LP_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_LP_ADV_STATUS_SHIFT = common dso_local global i32 0, align 4
@SHMEM_EEE_TIMER_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_REQUESTED_BIT = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@SHMEM_EEE_LPI_REQUESTED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @bnx2x_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %11 = load i32*, i32** @eee_status, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %13 = call i64 @BP_PORT(%struct.bnx2x* %12)
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SHMEM2_HAS(%struct.bnx2x* %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %20 = call i32 @DP(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %2
  %24 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SHMEM_EEE_SUPPORTED_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SHMEM_EEE_SUPPORTED_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = call i8* @bnx2x_eee_to_adv(i32 %32)
  %34 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SHMEM_EEE_ADV_STATUS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SHMEM_EEE_ADV_STATUS_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = call i8* @bnx2x_eee_to_adv(i32 %40)
  %42 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = call i8* @bnx2x_eee_to_adv(i32 %48)
  %50 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SHMEM_EEE_TIMER_MASK, align 4
  %54 = and i32 %52, %53
  %55 = shl i32 %54, 4
  %56 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SHMEM_EEE_REQUESTED_BIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SHMEM_EEE_LPI_REQUESTED_BIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %23, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i8* @bnx2x_eee_to_adv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
