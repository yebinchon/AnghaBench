; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_sriov = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@PCICFG_OFFSET = common dso_local global i64 0, align 8
@GRC_CONFIG_REG_PF_INIT_VF = common dso_local global i64 0, align 8
@GRC_CR_PF_INIT_VF_PF_FIRST_VF_NUM_MASK = common dso_local global i32 0, align 4
@BNX2X_MAX_NUM_OF_VFS = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"IOV info[%d]: first vf %d, nres %d, cap 0x%x, ctrl 0x%x, total %d, initial %d, num vfs %d, offset %d, stride %d, page size 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_sriov*)* @bnx2x_sriov_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_sriov_info(%struct.bnx2x* %0, %struct.bnx2x_sriov* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_sriov*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_sriov* %1, %struct.bnx2x_sriov** %5, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %9 = call i64 @bnx2x_sriov_pci_cfg_info(%struct.bnx2x* %7, %struct.bnx2x_sriov* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %18 = load i64, i64* @PCICFG_OFFSET, align 8
  %19 = load i64, i64* @GRC_CONFIG_REG_PF_INIT_VF, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @REG_RD(%struct.bnx2x* %17, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GRC_CR_PF_INIT_VF_PF_FIRST_VF_NUM_MASK, align 4
  %24 = and i32 %22, %23
  %25 = mul nsw i32 %24, 8
  %26 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = call i32 @BP_PATH(%struct.bnx2x* %27)
  %29 = mul nsw i32 %26, %28
  %30 = sub nsw i32 %25, %29
  %31 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = call i32 @BP_FUNC(%struct.bnx2x* %34)
  %36 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %43 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %55 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %58 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %61 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DP(i32 %33, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i64 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %14, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @bnx2x_sriov_pci_cfg_info(%struct.bnx2x*, %struct.bnx2x_sriov*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
