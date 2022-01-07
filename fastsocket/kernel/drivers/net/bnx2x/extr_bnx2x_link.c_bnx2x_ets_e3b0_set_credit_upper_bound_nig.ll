; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_set_credit_upper_bound_nig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_set_credit_upper_bound_nig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, i32)* @bnx2x_ets_e3b0_set_credit_upper_bound_nig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ets_e3b0_set_credit_upper_bound_nig(%struct.link_params* %0, i32 %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.link_params*, %struct.link_params** %3, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.link_params*, %struct.link_params** %3, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @bnx2x_ets_get_credit_upper_bound(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @REG_WR(%struct.bnx2x* %16, i32 %24, i32 %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @REG_WR(%struct.bnx2x* %27, i32 %35, i32 %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @REG_WR(%struct.bnx2x* %38, i32 %46, i32 %47)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @REG_WR(%struct.bnx2x* %49, i32 %57, i32 %58)
  %60 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @REG_WR(%struct.bnx2x* %60, i32 %68, i32 %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @REG_WR(%struct.bnx2x* %71, i32 %79, i32 %80)
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %78
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @REG_WR(%struct.bnx2x* %85, i32 %86, i32 %87)
  %89 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %90 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @REG_WR(%struct.bnx2x* %89, i32 %90, i32 %91)
  %93 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %94 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @REG_WR(%struct.bnx2x* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %84, %78
  ret void
}

declare dso_local i32 @bnx2x_ets_get_credit_upper_bound(i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
