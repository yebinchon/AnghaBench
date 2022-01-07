; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_send_final_clnup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_send_final_clnup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BAR_CSTRORM_INTMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cleanup complete was not 0 before sending\0A\00", align 1
@XSTORM_AGG_INT_FINAL_CLEANUP_INDEX = common dso_local global i32 0, align 4
@XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE = common dso_local global i32 0, align 4
@SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"sending FW Final cleanup\0A\00", align 1
@XSDM_REG_OPERATION_GEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"FW final cleanup did not succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"At timeout completion address contained %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_send_final_clnup(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @BAR_CSTRORM_INTMEM, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET(i32 %12)
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @REG_RD(%struct.bnx2x* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load i32, i32* @XSTORM_AGG_INT_FINAL_CLEANUP_INDEX, align 4
  %23 = call i32 @OP_GEN_PARAM(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE, align 4
  %27 = call i32 @OP_GEN_TYPE(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @OP_GEN_AGG_VECT(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @BNX2X_MSG_SP, align 4
  %39 = call i32 (i32, i8*, ...) @DP(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %41 = load i32, i32* @XSDM_REG_OPERATION_GEN, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @REG_WR(%struct.bnx2x* %40, i32 %41, i32 %42)
  %44 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bnx2x_flr_clnup_reg_poll(%struct.bnx2x* %44, i32 %45, i32 1, i32 %46)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %21
  %50 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @BNX2X_MSG_SP, align 4
  %52 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @REG_RD(%struct.bnx2x* %52, i32 %53)
  %55 = call i32 (i32, i8*, ...) @DP(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = call i32 (...) @bnx2x_panic()
  store i32 1, i32* %4, align 4
  br label %62

57:                                               ; preds = %21
  %58 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @REG_WR(%struct.bnx2x* %58, i32 %59, i32 0)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %49, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET(i32) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @OP_GEN_PARAM(i32) #1

declare dso_local i32 @OP_GEN_TYPE(i32) #1

declare dso_local i32 @OP_GEN_AGG_VECT(i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_flr_clnup_reg_poll(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_panic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
