; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_dmae_opcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_dmae_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@DMAE_COMMAND_SRC_SHIFT = common dso_local global i32 0, align 4
@DMAE_COMMAND_DST_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_RESET = common dso_local global i32 0, align 4
@DMAE_CMD_DST_RESET = common dso_local global i32 0, align 4
@DMAE_CMD_PORT_1 = common dso_local global i32 0, align 4
@DMAE_CMD_PORT_0 = common dso_local global i32 0, align 4
@DMAE_CMD_E1HVN_SHIFT = common dso_local global i32 0, align 4
@DMAE_COMMAND_DST_VN_SHIFT = common dso_local global i32 0, align 4
@DMAE_COM_SET_ERR = common dso_local global i32 0, align 4
@DMAE_COMMAND_ERR_POLICY_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_ENDIANITY_DW_SWAP = common dso_local global i32 0, align 4
@DMAE_CMD_ENDIANITY_B_DW_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_dmae_opcode(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DMAE_COMMAND_SRC_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @DMAE_COMMAND_DST_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* %11, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @DMAE_CMD_SRC_RESET, align 4
  %22 = load i32, i32* @DMAE_CMD_DST_RESET, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %27 = call i64 @BP_PORT(%struct.bnx2x* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @DMAE_CMD_PORT_1, align 4
  br label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @DMAE_CMD_PORT_0, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = call i32 @BP_VN(%struct.bnx2x* %37)
  %39 = load i32, i32* @DMAE_CMD_E1HVN_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %42 = call i32 @BP_VN(%struct.bnx2x* %41)
  %43 = load i32, i32* @DMAE_COMMAND_DST_VN_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %40, %44
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @DMAE_COM_SET_ERR, align 4
  %49 = load i32, i32* @DMAE_COMMAND_ERR_POLICY_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @DMAE_CMD_ENDIANITY_DW_SWAP, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %33
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @bnx2x_dmae_opcode_add_comp(i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %33
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dmae_opcode_add_comp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
