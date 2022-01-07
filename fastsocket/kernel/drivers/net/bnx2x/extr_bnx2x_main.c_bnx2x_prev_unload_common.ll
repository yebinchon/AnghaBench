; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mac_vals = type { i32*, i64, i32, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Common unload Flow\0A\00", align 1
@MISC_REG_RESET_REG_1 = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_RST_BRB1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_RST_DORQ = common dso_local global i32 0, align 4
@DORQ_REG_NORM_CID_OFST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"UNDI previously loaded\0A\00", align 1
@NIG_REG_NIG_INT_STS_CLR_0 = common dso_local global i64 0, align 8
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i64 0, align 8
@BRB1_REG_NUM_OF_FULL_BLOCKS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"BRB still has 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to empty BRB, hope for the best\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_prev_unload_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_unload_common(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_mac_vals, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.bnx2x_mac_vals* %8, i32 0, i32 64)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i64 @bnx2x_prev_is_path_marked(%struct.bnx2x* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %17)
  store i32 %18, i32* %2, align 4
  br label %171

19:                                               ; preds = %1
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = load i64, i64* @MISC_REG_RESET_REG_1, align 8
  %22 = call i32 @REG_RD(%struct.bnx2x* %20, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_BRB1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %19
  store i32 1000, i32* %9, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = call i32 @bnx2x_prev_unload_close_mac(%struct.bnx2x* %28, %struct.bnx2x_mac_vals* %8)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = call i32 @bnx2x_set_rx_filter(i32* %31, i32 0)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_DORQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load i64, i64* @DORQ_REG_NORM_CID_OFST, align 8
  %40 = call i32 @REG_RD(%struct.bnx2x* %38, i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i64, i64* @DORQ_REG_NORM_CID_OFST, align 8
  %47 = call i32 @REG_WR(%struct.bnx2x* %45, i64 %46, i32 0)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i64, i64* @NIG_REG_NIG_INT_STS_CLR_0, align 8
  %50 = call i32 @REG_RD(%struct.bnx2x* %48, i64 %49)
  br label %51

51:                                               ; preds = %43, %37
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %58 = load i64, i64* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 8
  %59 = call i32 @REG_WR(%struct.bnx2x* %57, i64 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = load i64, i64* @BRB1_REG_NUM_OF_FULL_BLOCKS, align 8
  %63 = call i32 @REG_RD(%struct.bnx2x* %61, i64 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %93, %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load i64, i64* @BRB1_REG_NUM_OF_FULL_BLOCKS, align 8
  %71 = call i32 @REG_RD(%struct.bnx2x* %69, i64 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %95

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1000, i32* %9, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %81
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = call i32 @BP_PORT(%struct.bnx2x* %90)
  %92 = call i32 @bnx2x_prev_unload_undi_inc(%struct.bnx2x* %89, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %88, %85
  %94 = call i32 @udelay(i32 10)
  br label %64

95:                                               ; preds = %74, %64
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %100, %19
  %102 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %103 = call i32 @bnx2x_reset_common(%struct.bnx2x* %102)
  %104 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %109 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @REG_WR(%struct.bnx2x* %108, i64 %110, i32 %112)
  br label %114

114:                                              ; preds = %107, %101
  %115 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %120 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @REG_WR(%struct.bnx2x* %119, i64 %121, i32 %123)
  br label %125

125:                                              ; preds = %118, %114
  %126 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %131 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @REG_WR(%struct.bnx2x* %130, i64 %132, i32 %134)
  br label %136

136:                                              ; preds = %129, %125
  %137 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %136
  %141 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %142 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @REG_WR(%struct.bnx2x* %141, i64 %143, i32 %147)
  %149 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %150 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 4
  %153 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @REG_WR(%struct.bnx2x* %149, i64 %152, i32 %156)
  br label %158

158:                                              ; preds = %140, %136
  %159 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @bnx2x_prev_mark_path(%struct.bnx2x* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %166 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %171

168:                                              ; preds = %158
  %169 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %170 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %169)
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %168, %164, %16
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*, ...) #1

declare dso_local i32 @memset(%struct.bnx2x_mac_vals*, i32, i32) #1

declare dso_local i64 @bnx2x_prev_is_path_marked(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_mcp_done(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_prev_unload_close_mac(%struct.bnx2x*, %struct.bnx2x_mac_vals*) #1

declare dso_local i32 @bnx2x_set_rx_filter(i32*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_unload_undi_inc(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_reset_common(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_mark_path(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
