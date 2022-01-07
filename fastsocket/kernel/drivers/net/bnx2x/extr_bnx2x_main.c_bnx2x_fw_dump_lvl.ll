; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_fw_dump_lvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_fw_dump_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"NO MCP - can not dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bc %d.%d.%d\0A\00", align 1
@MCP_REG_MCPR_CPU_PROGRAM_COUNTER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"%sMCP PC at 0x%x\0A\00", align 1
@other_shmem_base_addr = common dso_local global i32 0, align 4
@MFW_TRACE_SIGNATURE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Trace buffer signature is missing.\00", align 1
@MCP_REG_MCPR_SCRATCH = common dso_local global i64 0, align 8
@MCP_A_REG_MCPR_SCRATCH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"%sbegin fw dump (mark 0x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%send of fw dump\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_fw_dump_lvl(%struct.bnx2x* %0, i8* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [9 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = call i64 @BP_NOMCP(%struct.bnx2x* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %171

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 16711680
  %28 = ashr i32 %27, 16
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 65280
  %34 = ashr i32 %33, 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 255
  %40 = call i32 @netdev_printk(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %34, i32 %39)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = load i64, i64* @MCP_REG_MCPR_CPU_PROGRAM_COUNTER, align 8
  %43 = call i64 @REG_RD(%struct.bnx2x* %41, i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i64, i64* @MCP_REG_MCPR_CPU_PROGRAM_COUNTER, align 8
  %47 = call i64 @REG_RD(%struct.bnx2x* %45, i64 %46)
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %17
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %17
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = call i64 @BP_PATH(%struct.bnx2x* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = load i32, i32* @other_shmem_base_addr, align 4
  %65 = call i64 @SHMEM2_RD(%struct.bnx2x* %63, i32 %64)
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i64, i64* %11, align 8
  %68 = sub nsw i64 %67, 2048
  store i64 %68, i64* %5, align 8
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @REG_RD(%struct.bnx2x* %69, i64 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @MFW_TRACE_SIGNATURE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %171

77:                                               ; preds = %66
  %78 = load i64, i64* %5, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %5, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @REG_RD(%struct.bnx2x* %80, i64 %81)
  store i64 %82, i64* %7, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i64, i64* @MCP_REG_MCPR_SCRATCH, align 8
  br label %90

88:                                               ; preds = %77
  %89 = load i64, i64* @MCP_A_REG_MCPR_SCRATCH, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, 3
  %94 = and i64 %93, -4
  %95 = add nsw i64 %91, %94
  %96 = sub nsw i64 %95, 134217728
  store i64 %96, i64* %7, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %97, i64 %98)
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  %102 = load i64, i64* %7, align 8
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %131, %90
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %123, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 4, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i64 @REG_RD(%struct.bnx2x* %112, i64 %117)
  %119 = call i32 @htonl(i64 %118)
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %121
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %108

126:                                              ; preds = %108
  %127 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 0, i32* %127, align 16
  %128 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %129 = bitcast i32* %128 to i8*
  %130 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %126
  %132 = load i64, i64* %8, align 8
  %133 = add nsw i64 %132, 32
  store i64 %133, i64* %8, align 8
  br label %103

134:                                              ; preds = %103
  %135 = load i64, i64* %5, align 8
  %136 = add nsw i64 %135, 4
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %165, %134
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %7, align 8
  %140 = icmp sle i64 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %157, %141
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 8
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = mul nsw i32 4, %148
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %147, %150
  %152 = call i64 @REG_RD(%struct.bnx2x* %146, i64 %151)
  %153 = call i32 @htonl(i64 %152)
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %155
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %142

160:                                              ; preds = %142
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 0, i32* %161, align 16
  %162 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %163 = bitcast i32* %162 to i8*
  %164 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %160
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %166, 32
  store i64 %167, i64* %8, align 8
  br label %137

168:                                              ; preds = %137
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %168, %75, %15
  ret void
}

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @netdev_printk(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i64 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @pr_cont(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
