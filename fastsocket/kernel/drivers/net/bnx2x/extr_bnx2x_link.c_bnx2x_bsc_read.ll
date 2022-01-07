; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_bsc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_bsc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid xfer_cnt %d. Max is 16 bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCP_REG_MCPR_IMC_COMMAND = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_ENABLE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_IMC_SLAVE_CONTROL = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_WRITE_OP = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_OPERATION_BITSHIFT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"wr 0 byte timed out after %d try\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_READ_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rd op timed out after %d try\0A\00", align 1
@MCP_REG_MCPR_IMC_DATAREG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.bnx2x_phy*, i32, i32, i32, i32, i32*)* @bnx2x_bsc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_bsc_read(%struct.link_params* %0, %struct.bnx2x_phy* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.link_params*, align 8
  %10 = alloca %struct.bnx2x_phy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %9, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.link_params*, %struct.link_params** %9, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 0
  %22 = load %struct.bnx2x*, %struct.bnx2x** %21, align 8
  store %struct.bnx2x* %22, %struct.bnx2x** %19, align 8
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = load i32, i32* @NETIF_MSG_LINK, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @DP(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %168

31:                                               ; preds = %7
  %32 = load %struct.link_params*, %struct.link_params** %9, align 8
  %33 = call i32 @bnx2x_bsc_module_sel(%struct.link_params* %32)
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 16, %34
  store i32 %35, i32* %14, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %37 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %38 = call i32 @REG_RD(%struct.bnx2x* %36, i64 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %16, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %43 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @REG_WR(%struct.bnx2x* %42, i64 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %16, align 4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %51 = load i64, i64* @MCP_REG_MCPR_IMC_SLAVE_CONTROL, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @REG_WR(%struct.bnx2x* %50, i64 %51, i32 %52)
  %54 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %55 = load i32, i32* @MCPR_IMC_COMMAND_WRITE_OP, align 4
  %56 = load i32, i32* @MCPR_IMC_COMMAND_OPERATION_BITSHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %64 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @REG_WR(%struct.bnx2x* %63, i64 %64, i32 %65)
  store i32 0, i32* %17, align 4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %68 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %69 = call i32 @REG_RD(%struct.bnx2x* %67, i64 %68)
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %90, %31
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = and i32 %73, 3
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = call i32 @udelay(i32 10)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %79 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %80 = call i32 @REG_RD(%struct.bnx2x* %78, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  %83 = icmp sgt i32 %81, 1000
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @NETIF_MSG_LINK, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @DP(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %18, align 4
  br label %91

90:                                               ; preds = %76
  br label %70

91:                                               ; preds = %84, %70
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %8, align 4
  br label %168

98:                                               ; preds = %91
  %99 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %100 = load i32, i32* @MCPR_IMC_COMMAND_READ_OP, align 4
  %101 = load i32, i32* @MCPR_IMC_COMMAND_OPERATION_BITSHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %99, %102
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %16, align 4
  %110 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %111 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @REG_WR(%struct.bnx2x* %110, i64 %111, i32 %112)
  store i32 0, i32* %17, align 4
  %114 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %115 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %116 = call i32 @REG_RD(%struct.bnx2x* %114, i64 %115)
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %137, %98
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = call i32 @udelay(i32 10)
  %125 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %126 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %127 = call i32 @REG_RD(%struct.bnx2x* %125, i64 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  %130 = icmp sgt i32 %128, 1000
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i32, i32* @NETIF_MSG_LINK, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @DP(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EFAULT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %18, align 4
  br label %138

137:                                              ; preds = %123
  br label %117

138:                                              ; preds = %131, %117
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @EFAULT, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %8, align 4
  br label %168

145:                                              ; preds = %138
  %146 = load i32, i32* %13, align 4
  %147 = ashr i32 %146, 2
  store i32 %147, i32* %17, align 4
  br label %148

148:                                              ; preds = %163, %145
  %149 = load i32, i32* %17, align 4
  %150 = icmp slt i32 %149, 4
  br i1 %150, label %151, label %166

151:                                              ; preds = %148
  %152 = load %struct.bnx2x*, %struct.bnx2x** %19, align 8
  %153 = load i64, i64* @MCP_REG_MCPR_IMC_DATAREG0, align 8
  %154 = load i32, i32* %17, align 4
  %155 = mul nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  %158 = call i32 @REG_RD(%struct.bnx2x* %152, i64 %157)
  %159 = load i32*, i32** %15, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %151
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %148

166:                                              ; preds = %148
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %166, %143, %96, %25
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_bsc_module_sel(%struct.link_params*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
