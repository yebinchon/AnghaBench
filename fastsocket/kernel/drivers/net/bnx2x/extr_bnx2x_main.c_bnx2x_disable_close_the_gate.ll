; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_disable_close_the_gate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_disable_close_the_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Disabling \22close the gates\22\0A\00", align 1
@MISC_REG_AEU_MASK_ATTN_FUNC_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_MASK = common dso_local global i32 0, align 4
@MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK = common dso_local global i32 0, align 4
@MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_disable_close_the_gate(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %7 = call i32 @DP(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = call i64 @CHIP_IS_E1(%struct.bnx2x* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i32 @BP_PORT(%struct.bnx2x* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_1, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @REG_RD(%struct.bnx2x* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, -769
  store i32 %26, i32* %3, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @REG_WR(%struct.bnx2x* %27, i32 %28, i32 %29)
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = load i32, i32* @MISC_REG_AEU_GENERAL_MASK, align 4
  %34 = call i32 @REG_RD(%struct.bnx2x* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK, align 4
  %36 = load i32, i32* @MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = load i32, i32* @MISC_REG_AEU_GENERAL_MASK, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @REG_WR(%struct.bnx2x* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
