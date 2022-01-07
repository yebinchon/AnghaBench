; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_pfc_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_pfc_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dcbx_pfc_feature = type { i32, i64 }

@DCBX_LOCAL_PFC_ERROR = common dso_local global i32 0, align 4
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DCBX_LOCAL_PFC_ERROR\0A\00", align 1
@DCBX_REMOTE_PFC_TLV_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"DCBX_REMOTE_PFC_TLV_NOT_FOUND\0A\00", align 1
@DCBX_LOCAL_PFC_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"DCBX_LOCAL_PFC_DISABLED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.dcbx_pfc_feature*, i32)* @bnx2x_dcbx_get_pfc_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_get_pfc_feature(%struct.bnx2x* %0, %struct.dcbx_pfc_feature* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.dcbx_pfc_feature*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.dcbx_pfc_feature* %1, %struct.dcbx_pfc_feature** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DCBX_LOCAL_PFC_ERROR, align 4
  %9 = call i64 @GET_FLAGS(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %13 = call i32 @DP(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DCBX_REMOTE_PFC_TLV_NOT_FOUND, align 4
  %17 = call i64 @GET_FLAGS(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %21 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %22
  %30 = load %struct.dcbx_pfc_feature*, %struct.dcbx_pfc_feature** %5, align 8
  %31 = getelementptr inbounds %struct.dcbx_pfc_feature, %struct.dcbx_pfc_feature* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DCBX_LOCAL_PFC_ERROR, align 4
  %37 = load i32, i32* @DCBX_LOCAL_PFC_MISMATCH, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DCBX_REMOTE_PFC_TLV_NOT_FOUND, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @GET_FLAGS(i32 %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %34
  %44 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.dcbx_pfc_feature*, %struct.dcbx_pfc_feature** %5, align 8
  %49 = getelementptr inbounds %struct.dcbx_pfc_feature, %struct.dcbx_pfc_feature* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = xor i32 %50, -1
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  br label %67

56:                                               ; preds = %34, %29, %22
  %57 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %58 = call i32 @DP(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %64 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %43
  ret void
}

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
