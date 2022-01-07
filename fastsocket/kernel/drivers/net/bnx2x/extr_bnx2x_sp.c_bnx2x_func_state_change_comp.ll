; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_state_change_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_state_change_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_sp_obj = type { i64, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"Bad MC reply %d for func %d in state %d pending 0x%lx, next_state %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Completing command %d for func %d, setting state to %d\0A\00", align 1
@BNX2X_F_STATE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_sp_obj*, i32)* @bnx2x_func_state_change_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_state_change_comp(%struct.bnx2x* %0, %struct.bnx2x_func_sp_obj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_func_sp_obj* %1, %struct.bnx2x_func_sp_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @test_and_clear_bit(i32 %12, i64* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %18 = call i32 @BP_FUNC(%struct.bnx2x* %17)
  %19 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %20 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i32 %21, i64 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load i32, i32* @BNX2X_MSG_SP, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = call i32 @BP_FUNC(%struct.bnx2x* %32)
  %34 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33, i32 %36)
  %38 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %39 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %42 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @BNX2X_F_STATE_MAX, align 4
  %44 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = call i32 (...) @wmb()
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i64* %49)
  %51 = call i32 (...) @smp_mb__after_clear_bit()
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %29, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
