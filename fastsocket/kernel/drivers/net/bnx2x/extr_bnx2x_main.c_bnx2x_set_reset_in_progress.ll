; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_reset_in_progress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_reset_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_PATH1_RST_IN_PROG_BIT = common dso_local global i32 0, align 4
@BNX2X_PATH0_RST_IN_PROG_BIT = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_RECOVERY_REG = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_reset_in_progress(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i64 @BP_PATH(%struct.bnx2x* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @BNX2X_PATH1_RST_IN_PROG_BIT, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BNX2X_PATH0_RST_IN_PROG_BIT, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %16 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %14, i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %19 = call i32 @REG_RD(%struct.bnx2x* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @REG_WR(%struct.bnx2x* %23, i32 %24, i32 %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %29 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %27, i32 %28)
  ret void
}

declare dso_local i64 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
