; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_hw_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i32, i64, i32, i32, %struct.emac_rxch** }
%struct.emac_rxch = type { i32, i32, i32 }

@EMAC_SOFTRESET = common dso_local global i32 0, align 4
@EMAC_DEF_TXPRIO_FIXED = common dso_local global i64 0, align 8
@EMAC_MACCONTROL_TXPTYPE = common dso_local global i32 0, align 4
@EMAC_MACCONTROL_GIGABITEN = common dso_local global i32 0, align 4
@EMAC_DEF_TXPACING_EN = common dso_local global i64 0, align 8
@EMAC_MACCONTROL_TXPACEEN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@EMAC_MACCONTROL = common dso_local global i32 0, align 4
@EMAC_DEF_PASS_CRC = common dso_local global i64 0, align 8
@EMAC_RXMBP_PASSCRC_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_QOS_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_QOSEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_NO_BUFF_CHAIN = common dso_local global i64 0, align 8
@EMAC_RXMBP_NOCHAIN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_MACCTRL_FRAME_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CMFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_SHORT_FRAME_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CSFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_ERROR_FRAME_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CEFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_PROM_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CAFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_PROM_CH = common dso_local global i32 0, align 4
@EMAC_RXMBP_CHMASK = common dso_local global i32 0, align 4
@EMAC_RXMBP_PROMCH_SHIFT = common dso_local global i32 0, align 4
@EMAC_DEF_BCAST_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_BROADEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_BCAST_CH = common dso_local global i32 0, align 4
@EMAC_RXMBP_BROADCH_SHIFT = common dso_local global i32 0, align 4
@EMAC_DEF_MCAST_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_MULTIEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_MCAST_CH = common dso_local global i32 0, align 4
@EMAC_RXMBP_MULTICH_SHIFT = common dso_local global i32 0, align 4
@EMAC_RXMBPENABLE = common dso_local global i32 0, align 4
@EMAC_RXMAXLEN = common dso_local global i32 0, align 4
@EMAC_DEF_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@EMAC_RX_MAX_LEN_MASK = common dso_local global i64 0, align 8
@EMAC_RXBUFFEROFFSET = common dso_local global i32 0, align 4
@EMAC_DEF_BUFFER_OFFSET = common dso_local global i64 0, align 8
@EMAC_RX_BUFFER_OFFSET_MASK = common dso_local global i64 0, align 8
@EMAC_RXFILTERLOWTHRESH = common dso_local global i32 0, align 4
@EMAC_RXUNICASTCLEAR = common dso_local global i32 0, align 4
@EMAC_RX_UNICAST_CLEAR_ALL = common dso_local global i64 0, align 8
@EMAC_MACCONFIG = common dso_local global i32 0, align 4
@EMAC_TXCONTROL = common dso_local global i32 0, align 4
@EMAC_TX_CONTROL_TX_ENABLE_VAL = common dso_local global i64 0, align 8
@EMAC_RXCONTROL = common dso_local global i32 0, align 4
@EMAC_RX_CONTROL_RX_ENABLE_VAL = common dso_local global i64 0, align 8
@EMAC_MACINTMASKSET = common dso_local global i32 0, align 4
@EMAC_MAC_HOST_ERR_INTMASK_VAL = common dso_local global i64 0, align 8
@EMAC_DEF_MAX_TX_CH = common dso_local global i64 0, align 8
@EMAC_TXINTMASKSET = common dso_local global i32 0, align 4
@EMAC_DEF_MAX_RX_CH = common dso_local global i64 0, align 8
@EMAC_RXINTMASKSET = common dso_local global i32 0, align 4
@EMAC_MACCONTROL_GMIIEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_priv*)* @emac_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_hw_enable(%struct.emac_priv* %0) #0 {
  %2 = alloca %struct.emac_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.emac_rxch*, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %2, align 8
  %8 = load i32, i32* @EMAC_SOFTRESET, align 4
  %9 = call i32 @emac_write(i32 %8, i64 1)
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i32, i32* @EMAC_SOFTRESET, align 4
  %12 = call i32 @emac_read(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @cpu_relax()
  br label %10

16:                                               ; preds = %10
  %17 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %18 = call i32 @emac_int_disable(%struct.emac_priv* %17)
  %19 = load i64, i64* @EMAC_DEF_TXPRIO_FIXED, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @EMAC_MACCONTROL_TXPTYPE, align 4
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %27 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1000
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EMAC_MACCONTROL_GIGABITEN, align 4
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = or i32 %25, %34
  %36 = load i64, i64* @EMAC_DEF_TXPACING_EN, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EMAC_MACCONTROL_TXPACEEN, align 4
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %35, %42
  %44 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %45 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DUPLEX_FULL, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = or i32 %43, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load i32, i32* @EMAC_MACCONTROL, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @emac_write(i32 %53, i64 %54)
  %56 = load i64, i64* @EMAC_DEF_PASS_CRC, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i32, i32* @EMAC_RXMBP_PASSCRC_MASK, align 4
  br label %61

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load i64, i64* @EMAC_DEF_QOS_EN, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @EMAC_RXMBP_QOSEN_MASK, align 4
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = or i32 %62, %69
  %71 = load i64, i64* @EMAC_DEF_NO_BUFF_CHAIN, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @EMAC_RXMBP_NOCHAIN_MASK, align 4
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %70, %77
  %79 = load i64, i64* @EMAC_DEF_MACCTRL_FRAME_EN, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @EMAC_RXMBP_CMFEN_MASK, align 4
  br label %84

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = or i32 %78, %85
  %87 = load i64, i64* @EMAC_DEF_SHORT_FRAME_EN, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @EMAC_RXMBP_CSFEN_MASK, align 4
  br label %92

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = or i32 %86, %93
  %95 = load i64, i64* @EMAC_DEF_ERROR_FRAME_EN, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @EMAC_RXMBP_CEFEN_MASK, align 4
  br label %100

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = or i32 %94, %101
  %103 = load i64, i64* @EMAC_DEF_PROM_EN, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @EMAC_RXMBP_CAFEN_MASK, align 4
  br label %108

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = or i32 %102, %109
  %111 = load i32, i32* @EMAC_DEF_PROM_CH, align 4
  %112 = load i32, i32* @EMAC_RXMBP_CHMASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @EMAC_RXMBP_PROMCH_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %110, %115
  %117 = load i64, i64* @EMAC_DEF_BCAST_EN, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @EMAC_RXMBP_BROADEN_MASK, align 4
  br label %122

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  %124 = or i32 %116, %123
  %125 = load i32, i32* @EMAC_DEF_BCAST_CH, align 4
  %126 = load i32, i32* @EMAC_RXMBP_CHMASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @EMAC_RXMBP_BROADCH_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %124, %129
  %131 = load i64, i64* @EMAC_DEF_MCAST_EN, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @EMAC_RXMBP_MULTIEN_MASK, align 4
  br label %136

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = or i32 %130, %137
  %139 = load i32, i32* @EMAC_DEF_MCAST_CH, align 4
  %140 = load i32, i32* @EMAC_RXMBP_CHMASK, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @EMAC_RXMBP_MULTICH_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = or i32 %138, %143
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %5, align 8
  %146 = load i32, i32* @EMAC_RXMBPENABLE, align 4
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @emac_write(i32 %146, i64 %147)
  %149 = load i32, i32* @EMAC_RXMAXLEN, align 4
  %150 = load i64, i64* @EMAC_DEF_MAX_FRAME_SIZE, align 8
  %151 = load i64, i64* @EMAC_RX_MAX_LEN_MASK, align 8
  %152 = and i64 %150, %151
  %153 = call i32 @emac_write(i32 %149, i64 %152)
  %154 = load i32, i32* @EMAC_RXBUFFEROFFSET, align 4
  %155 = load i64, i64* @EMAC_DEF_BUFFER_OFFSET, align 8
  %156 = load i64, i64* @EMAC_RX_BUFFER_OFFSET_MASK, align 8
  %157 = and i64 %155, %156
  %158 = call i32 @emac_write(i32 %154, i64 %157)
  %159 = load i32, i32* @EMAC_RXFILTERLOWTHRESH, align 4
  %160 = call i32 @emac_write(i32 %159, i64 0)
  %161 = load i32, i32* @EMAC_RXUNICASTCLEAR, align 4
  %162 = load i64, i64* @EMAC_RX_UNICAST_CLEAR_ALL, align 8
  %163 = call i32 @emac_write(i32 %161, i64 %162)
  %164 = load i32, i32* @EMAC_MACCONFIG, align 4
  %165 = call i32 @emac_read(i32 %164)
  %166 = ashr i32 %165, 8
  %167 = and i32 %166, 255
  %168 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %169 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @EMAC_TXCONTROL, align 4
  %171 = call i32 @emac_read(i32 %170)
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %4, align 8
  %173 = load i64, i64* @EMAC_TX_CONTROL_TX_ENABLE_VAL, align 8
  %174 = load i64, i64* %4, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %4, align 8
  %176 = load i32, i32* @EMAC_TXCONTROL, align 4
  %177 = load i64, i64* %4, align 8
  %178 = call i32 @emac_write(i32 %176, i64 %177)
  %179 = load i32, i32* @EMAC_RXCONTROL, align 4
  %180 = call i32 @emac_read(i32 %179)
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %4, align 8
  %182 = load i64, i64* @EMAC_RX_CONTROL_RX_ENABLE_VAL, align 8
  %183 = load i64, i64* %4, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %4, align 8
  %185 = load i32, i32* @EMAC_RXCONTROL, align 4
  %186 = load i64, i64* %4, align 8
  %187 = call i32 @emac_write(i32 %185, i64 %186)
  %188 = load i32, i32* @EMAC_MACINTMASKSET, align 4
  %189 = load i64, i64* @EMAC_MAC_HOST_ERR_INTMASK_VAL, align 8
  %190 = call i32 @emac_write(i32 %188, i64 %189)
  store i64 0, i64* %3, align 8
  br label %191

191:                                              ; preds = %203, %136
  %192 = load i64, i64* %3, align 8
  %193 = load i64, i64* @EMAC_DEF_MAX_TX_CH, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load i64, i64* %3, align 8
  %197 = call i32 @EMAC_TXHDP(i64 %196)
  %198 = call i32 @emac_write(i32 %197, i64 0)
  %199 = load i32, i32* @EMAC_TXINTMASKSET, align 4
  %200 = load i64, i64* %3, align 8
  %201 = call i64 @BIT(i64 %200)
  %202 = call i32 @emac_write(i32 %199, i64 %201)
  br label %203

203:                                              ; preds = %195
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %3, align 8
  br label %191

206:                                              ; preds = %191
  store i64 0, i64* %3, align 8
  br label %207

207:                                              ; preds = %237, %206
  %208 = load i64, i64* %3, align 8
  %209 = load i64, i64* @EMAC_DEF_MAX_RX_CH, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %240

211:                                              ; preds = %207
  %212 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %213 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %212, i32 0, i32 4
  %214 = load %struct.emac_rxch**, %struct.emac_rxch*** %213, align 8
  %215 = load i64, i64* %3, align 8
  %216 = getelementptr inbounds %struct.emac_rxch*, %struct.emac_rxch** %214, i64 %215
  %217 = load %struct.emac_rxch*, %struct.emac_rxch** %216, align 8
  store %struct.emac_rxch* %217, %struct.emac_rxch** %7, align 8
  %218 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %219 = load i64, i64* %3, align 8
  %220 = load %struct.emac_rxch*, %struct.emac_rxch** %7, align 8
  %221 = getelementptr inbounds %struct.emac_rxch, %struct.emac_rxch* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @emac_setmac(%struct.emac_priv* %218, i64 %219, i32 %222)
  %224 = load i32, i32* @EMAC_RXINTMASKSET, align 4
  %225 = load i64, i64* %3, align 8
  %226 = call i64 @BIT(i64 %225)
  %227 = call i32 @emac_write(i32 %224, i64 %226)
  %228 = load %struct.emac_rxch*, %struct.emac_rxch** %7, align 8
  %229 = getelementptr inbounds %struct.emac_rxch, %struct.emac_rxch* %228, i32 0, i32 0
  store i32 1, i32* %229, align 4
  %230 = load i64, i64* %3, align 8
  %231 = call i32 @EMAC_RXHDP(i64 %230)
  %232 = load %struct.emac_rxch*, %struct.emac_rxch** %7, align 8
  %233 = getelementptr inbounds %struct.emac_rxch, %struct.emac_rxch* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @emac_virt_to_phys(i32 %234)
  %236 = call i32 @emac_write(i32 %231, i64 %235)
  br label %237

237:                                              ; preds = %211
  %238 = load i64, i64* %3, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %3, align 8
  br label %207

240:                                              ; preds = %207
  %241 = load i32, i32* @EMAC_MACCONTROL, align 4
  %242 = call i32 @emac_read(i32 %241)
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %4, align 8
  %244 = load i64, i64* @EMAC_MACCONTROL_GMIIEN, align 8
  %245 = load i64, i64* %4, align 8
  %246 = or i64 %245, %244
  store i64 %246, i64* %4, align 8
  %247 = load i32, i32* @EMAC_MACCONTROL, align 4
  %248 = load i64, i64* %4, align 8
  %249 = call i32 @emac_write(i32 %247, i64 %248)
  %250 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %251 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %250, i32 0, i32 3
  %252 = call i32 @napi_enable(i32* %251)
  %253 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %254 = call i32 @emac_int_enable(%struct.emac_priv* %253)
  ret i32 0
}

declare dso_local i32 @emac_write(i32, i64) #1

declare dso_local i32 @emac_read(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @emac_int_disable(%struct.emac_priv*) #1

declare dso_local i32 @EMAC_TXHDP(i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @emac_setmac(%struct.emac_priv*, i64, i32) #1

declare dso_local i32 @EMAC_RXHDP(i64) #1

declare dso_local i64 @emac_virt_to_phys(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @emac_int_enable(%struct.emac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
