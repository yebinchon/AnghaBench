; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_poll_hw_usage_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_poll_hw_usage_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@CFC_REG_NUM_LCIDS_INSIDE_PF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CFC PF usage counter timed out\00", align 1
@DORQ_REG_PF_USAGE_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"DQ PF usage counter timed out\00", align 1
@QM_REG_PF_USG_CNT_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"QM PF usage counter timed out\00", align 1
@TM_REG_LIN0_VNIC_UC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Timers VNIC usage counter timed out\00", align 1
@TM_REG_LIN0_NUM_SCANS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Timers NUM_SCANS usage counter timed out\00", align 1
@dmae_reg_go_c = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"DMAE command register timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_poll_hw_usage_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_poll_hw_usage_counters(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %7 = load i64, i64* @CFC_REG_NUM_LCIDS_INSIDE_PF, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %6, i64 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

12:                                               ; preds = %2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = load i64, i64* @DORQ_REG_PF_USAGE_CNT, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %13, i64 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %67

19:                                               ; preds = %12
  %20 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %21 = load i64, i64* @QM_REG_PF_USG_CNT_0, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = call i32 @BP_FUNC(%struct.bnx2x* %22)
  %24 = mul nsw i32 4, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %20, i64 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %67

31:                                               ; preds = %19
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load i64, i64* @TM_REG_LIN0_VNIC_UC, align 8
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = call i32 @BP_PORT(%struct.bnx2x* %34)
  %36 = mul nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %32, i64 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %67

43:                                               ; preds = %31
  %44 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %45 = load i64, i64* @TM_REG_LIN0_NUM_SCANS, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = call i32 @BP_PORT(%struct.bnx2x* %46)
  %48 = mul nsw i32 4, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %44, i64 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %67

55:                                               ; preds = %43
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = load i64*, i64** @dmae_reg_go_c, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %59 = call i64 @INIT_DMAE_C(%struct.bnx2x* %58)
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %56, i64 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %65, %54, %42, %30, %18, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x*, i64, i8*, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @INIT_DMAE_C(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
