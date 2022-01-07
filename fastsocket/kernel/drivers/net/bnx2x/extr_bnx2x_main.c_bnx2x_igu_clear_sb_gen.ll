; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_igu_clear_sb_gen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_igu_clear_sb_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@IGU_REG_COMMAND_REG_32LSB_DATA = common dso_local global i32 0, align 4
@IGU_REG_COMMAND_REG_CTRL = common dso_local global i32 0, align 4
@IGU_REG_CSTORM_TYPE_0_SB_CLEANUP = common dso_local global i32 0, align 4
@IGU_FID_ENCODE_IS_PF_SHIFT = common dso_local global i32 0, align 4
@IGU_CMD_E2_PROD_UPD_BASE = common dso_local global i32 0, align 4
@IGU_USE_REGISTER_cstorm_type_0_sb_cleanup = common dso_local global i32 0, align 4
@IGU_REGULAR_CLEANUP_TYPE_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_CLEANUP_SET = common dso_local global i32 0, align 4
@IGU_REGULAR_BCLEANUP = common dso_local global i32 0, align 4
@IGU_CTRL_REG_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@IGU_CTRL_REG_FID_SHIFT = common dso_local global i32 0, align 4
@IGU_CTRL_CMD_TYPE_WR = common dso_local global i32 0, align 4
@IGU_CTRL_REG_TYPE_SHIFT = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"write 0x%08x to IGU(via GRC) addr 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to finish IGU cleanup: idu_sb_id %d offset %d bit %d (cnt %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_igu_clear_sb_gen(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 100, i32* %11, align 4
  %18 = load i32, i32* @IGU_REG_COMMAND_REG_32LSB_DATA, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @IGU_REG_COMMAND_REG_CTRL, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @IGU_REG_CSTORM_TYPE_0_SB_CLEANUP, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 32
  %23 = mul nsw i32 %22, 4
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = srem i32 %25, 32
  %27 = shl i32 1, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = load i32, i32* @IGU_FID_ENCODE_IS_PF_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %28, %34
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @IGU_CMD_E2_PROD_UPD_BASE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %40 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %113

43:                                               ; preds = %4
  %44 = load i32, i32* @IGU_USE_REGISTER_cstorm_type_0_sb_cleanup, align 4
  %45 = load i32, i32* @IGU_REGULAR_CLEANUP_TYPE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @IGU_REGULAR_CLEANUP_SET, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IGU_REGULAR_BCLEANUP, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @IGU_CTRL_REG_ADDRESS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @IGU_CTRL_REG_FID_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* @IGU_CTRL_CMD_TYPE_WR, align 4
  %59 = load i32, i32* @IGU_CTRL_REG_TYPE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @NETIF_MSG_HW, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @REG_WR(%struct.bnx2x* %66, i32 %67, i32 %68)
  %70 = call i32 (...) @mmiowb()
  %71 = call i32 (...) @barrier()
  %72 = load i32, i32* @NETIF_MSG_HW, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @REG_WR(%struct.bnx2x* %76, i32 %77, i32 %78)
  %80 = call i32 (...) @mmiowb()
  %81 = call i32 (...) @barrier()
  br label %82

82:                                               ; preds = %95, %43
  %83 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @REG_RD(%struct.bnx2x* %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %89, %82
  %94 = phi i1 [ false, %82 ], [ %92, %89 ]
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = call i32 @msleep(i32 20)
  br label %82

97:                                               ; preds = %93
  %98 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @REG_RD(%struct.bnx2x* %98, i32 %99)
  %101 = load i32, i32* %15, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @NETIF_MSG_HW, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sdiv i32 %107, 32
  %109 = load i32, i32* %7, align 4
  %110 = srem i32 %109, 32
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %105, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %42, %104, %97
  ret void
}

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
