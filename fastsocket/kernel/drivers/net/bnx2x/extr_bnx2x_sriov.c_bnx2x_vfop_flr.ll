; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_flr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bnx2x_vfop_args_qx }
%struct.bnx2x_vfop_args_qx = type { i32 }

@__const.bnx2x_vfop_flr.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_flr to void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*), i32 0 }, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"VF[%d] FLR error: rc %d\0A\00", align 1
@VF_FLR_ACK = common dso_local global i32 0, align 4
@CHANNEL_TLV_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_flr(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_vfop_args_qx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_vfop_cmd, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %11 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %9, %struct.bnx2x_virtf* %10)
  store %struct.bnx2x_vfop* %11, %struct.bnx2x_vfop** %5, align 8
  %12 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.bnx2x_vfop_args_qx* %14, %struct.bnx2x_vfop_args_qx** %6, align 8
  %15 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = bitcast %struct.bnx2x_vfop_cmd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vfop_flr.cmd to i8*), i64 16, i1 false)
  %19 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %20 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %85

24:                                               ; preds = %2
  %25 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %26 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %81 [
    i32 128, label %32
    i32 129, label %69
  ]

32:                                               ; preds = %24
  %33 = load %struct.bnx2x_vfop_args_qx*, %struct.bnx2x_vfop_args_qx** %6, align 8
  %34 = getelementptr inbounds %struct.bnx2x_vfop_args_qx, %struct.bnx2x_vfop_args_qx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %38 = call i32 @vf_rxq_count(%struct.bnx2x_virtf* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %43 = load %struct.bnx2x_vfop_args_qx*, %struct.bnx2x_vfop_args_qx** %6, align 8
  %44 = getelementptr inbounds %struct.bnx2x_vfop_args_qx, %struct.bnx2x_vfop_args_qx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @bnx2x_vfop_qflr_cmd(%struct.bnx2x* %41, %struct.bnx2x_virtf* %42, %struct.bnx2x_vfop_cmd* %8, i32 %45)
  %47 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %48 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %50 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %85

54:                                               ; preds = %40
  br label %105

55:                                               ; preds = %32
  %56 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %56, i32 0, i32 0
  store i32 129, i32* %57, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %60 = call i64 @bnx2x_vfop_mcast_cmd(%struct.bnx2x* %58, %struct.bnx2x_virtf* %59, %struct.bnx2x_vfop_cmd* %8, i32* null, i32 0, i32 1)
  %61 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %62 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %85

68:                                               ; preds = %55
  br label %105

69:                                               ; preds = %24
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %72 = call i32 @bnx2x_vf_flr_clnup_hw(%struct.bnx2x* %70, %struct.bnx2x_virtf* %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %75 = call i32 @bnx2x_vf_free_resc(%struct.bnx2x* %73, %struct.bnx2x_virtf* %74)
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %78 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bnx2x_vf_enable_mbx(%struct.bnx2x* %76, i32 %79)
  br label %93

81:                                               ; preds = %24
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bnx2x_vfop_default(i32 %82)
  br label %84

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %67, %53, %23
  %86 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %87 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %90 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %85, %69
  %94 = load i32, i32* @VF_FLR_ACK, align 4
  %95 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %96 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %98 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %99 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %100 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %97, %struct.bnx2x_virtf* %98, %struct.bnx2x_vfop* %99)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %103 = load i32, i32* @CHANNEL_TLV_FLR, align 4
  %104 = call i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x* %101, %struct.bnx2x_virtf* %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %68, %54
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i64 @bnx2x_vfop_qflr_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32) #1

declare dso_local i64 @bnx2x_vfop_mcast_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_flr_clnup_hw(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_free_resc(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_enable_mbx(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i64) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

declare dso_local i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
