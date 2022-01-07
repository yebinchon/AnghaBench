; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_post_bc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_post_bc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.TYPE_4__* }
%struct.qlcnic_hardware_context = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_bc_hdr = type { i32 }

@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Mailbox cmd attempted, 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Mailbox detached\0A\00", align 1
@QLCNIC_HOST_MBX_CTRL = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@QLCNIC_RCODE_TIMEOUT = common dso_local global i32 0, align 4
@QLCNIC_SET_OWNER = common dso_local global i32 0, align 4
@QLCNIC_MBX_ASYNC_EVENT = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"MBX command 0x%x failed with err:0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"MBX command 0x%x timed out\0A\00", align 1
@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_CLR_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32*, i32*, i32, i32)* @qlcnic_sriov_post_bc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_post_bc_msg(%struct.qlcnic_adapter* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.qlcnic_hardware_context*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %26, align 8
  store %struct.qlcnic_hardware_context* %27, %struct.qlcnic_hardware_context** %19, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = bitcast i32* %28 to %struct.qlcnic_bc_hdr*
  %30 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 0
  %35 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %34, align 8
  %36 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %32, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %5
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %21, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_info(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_info(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %213

52:                                               ; preds = %5
  %53 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %54 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %53, i32 0, i32 1
  %55 = load i64, i64* %20, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %58 = load i32, i32* @QLCNIC_HOST_MBX_CTRL, align 4
  %59 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %64 = load i32, i32* @DRV, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @QLCDB(%struct.qlcnic_adapter* %63, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %68 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %67, i32 0, i32 1
  %69 = load i64, i64* %20, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  store i32 %71, i32* %6, align 4
  br label %213

72:                                               ; preds = %52
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 1
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = shl i32 %77, 16
  %79 = or i32 49, %78
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 0
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %81, align 8
  %83 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 29
  %86 = or i32 %79, %85
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %89 = call i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context* %88, i32 0)
  %90 = call i32 @writel(i32 %87, i32 %89)
  store i32 17, i32* %16, align 4
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %92 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %72
  %95 = load i32, i32* %10, align 4
  %96 = shl i32 %95, 5
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %94, %72
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %102 = call i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context* %101, i32 1)
  %103 = call i32 @writel(i32 %100, i32 %102)
  store i32 2, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %104

104:                                              ; preds = %116, %99
  %105 = load i32, i32* %24, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %106, 1
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %8, align 8
  %111 = load i32, i32* %109, align 4
  %112 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %113 = load i32, i32* %23, align 4
  %114 = call i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context* %112, i32 %113)
  %115 = call i32 @writel(i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %24, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %24, align 4
  br label %104

121:                                              ; preds = %104
  store i32 0, i32* %24, align 4
  br label %122

122:                                              ; preds = %134, %121
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %9, align 8
  %129 = load i32, i32* %127, align 4
  %130 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %131 = load i32, i32* %23, align 4
  %132 = call i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context* %130, i32 %131)
  %133 = call i32 @writel(i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %24, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %23, align 4
  br label %122

139:                                              ; preds = %122
  %140 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %141 = load i32, i32* @QLCNIC_HOST_MBX_CTRL, align 4
  %142 = load i32, i32* @QLCNIC_SET_OWNER, align 4
  %143 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %158, %139
  %145 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %146 = call i32 @qlcnic_83xx_mbx_poll(%struct.qlcnic_adapter* %145, i32* %18)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %192

150:                                              ; preds = %144
  %151 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %152 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %151, i32 0)
  %153 = call i32 @readl(i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @QLCNIC_MBX_ASYNC_EVENT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %160 = call i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %159)
  br label %144

161:                                              ; preds = %150
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @QLCNIC_MBX_STATUS(i32 %162)
  store i32 %163, i32* %22, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @QLCNIC_MBX_NUM_REGS(i32 %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @QLCNIC_MBX_RSP(i32 %166)
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %22, align 4
  switch i32 %168, label %171 [
    i32 128, label %169
    i32 129, label %169
  ]

169:                                              ; preds = %161, %161
  %170 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %170, i32* %12, align 4
  br label %191

171:                                              ; preds = %161
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %177 = call i32 @qlcnic_83xx_mac_rcode(%struct.qlcnic_adapter* %176)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  br label %201

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %171
  %183 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %184 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %22, align 4
  %189 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* %22, align 4
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %182, %169
  br label %201

192:                                              ; preds = %144
  %193 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %194 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @QLCNIC_MBX_RSP(i32 %197)
  %199 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %192, %191, %180
  %202 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  %203 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %204 = load i32, i32* @QLCNIC_CLR_OWNER, align 4
  %205 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %202, i32 %203, i32 %204)
  %206 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %207 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %206, i32 0, i32 0
  %208 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %207, align 8
  %209 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %208, i32 0, i32 1
  %210 = load i64, i64* %20, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %201, %62, %40
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @QLCNIC_MBX_HOST(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCWRX(%struct.qlcnic_hardware_context*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_mbx_poll(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCNIC_MBX_STATUS(i32) #1

declare dso_local i32 @QLCNIC_MBX_NUM_REGS(i32) #1

declare dso_local i32 @QLCNIC_MBX_RSP(i32) #1

declare dso_local i32 @qlcnic_83xx_mac_rcode(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
