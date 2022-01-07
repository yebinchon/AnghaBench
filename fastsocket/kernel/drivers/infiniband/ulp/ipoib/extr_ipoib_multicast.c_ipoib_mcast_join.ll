; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_mcast = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [19 x i8] c"joining MGID %pI6\0A\00", align 1
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@IB_SA_EQ = common dso_local global i8* null, align 8
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@ipoib_sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipoib_mcast_join_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ib_sa_join_multicast failed, status %d\0A\00", align 1
@IPOIB_MAX_BACKOFF_SECONDS = common dso_local global i32 0, align 4
@mcast_mutex = common dso_local global i32 0, align 4
@IPOIB_MCAST_RUN = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipoib_mcast*, i32)* @ipoib_mcast_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_mcast_join(%struct.net_device* %0, %struct.ipoib_mcast* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipoib_mcast*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ib_sa_mcmember_rec, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %7, align 8
  %13 = bitcast %struct.ib_sa_mcmember_rec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 64, i1 false)
  %14 = bitcast i8* %13 to %struct.ib_sa_mcmember_rec*
  %15 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %17 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %18 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 12
  %24 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %25 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = bitcast %struct.TYPE_5__* %23 to i8*
  %28 = bitcast %struct.TYPE_5__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 11
  store i32 %31, i32* %32, align 8
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 10
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %39 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %3
  %48 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %49 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 9
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** @IB_SA_EQ, align 8
  %75 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 8
  store i8* %74, i8** %75, align 8
  %76 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %77 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %76, i32 0, i32 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 7
  store i32 %81, i32* %82, align 4
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 6
  store i32 %88, i32* %89, align 8
  %90 = load i8*, i8** @IB_SA_EQ, align 8
  %91 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 5
  store i8* %90, i8** %91, align 8
  %92 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %93 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %92, i32 0, i32 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 4
  store i32 %97, i32* %98, align 8
  %99 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %100 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %99, i32 0, i32 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %107 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %106, i32 0, i32 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %114 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %113, i32 0, i32 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %47, %3
  %121 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %122 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %123 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %122, i32 0, i32 2
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  %125 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %126 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %129 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = load i32, i32* @ipoib_mcast_join_complete, align 4
  %134 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %135 = call i32 @ib_sa_join_multicast(i32* @ipoib_sa_client, i32 %127, i32 %130, %struct.ib_sa_mcmember_rec* %8, i32 %131, i32 %132, i32 %133, %struct.ipoib_mcast* %134)
  %136 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %137 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %139 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @IS_ERR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %187

143:                                              ; preds = %120
  %144 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %145 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %146 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %145, i32 0, i32 2
  %147 = call i32 @clear_bit(i32 %144, i32* %146)
  %148 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %149 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @PTR_ERR(i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %156 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %157, 2
  store i32 %158, i32* %156, align 4
  %159 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %160 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %143
  %165 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %166 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %167 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %143
  %169 = call i32 @mutex_lock(i32* @mcast_mutex)
  %170 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %171 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %172 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %171, i32 0, i32 1
  %173 = call i64 @test_bit(i32 %170, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %168
  %176 = load i32, i32* @ipoib_workqueue, align 4
  %177 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %178 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %177, i32 0, i32 0
  %179 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %180 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @HZ, align 4
  %183 = mul nsw i32 %181, %182
  %184 = call i32 @queue_delayed_work(i32 %176, i32* %178, i32 %183)
  br label %185

185:                                              ; preds = %175, %168
  %186 = call i32 @mutex_unlock(i32* @mcast_mutex)
  br label %187

187:                                              ; preds = %185, %120
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ib_sa_join_multicast(i32*, i32, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.ipoib_mcast*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
