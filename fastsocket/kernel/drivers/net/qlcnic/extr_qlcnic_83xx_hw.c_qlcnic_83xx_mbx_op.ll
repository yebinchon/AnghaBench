; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_mbx_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_mbx_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.TYPE_8__* }
%struct.qlcnic_hardware_context = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_6__ = type { i32* }

@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Mailbox cmd attempted, 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Mailbox detached\0A\00", align 1
@QLCNIC_HOST_MBX_CTRL = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Mailbox not available, 0x%x, collect FW dump\0A\00", align 1
@QLCNIC_RCODE_TIMEOUT = common dso_local global i64 0, align 8
@QLCNIC_SET_OWNER = common dso_local global i32 0, align 4
@QLCNIC_MBX_ASYNC_EVENT = common dso_local global i64 0, align 8
@QLCNIC_RCODE_SUCCESS = common dso_local global i64 0, align 8
@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"MBX command 0x%x failed with err:0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"MBX command 0x%x timed out\0A\00", align 1
@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_CLR_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_mbx_op(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_hardware_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %18, align 8
  store %struct.qlcnic_hardware_context* %19, %struct.qlcnic_hardware_context** %10, align 8
  store i64 0, i64* %16, align 8
  %20 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @LSW(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %29, align 8
  %31 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @test_bit(i32 %27, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %2
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 (i32*, i8*, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_info(i32* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %203

47:                                               ; preds = %2
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %49, align 8
  %51 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %55 = load i32, i32* @QLCNIC_HOST_MBX_CTRL, align 4
  %56 = call i64 @QLCRDX(%struct.qlcnic_hardware_context* %54, i32 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %47
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = load i32, i32* @DRV, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @QLCDB(%struct.qlcnic_adapter* %60, i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %65 = load i32, i32* @DRV, align 4
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @QLCDB(%struct.qlcnic_adapter* %64, i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* @QLCNIC_RCODE_TIMEOUT, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %71 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %69, i32* %74, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %76, align 8
  %78 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %77, i32 0, i32 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %82 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %3, align 4
  br label %203

87:                                               ; preds = %47
  %88 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %89 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %96 = call i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context* %95, i32 0)
  %97 = call i32 @writel(i64 %94, i32 %96)
  store i32 1, i32* %6, align 4
  br label %98

98:                                               ; preds = %118, %87
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %101 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %107 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context* %114, i32 %115)
  %117 = call i32 @writel(i64 %113, i32 %116)
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %98

121:                                              ; preds = %98
  %122 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %123 = load i32, i32* @QLCNIC_HOST_MBX_CTRL, align 4
  %124 = load i32, i32* @QLCNIC_SET_OWNER, align 4
  %125 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %140, %121
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %128 = call i64 @qlcnic_83xx_mbx_poll(%struct.qlcnic_adapter* %127, i64* %16)
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @QLCNIC_RCODE_TIMEOUT, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %181

132:                                              ; preds = %126
  %133 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %134 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %133, i32 0)
  %135 = call i64 @readl(i32 %134)
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @QLCNIC_MBX_ASYNC_EVENT, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %142 = call i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %141)
  br label %126

143:                                              ; preds = %132
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @QLCNIC_MBX_STATUS(i64 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i64, i64* %13, align 8
  %147 = call i64 @QLCNIC_MBX_NUM_REGS(i64 %146)
  store i64 %147, i64* %14, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i64 @QLCNIC_MBX_RSP(i64 %148)
  store i64 %149, i64* %7, align 8
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %151 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %152 = call i32 @qlcnic_83xx_get_mbx_data(%struct.qlcnic_adapter* %150, %struct.qlcnic_cmd_args* %151)
  %153 = load i32, i32* %8, align 4
  switch i32 %153, label %156 [
    i32 128, label %154
    i32 129, label %154
  ]

154:                                              ; preds = %143, %143
  %155 = load i64, i64* @QLCNIC_RCODE_SUCCESS, align 8
  store i64 %155, i64* %11, align 8
  br label %180

156:                                              ; preds = %143
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %162 = call i64 @qlcnic_83xx_mac_rcode(%struct.qlcnic_adapter* %161)
  store i64 %162, i64* %11, align 8
  %163 = load i64, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %190

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %156
  %168 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %169 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %171, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %172, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %11, align 8
  %177 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %178 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %179 = call i32 @qlcnic_dump_mbx(%struct.qlcnic_adapter* %177, %struct.qlcnic_cmd_args* %178)
  br label %180

180:                                              ; preds = %167, %154
  br label %190

181:                                              ; preds = %126
  %182 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %183 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i64, i64* %15, align 8
  %187 = call i64 @QLCNIC_MBX_RSP(i64 %186)
  %188 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %187)
  %189 = load i64, i64* @QLCNIC_RCODE_TIMEOUT, align 8
  store i64 %189, i64* %11, align 8
  br label %190

190:                                              ; preds = %181, %180, %165
  %191 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %192 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %193 = load i32, i32* @QLCNIC_CLR_OWNER, align 4
  %194 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %191, i32 %192, i32 %193)
  %195 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %196 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %195, i32 0, i32 0
  %197 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %196, align 8
  %198 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %197, i32 0, i32 0
  %199 = load i64, i64* %9, align 8
  %200 = call i32 @spin_unlock_irqrestore(i32* %198, i64 %199)
  %201 = load i64, i64* %11, align 8
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %190, %59, %35
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i64 @LSW(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @QLCWRX(%struct.qlcnic_hardware_context*, i32, i32) #1

declare dso_local i64 @qlcnic_83xx_mbx_poll(%struct.qlcnic_adapter*, i64*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCNIC_MBX_STATUS(i64) #1

declare dso_local i64 @QLCNIC_MBX_NUM_REGS(i64) #1

declare dso_local i64 @QLCNIC_MBX_RSP(i64) #1

declare dso_local i32 @qlcnic_83xx_get_mbx_data(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i64 @qlcnic_83xx_mac_rcode(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @qlcnic_dump_mbx(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
