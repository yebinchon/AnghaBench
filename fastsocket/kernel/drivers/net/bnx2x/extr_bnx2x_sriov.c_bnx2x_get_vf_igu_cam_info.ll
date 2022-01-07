; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_get_vf_igu_cam_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_get_vf_igu_cam_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@IGU_REG_MAPPING_MEMORY_SIZE = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@IGU_REG_MAPPING_MEMORY_VALID = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY_FID = common dso_local global i32 0, align 4
@IGU_FID_ENCODE_IS_PF = common dso_local global i32 0, align 4
@IGU_FID_VF_NUM_MASK = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s[%d], igu_sb_id=%d, msix=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"VF\00", align 1
@IGU_FID_PF_NUM_MASK = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_get_vf_igu_cam_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_vf_igu_cam_info(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %65, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IGU_REG_MAPPING_MEMORY_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %68

10:                                               ; preds = %6
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @REG_RD(%struct.bnx2x* %11, i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IGU_REG_MAPPING_MEMORY_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %65

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IGU_REG_MAPPING_MEMORY_FID, align 4
  %26 = call i32 @GET_FIELD(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IGU_FID_VF_NUM_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @bnx2x_vf_set_igu_info(%struct.bnx2x* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IGU_FID_PF_NUM_MASK, align 4
  %53 = and i32 %51, %52
  br label %58

54:                                               ; preds = %38
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @IGU_FID_VF_NUM_MASK, align 4
  %57 = and i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IGU_REG_MAPPING_MEMORY_VECTOR, align 4
  %63 = call i32 @GET_FIELD(i32 %61, i32 %62)
  %64 = call i32 @DP(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %22
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %6

68:                                               ; preds = %6
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @bnx2x_vf_set_igu_info(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
