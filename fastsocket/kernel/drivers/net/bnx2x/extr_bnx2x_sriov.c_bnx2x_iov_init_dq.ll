; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_init_dq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_init_dq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@DORQ_REG_VF_NORM_VF_BASE = common dso_local global i32 0, align 4
@DORQ_REG_MAX_RVFID_SIZE = common dso_local global i32 0, align 4
@BNX2X_MAX_NUM_OF_VFS = common dso_local global i32 0, align 4
@DORQ_REG_VF_NORM_CID_BASE = common dso_local global i32 0, align 4
@BNX2X_FIRST_VF_CID = common dso_local global i32 0, align 4
@DORQ_REG_VF_NORM_CID_WND_SIZE = common dso_local global i32 0, align 4
@BNX2X_VF_CID_WND = common dso_local global i32 0, align 4
@DORQ_REG_VF_NORM_CID_OFST = common dso_local global i32 0, align 4
@BNX2X_DB_SHIFT = common dso_local global i32 0, align 4
@BNX2X_DB_MIN_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_VF_TYPE_MASK_0 = common dso_local global i32 0, align 4
@DORQ_REG_VF_TYPE_VALUE_0 = common dso_local global i32 0, align 4
@DORQ_REG_VF_TYPE_MIN_MCID_0 = common dso_local global i32 0, align 4
@DORQ_REG_VF_TYPE_MAX_MCID_0 = common dso_local global i32 0, align 4
@DORQ_REG_VF_NORM_MAX_CID_COUNT = common dso_local global i32 0, align 4
@DORQ_REG_VF_USAGE_CT_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_iov_init_dq(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = call i32 @IS_SRIOV(%struct.bnx2x* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = load i32, i32* @DORQ_REG_VF_NORM_VF_BASE, align 4
  %10 = call i32 @REG_WR(%struct.bnx2x* %8, i32 %9, i32 0)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = load i32, i32* @DORQ_REG_MAX_RVFID_SIZE, align 4
  %13 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %14 = call i32 @ilog2(i32 %13)
  %15 = call i32 @REG_WR(%struct.bnx2x* %11, i32 %12, i32 %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = load i32, i32* @DORQ_REG_VF_NORM_CID_BASE, align 4
  %18 = load i32, i32* @BNX2X_FIRST_VF_CID, align 4
  %19 = call i32 @REG_WR(%struct.bnx2x* %16, i32 %17, i32 %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = load i32, i32* @DORQ_REG_VF_NORM_CID_WND_SIZE, align 4
  %22 = load i32, i32* @BNX2X_VF_CID_WND, align 4
  %23 = call i32 @REG_WR(%struct.bnx2x* %20, i32 %21, i32 %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = load i32, i32* @DORQ_REG_VF_NORM_CID_OFST, align 4
  %26 = load i32, i32* @BNX2X_DB_SHIFT, align 4
  %27 = load i32, i32* @BNX2X_DB_MIN_SHIFT, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @REG_WR(%struct.bnx2x* %24, i32 %25, i32 %28)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = load i32, i32* @DORQ_REG_VF_TYPE_MASK_0, align 4
  %32 = call i32 @REG_WR(%struct.bnx2x* %30, i32 %31, i32 1)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load i32, i32* @DORQ_REG_VF_TYPE_VALUE_0, align 4
  %35 = call i32 @REG_WR(%struct.bnx2x* %33, i32 %34, i32 0)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = load i32, i32* @DORQ_REG_VF_TYPE_MIN_MCID_0, align 4
  %38 = call i32 @REG_WR(%struct.bnx2x* %36, i32 %37, i32 0)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = load i32, i32* @DORQ_REG_VF_TYPE_MAX_MCID_0, align 4
  %41 = call i32 @REG_WR(%struct.bnx2x* %39, i32 %40, i32 131071)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = load i32, i32* @DORQ_REG_VF_NORM_MAX_CID_COUNT, align 4
  %44 = call i32 @REG_WR(%struct.bnx2x* %42, i32 %43, i32 131072)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %46 = load i32, i32* @DORQ_REG_VF_USAGE_CT_LIMIT, align 4
  %47 = call i32 @REG_WR(%struct.bnx2x* %45, i32 %46, i32 4)
  br label %48

48:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
