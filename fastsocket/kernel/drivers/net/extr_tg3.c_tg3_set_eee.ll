; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_set_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i64 }
%struct.tg3 = type { i32, i32, %struct.ethtool_eee }

@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Board does not support EEE!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Direct manipulation of EEE advertisement is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TG3_CPMU_DBTMR1_LNKIDLE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Maximal Tx Lpi timer supported is %#x(u)\0A\00", align 1
@TG3_PHYFLG_USER_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @tg3_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.tg3*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.tg3* @netdev_priv(%struct.net_device* %7)
  store %struct.tg3* %8, %struct.tg3** %6, align 8
  %9 = load %struct.tg3*, %struct.tg3** %6, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.tg3*, %struct.tg3** %6, align 8
  %17 = getelementptr inbounds %struct.tg3, %struct.tg3* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @netdev_warn(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tg3*, %struct.tg3** %6, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.tg3*, %struct.tg3** %6, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @netdev_warn(i32 %34, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %80

38:                                               ; preds = %22
  %39 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TG3_CPMU_DBTMR1_LNKIDLE_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.tg3*, %struct.tg3** %6, align 8
  %46 = getelementptr inbounds %struct.tg3, %struct.tg3* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @TG3_CPMU_DBTMR1_LNKIDLE_MAX, align 8
  %49 = call i32 (i32, i8*, ...) @netdev_warn(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %80

52:                                               ; preds = %38
  %53 = load %struct.tg3*, %struct.tg3** %6, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 2
  %55 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %56 = bitcast %struct.ethtool_eee* %54 to i8*
  %57 = bitcast %struct.ethtool_eee* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load i32, i32* @TG3_PHYFLG_USER_CONFIGURED, align 4
  %59 = load %struct.tg3*, %struct.tg3** %6, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.tg3*, %struct.tg3** %6, align 8
  %64 = call i32 @tg3_warn_mgmt_link_flap(%struct.tg3* %63)
  %65 = load %struct.tg3*, %struct.tg3** %6, align 8
  %66 = getelementptr inbounds %struct.tg3, %struct.tg3* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @netif_running(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %52
  %71 = load %struct.tg3*, %struct.tg3** %6, align 8
  %72 = call i32 @tg3_full_lock(%struct.tg3* %71, i32 0)
  %73 = load %struct.tg3*, %struct.tg3** %6, align 8
  %74 = call i32 @tg3_setup_eee(%struct.tg3* %73)
  %75 = load %struct.tg3*, %struct.tg3** %6, align 8
  %76 = call i32 @tg3_phy_reset(%struct.tg3* %75)
  %77 = load %struct.tg3*, %struct.tg3** %6, align 8
  %78 = call i32 @tg3_full_unlock(%struct.tg3* %77)
  br label %79

79:                                               ; preds = %70, %52
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %44, %31, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tg3_warn_mgmt_link_flap(%struct.tg3*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @tg3_full_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_setup_eee(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_reset(%struct.tg3*) #1

declare dso_local i32 @tg3_full_unlock(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
