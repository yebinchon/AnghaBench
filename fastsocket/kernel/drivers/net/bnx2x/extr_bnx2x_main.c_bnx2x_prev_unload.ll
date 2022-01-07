; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Entering Previous Unload Flow\0A\00", align 1
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_NVRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Release Previously held NVRAM lock\0A\00", align 1
@MCP_REG_MCPR_NVM_SW_ARB = common dso_local global i32 0, align 4
@MCPR_NVM_SW_ARB_ARB_REQ_CLR1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Release Previously held hw lock\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No need to release hw/nvram locks\0A\00", align 1
@MCPR_ACCESS_LOCK_LOCK = common dso_local global i32 0, align 4
@MCP_REG_MCPR_ACCESS_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Release previously held alr\0A\00", align 1
@DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@bnx2x_prev_sem = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"Cannot check for AER; Received %d when tried to take lock\0A\00", align 1
@FW_MSG_CODE_DRV_UNLOAD_COMMON = common dso_local global i32 0, align 4
@BNX2X_PREV_WAIT_NEEDED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed unloading previous driver, aborting\0A\00", align 1
@FEATURE_CONFIG_BOOT_FROM_SAN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Finished Previous Unload Flow [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_prev_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_unload(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 10, i32* %3, align 4
  %9 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i32 @bnx2x_prev_interrupted_dmae(%struct.bnx2x* %10)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i32 @BP_FUNC(%struct.bnx2x* %12)
  %14 = icmp sle i32 %13, 5
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i32 @BP_FUNC(%struct.bnx2x* %17)
  %19 = mul nsw i32 %18, 8
  %20 = add nsw i32 %16, %19
  br label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i32 @BP_FUNC(%struct.bnx2x* %23)
  %25 = sub nsw i32 %24, 6
  %26 = mul nsw i32 %25, 8
  %27 = add nsw i32 %22, %26
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %20, %15 ], [ %27, %21 ]
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @REG_RD(%struct.bnx2x* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @HW_LOCK_RESOURCE_NVRAM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = load i32, i32* @MCP_REG_MCPR_NVM_SW_ARB, align 4
  %44 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_REQ_CLR1, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %46 = call i32 @BP_PORT(%struct.bnx2x* %45)
  %47 = shl i32 %44, %46
  %48 = call i32 @REG_WR(%struct.bnx2x* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %40, %35
  %50 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @REG_WR(%struct.bnx2x* %51, i32 %52, i32 -1)
  br label %56

54:                                               ; preds = %28
  %55 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* @MCPR_ACCESS_LOCK_LOCK, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = load i32, i32* @MCP_REG_MCPR_ACCESS_LOCK, align 4
  %60 = call i32 @REG_RD(%struct.bnx2x* %58, i32 %59)
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = call i32 @bnx2x_release_alr(%struct.bnx2x* %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %120, %67
  store i32 0, i32* %8, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS, align 4
  %71 = call i32 @bnx2x_fw_command(%struct.bnx2x* %69, i32 %70, i32 0)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %124

78:                                               ; preds = %68
  %79 = call i32 @down_interruptible(i32* @bnx2x_prev_sem)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  br label %101

85:                                               ; preds = %78
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = call %struct.TYPE_4__* @bnx2x_prev_path_get_entry(%struct.bnx2x* %86)
  %88 = icmp ne %struct.TYPE_4__* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = call %struct.TYPE_4__* @bnx2x_prev_path_get_entry(%struct.bnx2x* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %89, %85
  %96 = phi i1 [ false, %85 ], [ %94, %89 ]
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = call i32 @up(i32* @bnx2x_prev_sem)
  br label %101

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @FW_MSG_CODE_DRV_UNLOAD_COMMON, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105, %101
  %109 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %110 = call i32 @bnx2x_prev_unload_common(%struct.bnx2x* %109)
  store i32 %110, i32* %4, align 4
  br label %124

111:                                              ; preds = %105
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = call i32 @bnx2x_prev_unload_uncommon(%struct.bnx2x* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @BNX2X_PREV_WAIT_NEEDED, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %124

118:                                              ; preds = %111
  %119 = call i32 @msleep(i32 20)
  br label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %3, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %68, label %124

124:                                              ; preds = %120, %117, %108, %74
  %125 = load i32, i32* %3, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127, %124
  %131 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %127
  %135 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %136 = call i64 @bnx2x_port_after_undi(%struct.bnx2x* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i32, i32* @FEATURE_CONFIG_BOOT_FROM_SAN, align 4
  %140 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %141 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %134
  %146 = load i32, i32* %4, align 4
  %147 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*, ...) #1

declare dso_local i32 @bnx2x_prev_interrupted_dmae(%struct.bnx2x*) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_alr(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local %struct.TYPE_4__* @bnx2x_prev_path_get_entry(%struct.bnx2x*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @bnx2x_prev_unload_common(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_unload_uncommon(%struct.bnx2x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @bnx2x_port_after_undi(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
