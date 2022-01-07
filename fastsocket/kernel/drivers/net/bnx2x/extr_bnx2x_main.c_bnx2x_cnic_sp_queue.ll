; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_sp_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_sp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kwqe_16 = type { i32 }
%struct.bnx2x = type { i64, i64, %struct.TYPE_8__, i32, %struct.eth_spe*, %struct.eth_spe*, %struct.eth_spe*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.eth_spe = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@BNX2X_RECOVERY_NIC_LOADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Handling parity error recovery. Try again later\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MAX_SP_DESC_CNT = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"L5 SPQE %x %x %x:%x pos %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.kwqe_16**, i32)* @bnx2x_cnic_sp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cnic_sp_queue(%struct.net_device* %0, %struct.kwqe_16** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kwqe_16**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eth_spe*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.kwqe_16** %1, %struct.kwqe_16*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %11)
  store %struct.bnx2x* %12, %struct.bnx2x** %8, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BNX2X_RECOVERY_NIC_LOADING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %122

28:                                               ; preds = %18, %3
  %29 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_bh(i32* %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %102, %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %105

36:                                               ; preds = %32
  %37 = load %struct.kwqe_16**, %struct.kwqe_16*** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.kwqe_16*, %struct.kwqe_16** %37, i64 %39
  %41 = load %struct.kwqe_16*, %struct.kwqe_16** %40, align 8
  %42 = bitcast %struct.kwqe_16* %41 to %struct.eth_spe*
  store %struct.eth_spe* %42, %struct.eth_spe** %10, align 8
  %43 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAX_SP_DESC_CNT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %105

49:                                               ; preds = %36
  %50 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 4
  %52 = load %struct.eth_spe*, %struct.eth_spe** %51, align 8
  %53 = load %struct.eth_spe*, %struct.eth_spe** %10, align 8
  %54 = bitcast %struct.eth_spe* %52 to i8*
  %55 = bitcast %struct.eth_spe* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 16, i1 false)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @BNX2X_MSG_SP, align 4
  %61 = load %struct.eth_spe*, %struct.eth_spe** %10, align 8
  %62 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.eth_spe*, %struct.eth_spe** %10, align 8
  %66 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.eth_spe*, %struct.eth_spe** %10, align 8
  %70 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.eth_spe*, %struct.eth_spe** %10, align 8
  %75 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DP(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %68, i32 %73, i32 %78, i32 %81)
  %83 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 4
  %85 = load %struct.eth_spe*, %struct.eth_spe** %84, align 8
  %86 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %87 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %86, i32 0, i32 6
  %88 = load %struct.eth_spe*, %struct.eth_spe** %87, align 8
  %89 = icmp eq %struct.eth_spe* %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %49
  %91 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %92 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %91, i32 0, i32 5
  %93 = load %struct.eth_spe*, %struct.eth_spe** %92, align 8
  %94 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 4
  store %struct.eth_spe* %93, %struct.eth_spe** %95, align 8
  br label %101

96:                                               ; preds = %49
  %97 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %98 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %97, i32 0, i32 4
  %99 = load %struct.eth_spe*, %struct.eth_spe** %98, align 8
  %100 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %99, i32 1
  store %struct.eth_spe* %100, %struct.eth_spe** %98, align 8
  br label %101

101:                                              ; preds = %96, %90
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %32

105:                                              ; preds = %48, %32
  %106 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 3
  %108 = call i32 @spin_unlock_bh(i32* %107)
  %109 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %110 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %111, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %119 = call i32 @bnx2x_cnic_sp_post(%struct.bnx2x* %118, i32 0)
  br label %120

120:                                              ; preds = %117, %105
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %24
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2x_cnic_sp_post(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
