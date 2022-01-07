; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_nic_load_analyze_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_nic_load_analyze_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@FW_MSG_CODE_DRV_LOAD_COMMON_CHIP = common dso_local global i64 0, align 8
@FW_MSG_CODE_DRV_LOAD_COMMON = common dso_local global i64 0, align 8
@BCM_5710_FW_MINOR_VERSION = common dso_local global i32 0, align 4
@BCM_5710_FW_REVISION_VERSION = common dso_local global i32 0, align 4
@BCM_5710_FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@XSEM_REG_PRAM = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"loaded fw %x, my fw %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"bnx2x with FW %x was already loaded which mismatches my %x FW. Aborting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_nic_load_analyze_req(%struct.bnx2x* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON_CHIP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i32, i32* @BCM_5710_FW_MINOR_VERSION, align 4
  %17 = shl i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* @BCM_5710_FW_REVISION_VERSION, align 4
  %20 = shl i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* @BCM_5710_FW_ENGINEERING_VERSION, align 4
  %24 = shl i32 %23, 24
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = load i32, i32* @XSEM_REG_PRAM, align 4
  %29 = call i64 @REG_RD(%struct.bnx2x* %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* @BNX2X_MSG_SP, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %15
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43, %11, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i64, i64) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
