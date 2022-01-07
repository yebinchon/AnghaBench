; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_vlan_credit_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_vlan_credit_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_credit_pool_obj = type { i32 }

@MAX_VLAN_CREDIT_E2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_init_vlan_credit_pool(%struct.bnx2x* %0, %struct.bnx2x_credit_pool_obj* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_credit_pool_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_credit_pool_obj* %1, %struct.bnx2x_credit_pool_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %15 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %14, i32 0, i32 -1)
  br label %33

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* @MAX_VLAN_CREDIT_E2, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %23, i32 %26, i32 %27)
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %31 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %30, i32 0, i32 0)
  br label %32

32:                                               ; preds = %29, %19
  br label %33

33:                                               ; preds = %32, %13
  ret void
}

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
