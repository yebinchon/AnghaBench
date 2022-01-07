; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_process_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_process_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PXP2_REG_RD_SR_CNT = common dso_local global i32 0, align 4
@PXP2_REG_RD_BLK_CNT = common dso_local global i32 0, align 4
@PXP2_REG_RD_PORT_IS_IDLE_0 = common dso_local global i32 0, align 4
@PXP2_REG_RD_PORT_IS_IDLE_1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_EXP_ROM2 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TAGS_63_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Tetris buffer didn't get empty or there are still outstanding read requests after 1s!\0A\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"sr_cnt=0x%08x, blk_cnt=0x%08x, port_is_idle_0=0x%08x, port_is_idle_1=0x%08x, pgl_exp_rom2=0x%08x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MISC_REG_UNPREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_process_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_process_kill(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %64, %2
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = load i32, i32* @PXP2_REG_RD_SR_CNT, align 4
  %17 = call i32 @REG_RD(%struct.bnx2x* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = load i32, i32* @PXP2_REG_RD_BLK_CNT, align 4
  %20 = call i32 @REG_RD(%struct.bnx2x* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load i32, i32* @PXP2_REG_RD_PORT_IS_IDLE_0, align 4
  %23 = call i32 @REG_RD(%struct.bnx2x* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load i32, i32* @PXP2_REG_RD_PORT_IS_IDLE_1, align 4
  %26 = call i32 @REG_RD(%struct.bnx2x* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = load i32, i32* @PXP2_REG_PGL_EXP_ROM2, align 4
  %29 = call i32 @REG_RD(%struct.bnx2x* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = call i64 @CHIP_IS_E3(%struct.bnx2x* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = load i32, i32* @PGLUE_B_REG_TAGS_63_32, align 4
  %36 = call i32 @REG_RD(%struct.bnx2x* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 126
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 160
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %56 = call i64 @CHIP_IS_E3(%struct.bnx2x* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %54
  br label %68

62:                                               ; preds = %58, %51, %47, %43, %40, %37
  %63 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %14, label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %128

81:                                               ; preds = %68
  %82 = call i32 (...) @barrier()
  %83 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %84 = call i32 @bnx2x_set_234_gates(%struct.bnx2x* %83, i32 1)
  %85 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %86 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %90 = call i64 @bnx2x_er_poll_igu_vq(%struct.bnx2x* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %128

95:                                               ; preds = %88, %81
  %96 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %97 = load i32, i32* @MISC_REG_UNPREPARED, align 4
  %98 = call i32 @REG_WR(%struct.bnx2x* %96, i32 %97, i32 0)
  %99 = call i32 (...) @barrier()
  %100 = call i32 (...) @mmiowb()
  %101 = call i32 @usleep_range(i32 1000, i32 2000)
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %106 = call i32 @bnx2x_reset_mcp_prep(%struct.bnx2x* %105, i32* %7)
  br label %107

107:                                              ; preds = %104, %95
  %108 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %109 = call i32 @bnx2x_pxp_prep(%struct.bnx2x* %108)
  %110 = call i32 (...) @barrier()
  %111 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @bnx2x_process_kill_chip_reset(%struct.bnx2x* %111, i32 %112)
  %114 = call i32 (...) @barrier()
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @bnx2x_reset_mcp_comp(%struct.bnx2x* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EAGAIN, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %128

125:                                              ; preds = %117, %107
  %126 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %127 = call i32 @bnx2x_set_234_gates(%struct.bnx2x* %126, i32 0)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %122, %92, %71
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @bnx2x_set_234_gates(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_er_poll_igu_vq(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @bnx2x_reset_mcp_prep(%struct.bnx2x*, i32*) #1

declare dso_local i32 @bnx2x_pxp_prep(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_process_kill_chip_reset(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_reset_mcp_comp(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
