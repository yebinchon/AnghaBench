; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_sendonly_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_sendonly_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_mcmember_rec = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_mcast = type { %struct.TYPE_4__, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32 }

@__const.ipoib_mcast_sendonly_join.rec = private unnamed_addr constant %struct.ib_sa_mcmember_rec { i32 1, i32 0, i32 0, %struct.TYPE_3__ zeroinitializer }, align 4
@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"device shutting down, no multicast joins\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"multicast entry busy, skipping\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ipoib_sa_client = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ipoib_mcast_sendonly_join_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"ib_sa_join_multicast failed (ret = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"no multicast record for %pI6, starting join\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_mcast*)* @ipoib_mcast_sendonly_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_sendonly_join(%struct.ipoib_mcast* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_mcast*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec, align 4
  %7 = alloca i32, align 4
  store %struct.ipoib_mcast* %0, %struct.ipoib_mcast** %3, align 8
  %8 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %5, align 8
  %13 = bitcast %struct.ib_sa_mcmember_rec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.ib_sa_mcmember_rec* @__const.ipoib_mcast_sendonly_join.rec to i8*), i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 4
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %21 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %1
  %25 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %26 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %27 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %26, i32 0, i32 1
  %28 = call i64 @test_and_set_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %32 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %97

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 3
  %37 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %38 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_3__* %36 to i8*
  %41 = bitcast %struct.TYPE_3__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %41, i64 4, i1 false)
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_be16(i32 %48)
  %50 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %58 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = load i32, i32* @ipoib_mcast_sendonly_join_complete, align 4
  %66 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %67 = call i32 @ib_sa_join_multicast(i32* @ipoib_sa_client, i32 %53, i32 %56, %struct.ib_sa_mcmember_rec* %6, i32 %63, i32 %64, i32 %65, %struct.ipoib_mcast* %66)
  %68 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %69 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %71 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %35
  %76 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %77 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %81 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %82 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %81, i32 0, i32 1
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %95

87:                                               ; preds = %35
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %89 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  %90 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %87, %75
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %30, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_sa_join_multicast(i32*, i32, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.ipoib_mcast*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
