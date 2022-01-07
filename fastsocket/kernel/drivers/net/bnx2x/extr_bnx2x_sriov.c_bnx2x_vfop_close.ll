; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bnx2x_vfop_args_qx }
%struct.bnx2x_vfop_args_qx = type { i32 }
%struct.set_vf_state_cookie = type { i32, %struct.bnx2x_virtf* }

@__const.bnx2x_vfop_close.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_close to void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*), i32 0 }, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"disabling igu\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"clearing qtbl\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"VF[%d] CLOSE error: rc %d\0A\00", align 1
@VF_ACQUIRED = common dso_local global i32 0, align 4
@bnx2x_set_vf_state = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"set state to acquired\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_close(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_vfop_args_qx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_vfop_cmd, align 8
  %9 = alloca %struct.set_vf_state_cookie, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %12 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %10, %struct.bnx2x_virtf* %11)
  store %struct.bnx2x_vfop* %12, %struct.bnx2x_vfop** %5, align 8
  %13 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.bnx2x_vfop_args_qx* %15, %struct.bnx2x_vfop_args_qx** %6, align 8
  %16 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = bitcast %struct.bnx2x_vfop_cmd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vfop_close.cmd to i8*), i64 16, i1 false)
  %20 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %85

25:                                               ; preds = %2
  %26 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, ...) @DP(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %81 [
    i32 128, label %33
    i32 129, label %70
  ]

33:                                               ; preds = %25
  %34 = load %struct.bnx2x_vfop_args_qx*, %struct.bnx2x_vfop_args_qx** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2x_vfop_args_qx, %struct.bnx2x_vfop_args_qx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %39 = call i32 @vf_rxq_count(%struct.bnx2x_virtf* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %44 = load %struct.bnx2x_vfop_args_qx*, %struct.bnx2x_vfop_args_qx** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2x_vfop_args_qx, %struct.bnx2x_vfop_args_qx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @bnx2x_vfop_qdown_cmd(%struct.bnx2x* %42, %struct.bnx2x_virtf* %43, %struct.bnx2x_vfop_cmd* %8, i32 %46)
  %48 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %85

55:                                               ; preds = %41
  br label %107

56:                                               ; preds = %33
  %57 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %58 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %57, i32 0, i32 0
  store i32 129, i32* %58, align 8
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %61 = call i64 @bnx2x_vfop_mcast_cmd(%struct.bnx2x* %59, %struct.bnx2x_virtf* %60, %struct.bnx2x_vfop_cmd* %8, i32* null, i32 0, i32 0)
  %62 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %65 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %85

69:                                               ; preds = %56
  br label %107

70:                                               ; preds = %25
  %71 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %72 = call i32 (i32, i8*, ...) @DP(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %75 = call i32 @bnx2x_vf_igu_disable(%struct.bnx2x* %73, %struct.bnx2x_virtf* %74)
  %76 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %77 = call i32 (i32, i8*, ...) @DP(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %80 = call i32 @bnx2x_vf_clr_qtbl(%struct.bnx2x* %78, %struct.bnx2x_virtf* %79)
  br label %93

81:                                               ; preds = %25
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bnx2x_vfop_default(i32 %82)
  br label %84

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %68, %54, %24
  %86 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %87 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %90 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %85, %70
  %94 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %95 = getelementptr inbounds %struct.set_vf_state_cookie, %struct.set_vf_state_cookie* %9, i32 0, i32 1
  store %struct.bnx2x_virtf* %94, %struct.bnx2x_virtf** %95, align 8
  %96 = load i32, i32* @VF_ACQUIRED, align 4
  %97 = getelementptr inbounds %struct.set_vf_state_cookie, %struct.set_vf_state_cookie* %9, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = load i32, i32* @bnx2x_set_vf_state, align 4
  %100 = call i32 @bnx2x_stats_safe_exec(%struct.bnx2x* %98, i32 %99, %struct.set_vf_state_cookie* %9)
  %101 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %102 = call i32 (i32, i8*, ...) @DP(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %104 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %105 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %106 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %103, %struct.bnx2x_virtf* %104, %struct.bnx2x_vfop* %105)
  br label %107

107:                                              ; preds = %93, %69, %55
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i64 @bnx2x_vfop_qdown_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32) #1

declare dso_local i64 @bnx2x_vfop_mcast_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_igu_disable(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_clr_qtbl(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i64) #1

declare dso_local i32 @bnx2x_stats_safe_exec(%struct.bnx2x*, i32, %struct.set_vf_state_cookie*) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
