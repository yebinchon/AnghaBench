; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_umac_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_umac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i64, i32, i32 }

@GRCBASE_UMAC1 = common dso_local global i32 0, align 4
@GRCBASE_UMAC0 = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_UMAC0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enabling UMAC\0A\00", align 1
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_PROMIS_EN = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_PAD_EN = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_SW_RESET = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid speed for UMAC %d\0A\00", align 1
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@UMAC_COMMAND_CONFIG_REG_HD_ENA = common dso_local global i32 0, align 4
@UMAC_REG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"configured UMAC for EEE\0A\00", align 1
@UMAC_REG_UMAC_EEE_CTRL = common dso_local global i32 0, align 4
@UMAC_UMAC_EEE_CTRL_REG_EEE_EN = common dso_local global i32 0, align 4
@UMAC_REG_EEE_WAKE_TIMER = common dso_local global i32 0, align 4
@UMAC_REG_MAC_ADDR0 = common dso_local global i32 0, align 4
@UMAC_REG_MAC_ADDR1 = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_TX_ENA = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_RX_ENA = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_LOOP_ENA = common dso_local global i32 0, align 4
@UMAC_REG_MAXFR = common dso_local global i32 0, align 4
@MAC_TYPE_UMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*, i64)* @bnx2x_umac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_umac_enable(%struct.link_params* %0, %struct.link_vars* %1, i64 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.link_params*, %struct.link_params** %4, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @GRCBASE_UMAC1, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @GRCBASE_UMAC0, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load %struct.link_params*, %struct.link_params** %4, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 2
  %22 = load %struct.bnx2x*, %struct.bnx2x** %21, align 8
  store %struct.bnx2x* %22, %struct.bnx2x** %9, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %24 = load i32, i32* @GRCBASE_MISC, align 4
  %25 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %28 = load %struct.link_params*, %struct.link_params** %4, align 8
  %29 = getelementptr inbounds %struct.link_params, %struct.link_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %27, %30
  %32 = call i32 @REG_WR(%struct.bnx2x* %23, i32 %26, i32 %31)
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %35 = load i32, i32* @GRCBASE_MISC, align 4
  %36 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_SET, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %39 = load %struct.link_params*, %struct.link_params** %4, align 8
  %40 = getelementptr inbounds %struct.link_params, %struct.link_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %38, %41
  %43 = call i32 @REG_WR(%struct.bnx2x* %34, i32 %37, i32 %42)
  %44 = load i32, i32* @NETIF_MSG_LINK, align 4
  %45 = call i32 (i32, i8*, ...) @DP(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %47 = load i32, i32* @NIG_REG_EGRESS_EMAC0_PORT, align 4
  %48 = load %struct.link_params*, %struct.link_params** %4, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %47, %51
  %53 = call i32 @REG_WR(%struct.bnx2x* %46, i32 %52, i32 1)
  %54 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_PROMIS_EN, align 4
  %55 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_PAD_EN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_SW_RESET, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %62 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %75 [
    i32 131, label %64
    i32 130, label %66
    i32 129, label %69
    i32 128, label %72
  ]

64:                                               ; preds = %18
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %7, align 4
  br label %81

66:                                               ; preds = %18
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, 4
  store i32 %68, i32* %7, align 4
  br label %81

69:                                               ; preds = %18
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 8
  store i32 %71, i32* %7, align 4
  br label %81

72:                                               ; preds = %18
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, 12
  store i32 %74, i32* %7, align 4
  br label %81

75:                                               ; preds = %18
  %76 = load i32, i32* @NETIF_MSG_LINK, align 4
  %77 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %78 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @DP(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %72, %69, %66, %64
  %82 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %83 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %94 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %105 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DUPLEX_HALF, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_HD_ENA, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @REG_WR(%struct.bnx2x* %114, i32 %117, i32 %118)
  %120 = call i32 @udelay(i32 50)
  %121 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %122 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SHMEM_EEE_ADV_STATUS_MASK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %113
  %128 = load i32, i32* @NETIF_MSG_LINK, align 4
  %129 = call i32 (i32, i8*, ...) @DP(i32 %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @UMAC_REG_UMAC_EEE_CTRL, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* @UMAC_UMAC_EEE_CTRL_REG_EEE_EN, align 4
  %135 = call i32 @REG_WR(%struct.bnx2x* %130, i32 %133, i32 %134)
  %136 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @UMAC_REG_EEE_WAKE_TIMER, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @REG_WR(%struct.bnx2x* %136, i32 %139, i32 17)
  br label %147

141:                                              ; preds = %113
  %142 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @UMAC_REG_UMAC_EEE_CTRL, align 4
  %145 = add nsw i32 %143, %144
  %146 = call i32 @REG_WR(%struct.bnx2x* %142, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %141, %127
  %148 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @UMAC_REG_MAC_ADDR0, align 4
  %151 = add nsw i32 %149, %150
  %152 = load %struct.link_params*, %struct.link_params** %4, align 8
  %153 = getelementptr inbounds %struct.link_params, %struct.link_params* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 24
  %158 = load %struct.link_params*, %struct.link_params** %4, align 8
  %159 = getelementptr inbounds %struct.link_params, %struct.link_params* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 16
  %164 = or i32 %157, %163
  %165 = load %struct.link_params*, %struct.link_params** %4, align 8
  %166 = getelementptr inbounds %struct.link_params, %struct.link_params* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 8
  %171 = or i32 %164, %170
  %172 = load %struct.link_params*, %struct.link_params** %4, align 8
  %173 = getelementptr inbounds %struct.link_params, %struct.link_params* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %171, %176
  %178 = call i32 @REG_WR(%struct.bnx2x* %148, i32 %151, i32 %177)
  %179 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @UMAC_REG_MAC_ADDR1, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %struct.link_params*, %struct.link_params** %4, align 8
  %184 = getelementptr inbounds %struct.link_params, %struct.link_params* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = load %struct.link_params*, %struct.link_params** %4, align 8
  %190 = getelementptr inbounds %struct.link_params, %struct.link_params* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %188, %193
  %195 = call i32 @REG_WR(%struct.bnx2x* %179, i32 %182, i32 %194)
  %196 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_PAD_EN, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %7, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_TX_ENA, align 4
  %201 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_RX_ENA, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %7, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %7, align 4
  %205 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @REG_WR(%struct.bnx2x* %205, i32 %208, i32 %209)
  %211 = call i32 @udelay(i32 50)
  %212 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_SW_RESET, align 4
  %213 = xor i32 %212, -1
  %214 = load i32, i32* %7, align 4
  %215 = and i32 %214, %213
  store i32 %215, i32* %7, align 4
  %216 = load i64, i64* %6, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %147
  %219 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_LOOP_ENA, align 4
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %218, %147
  %223 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @REG_WR(%struct.bnx2x* %223, i32 %226, i32 %227)
  %229 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @UMAC_REG_MAXFR, align 4
  %232 = add nsw i32 %230, %231
  %233 = call i32 @REG_WR(%struct.bnx2x* %229, i32 %232, i32 10000)
  %234 = load %struct.link_params*, %struct.link_params** %4, align 8
  %235 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %236 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = call i32 @bnx2x_set_xumac_nig(%struct.link_params* %234, i32 %241, i32 1)
  %243 = load i32, i32* @MAC_TYPE_UMAC, align 4
  %244 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %245 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 4
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bnx2x_set_xumac_nig(%struct.link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
