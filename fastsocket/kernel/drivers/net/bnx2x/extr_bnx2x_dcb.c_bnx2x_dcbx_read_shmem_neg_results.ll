; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_read_shmem_neg_results.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_read_shmem_neg_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }
%struct.lldp_local_mib = type { i32, i32, i32 }

@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dcbx_neg_res_offset 0x%x\0A\00", align 1
@SHMEM_DCBX_NEG_RES_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"FW doesn't support dcbx_neg_res_offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_READ_LOCAL_MIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to read local mib from FW\0A\00", align 1
@dcbx_neg_res_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_dcbx_read_shmem_neg_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_dcbx_read_shmem_neg_results(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.lldp_local_mib, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = bitcast %struct.lldp_local_mib* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @SHMEM2_RD(%struct.bnx2x* %8, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @DP(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* @SHMEM_DCBX_NEG_RES_NONE, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = bitcast %struct.lldp_local_mib* %4 to i64*
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @DCBX_READ_LOCAL_MIB, align 4
  %27 = call i32 @bnx2x_dcbx_read_mib(%struct.bnx2x* %23, i64* %24, i64 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.lldp_local_mib, %struct.lldp_local_mib* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.lldp_local_mib, %struct.lldp_local_mib* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %30, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SHMEM2_RD(%struct.bnx2x*, i32) #2

declare dso_local i32 @DP(i32, i8*, i64) #2

declare dso_local i32 @BNX2X_ERR(i8*) #2

declare dso_local i32 @bnx2x_dcbx_read_mib(%struct.bnx2x*, i64*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
