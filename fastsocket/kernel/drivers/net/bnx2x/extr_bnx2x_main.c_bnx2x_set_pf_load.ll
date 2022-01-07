; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_pf_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_pf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_PATH1_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BNX2X_PATH0_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BNX2X_PATH1_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@BNX2X_PATH0_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_RECOVERY_REG = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Old GEN_REG_VAL=0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_pf_load(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i64 @BP_PATH(%struct.bnx2x* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BNX2X_PATH1_LOAD_CNT_MASK, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BNX2X_PATH0_LOAD_CNT_MASK, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = call i64 @BP_PATH(%struct.bnx2x* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @BNX2X_PATH1_LOAD_CNT_SHIFT, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @BNX2X_PATH0_LOAD_CNT_SHIFT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %27 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %30 = call i32 @REG_RD(%struct.bnx2x* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DP(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @REG_WR(%struct.bnx2x* %56, i32 %57, i32 %58)
  %60 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %61 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %62 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %60, i32 %61)
  ret void
}

declare dso_local i64 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
