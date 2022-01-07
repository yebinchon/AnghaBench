; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_pglue_clear_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_pglue_clear_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR = common dso_local global i32 0, align 4
@PGLUE_B_REG_WAS_ERROR_VF_63_32_CLR = common dso_local global i32 0, align 4
@PGLUE_B_REG_WAS_ERROR_VF_95_64_CLR = common dso_local global i32 0, align 4
@PGLUE_B_REG_WAS_ERROR_VF_127_96_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_vf_pglue_clear_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_pglue_clear_err(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = call i32 @BP_PATH(%struct.bnx2x* %7)
  %9 = mul nsw i32 2, %8
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  %12 = ashr i32 %11, 5
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
    i32 3, label %20
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR, align 4
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @PGLUE_B_REG_WAS_ERROR_VF_63_32_CLR, align 4
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @PGLUE_B_REG_WAS_ERROR_VF_95_64_CLR, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @PGLUE_B_REG_WAS_ERROR_VF_127_96_CLR, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %2, %20, %18, %16, %14
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 31
  %27 = shl i32 1, %26
  %28 = call i32 @REG_WR(%struct.bnx2x* %23, i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
