; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_set_credit_upper_bound_pbf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_set_credit_upper_bound_pbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@PBF_REG_COS0_UPPER_BOUND_P0 = common dso_local global i64 0, align 8
@DCBX_E3B0_MAX_NUM_COS_PORT0 = common dso_local global i32 0, align 4
@PBF_REG_COS0_UPPER_BOUND_P1 = common dso_local global i64 0, align 8
@DCBX_E3B0_MAX_NUM_COS_PORT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, i64)* @bnx2x_ets_e3b0_set_credit_upper_bound_pbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ets_e3b0_set_credit_upper_bound_pbf(%struct.link_params* %0, i64 %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.link_params*, %struct.link_params** %3, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @bnx2x_ets_get_credit_upper_bound(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.link_params*, %struct.link_params** %3, align 8
  %17 = getelementptr inbounds %struct.link_params, %struct.link_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* @PBF_REG_COS0_UPPER_BOUND_P0, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @DCBX_E3B0_MAX_NUM_COS_PORT0, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i64, i64* @PBF_REG_COS0_UPPER_BOUND_P1, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* @DCBX_E3B0_MAX_NUM_COS_PORT1, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @REG_WR(%struct.bnx2x* %33, i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %28

44:                                               ; preds = %28
  ret void
}

declare dso_local i64 @bnx2x_ets_get_credit_upper_bound(i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
