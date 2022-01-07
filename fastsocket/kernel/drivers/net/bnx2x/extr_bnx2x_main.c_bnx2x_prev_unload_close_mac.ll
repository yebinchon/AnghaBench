; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_close_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_close_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mac_vals = type { i32, i32, i32, i32, i32*, i8*, i8*, i8* }

@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Disable bmac Rx\0A\00", align 1
@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@BMAC_CONTROL_RX_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Disable emac Rx\0A\00", align 1
@NIG_REG_NIG_EMAC0_EN = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Disable xmac Rx\0A\00", align 1
@GRCBASE_XMAC1 = common dso_local global i32 0, align 4
@GRCBASE_XMAC0 = common dso_local global i32 0, align 4
@XMAC_REG_PFC_CTRL_HI = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_UMAC0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Disable umac Rx\0A\00", align 1
@GRCBASE_UMAC1 = common dso_local global i32 0, align 4
@GRCBASE_UMAC0 = common dso_local global i32 0, align 4
@UMAC_REG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mac_vals*)* @bnx2x_prev_unload_close_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_prev_unload_close_mac(%struct.bnx2x* %0, %struct.bnx2x_mac_vals* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_mac_vals*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_mac_vals* %1, %struct.bnx2x_mac_vals** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i32 @BP_PORT(%struct.bnx2x* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %16 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %21, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %25 = call i8* @REG_RD(%struct.bnx2x* %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i32 @CHIP_IS_E3(%struct.bnx2x* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %141, label %30

30:                                               ; preds = %2
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = load i32, i32* @NIG_REG_BMAC0_REGS_OUT_EN, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %32, %34
  %36 = call i8* @REG_RD(%struct.bnx2x* %31, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %120

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %45
  %49 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = call i32 @BP_PORT(%struct.bnx2x* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %6, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = call i64 @CHIP_IS_E2(%struct.bnx2x* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @BIGMAC2_REGISTER_BMAC_CONTROL, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @BIGMAC_REGISTER_BMAC_CONTROL, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %7, align 4
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i8* @REG_RD(%struct.bnx2x* %68, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 4
  %80 = call i8* @REG_RD(%struct.bnx2x* %75, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %87 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %97 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @BMAC_CONTROL_RX_ENABLE, align 4
  %101 = xor i32 %100, -1
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %101
  store i32 %104, i32* %102, align 4
  %105 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %106 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %107 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @REG_WR(%struct.bnx2x* %105, i32 %108, i32 %110)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %113 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %114 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @REG_WR(%struct.bnx2x* %112, i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %66, %45, %30
  %121 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @NIG_REG_NIG_EMAC0_EN, align 4
  %123 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %124 = call i32 @BP_PORT(%struct.bnx2x* %123)
  %125 = mul nsw i32 %124, 4
  %126 = add nsw i32 %122, %125
  %127 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %128 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %130 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %131 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @REG_RD(%struct.bnx2x* %129, i32 %132)
  %134 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %135 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %137 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %138 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @REG_WR(%struct.bnx2x* %136, i32 %139, i32 0)
  store i32 1, i32* %10, align 4
  br label %231

141:                                              ; preds = %2
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %194

146:                                              ; preds = %141
  %147 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %148 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %149 = call i32 @BP_PORT(%struct.bnx2x* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @GRCBASE_XMAC1, align 4
  br label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @GRCBASE_XMAC0, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %6, align 4
  %157 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i8* @REG_RD(%struct.bnx2x* %157, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %5, align 4
  %163 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, -3
  %169 = call i32 @REG_WR(%struct.bnx2x* %163, i32 %166, i32 %168)
  %170 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, 2
  %176 = call i32 @REG_WR(%struct.bnx2x* %170, i32 %173, i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @XMAC_REG_CTRL, align 4
  %179 = add nsw i32 %177, %178
  %180 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %181 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %183 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %184 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @REG_RD(%struct.bnx2x* %182, i32 %185)
  %187 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %188 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %187, i32 0, i32 6
  store i8* %186, i8** %188, align 8
  %189 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %190 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %191 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @REG_WR(%struct.bnx2x* %189, i32 %192, i32 0)
  store i32 1, i32* %10, align 4
  br label %194

194:                                              ; preds = %155, %141
  %195 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %196 = load i32, i32* %11, align 4
  %197 = shl i32 %195, %196
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %230

202:                                              ; preds = %194
  %203 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %204 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %205 = call i32 @BP_PORT(%struct.bnx2x* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, i32* @GRCBASE_UMAC1, align 4
  br label %211

209:                                              ; preds = %202
  %210 = load i32, i32* @GRCBASE_UMAC0, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %215 = add nsw i32 %213, %214
  %216 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %217 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %219 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %220 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @REG_RD(%struct.bnx2x* %218, i32 %221)
  %223 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %224 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %226 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %227 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @REG_WR(%struct.bnx2x* %225, i32 %228, i32 0)
  store i32 1, i32* %10, align 4
  br label %230

230:                                              ; preds = %211, %194
  br label %231

231:                                              ; preds = %230, %120
  %232 = load i32, i32* %10, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 @msleep(i32 20)
  br label %236

236:                                              ; preds = %234, %231
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
