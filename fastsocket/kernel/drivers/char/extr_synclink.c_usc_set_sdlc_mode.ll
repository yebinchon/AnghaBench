; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_set_sdlc_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_set_sdlc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@TMCR = common dso_local global i32 0, align 4
@TMDR = common dso_local global i32 0, align 4
@IUSC_PRE_SL1660 = common dso_local global i32 0, align 4
@HDLC_FLAG_HDLC_LOOPMODE = common dso_local global i32 0, align 4
@MGSL_MODE_RAW = common dso_local global i64 0, align 8
@IOCR = common dso_local global i32 0, align 4
@BIT13 = common dso_local global i32 0, align 4
@BIT12 = common dso_local global i32 0, align 4
@HDLC_FLAG_UNDERRUN_ABORT15 = common dso_local global i32 0, align 4
@BIT14 = common dso_local global i32 0, align 4
@HDLC_FLAG_UNDERRUN_FLAG = common dso_local global i32 0, align 4
@BIT15 = common dso_local global i32 0, align 4
@HDLC_FLAG_UNDERRUN_CRC = common dso_local global i32 0, align 4
@HDLC_PREAMBLE_PATTERN_NONE = common dso_local global i32 0, align 4
@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@HDLC_FLAG_SHARE_ZERO = common dso_local global i32 0, align 4
@RSR = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@HDLC_CRC_MASK = common dso_local global i32 0, align 4
@HDLC_CRC_16_CCITT = common dso_local global i32 0, align 4
@BIT9 = common dso_local global i32 0, align 4
@HDLC_CRC_32_CCITT = common dso_local global i32 0, align 4
@BIT10 = common dso_local global i32 0, align 4
@RMR = common dso_local global i32 0, align 4
@RCLR = common dso_local global i32 0, align 4
@RCLRVALUE = common dso_local global i32 0, align 4
@RCmd_SelectRicrdma_level = common dso_local global i32 0, align 4
@RICR = common dso_local global i32 0, align 4
@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@RXSTATUS_ALL = common dso_local global i32 0, align 4
@RECEIVE_STATUS = common dso_local global i64 0, align 8
@BIT8 = common dso_local global i32 0, align 4
@TMR = common dso_local global i32 0, align 4
@TCmd_SelectTicrdma_level = common dso_local global i32 0, align 4
@TICR = common dso_local global i32 0, align 4
@TXSTATUS_ALL = common dso_local global i32 0, align 4
@TRANSMIT_STATUS = common dso_local global i64 0, align 8
@TCSR_UNDERWAIT = common dso_local global i32 0, align 4
@TCSR = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_BRG = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_TXCPIN = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_BRG = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_RXCPIN = common dso_local global i32 0, align 4
@CMCR = common dso_local global i32 0, align 4
@HDLC_FLAG_DPLL_DIV16 = common dso_local global i32 0, align 4
@HDLC_FLAG_DPLL_DIV8 = common dso_local global i32 0, align 4
@BIT11 = common dso_local global i32 0, align 4
@TC1R = common dso_local global i32 0, align 4
@HCR = common dso_local global i32 0, align 4
@CCSR = common dso_local global i32 0, align 4
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@SICR = common dso_local global i32 0, align 4
@SICR_CTS_INACTIVE = common dso_local global i32 0, align 4
@RECEIVE_DATA = common dso_local global i64 0, align 8
@TRANSMIT_DATA = common dso_local global i64 0, align 8
@MISC = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i32 0, align 4
@DmaCmd_ResetAllChannels = common dso_local global i32 0, align 4
@MGSL_BUS_TYPE_ISA = common dso_local global i64 0, align 8
@PCR = common dso_local global i32 0, align 4
@DCR = common dso_local global i32 0, align 4
@RDMR = common dso_local global i32 0, align 4
@TDMR = common dso_local global i32 0, align 4
@DICR = common dso_local global i32 0, align 4
@CDIR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@BDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_set_sdlc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_set_sdlc_mode(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %9 = load i32, i32* @TMCR, align 4
  %10 = call i32 @usc_OutReg(%struct.mgsl_struct* %8, i32 %9, i32 31)
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %12 = load i32, i32* @TMDR, align 4
  %13 = call i32 @usc_InReg(%struct.mgsl_struct* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IUSC_PRE_SL1660, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HDLC_FLAG_HDLC_LOOPMODE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 36358, i32* %3, align 4
  br label %104

26:                                               ; preds = %1
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %28 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MGSL_MODE_RAW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  %34 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %35 = load i32, i32* @IOCR, align 4
  %36 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %37 = load i32, i32* @IOCR, align 4
  %38 = call i32 @usc_InReg(%struct.mgsl_struct* %36, i32 %37)
  %39 = load i32, i32* @BIT13, align 4
  %40 = load i32, i32* @BIT12, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = load i32, i32* @BIT12, align 4
  %45 = or i32 %43, %44
  %46 = trunc i32 %45 to i16
  %47 = zext i16 %46 to i32
  %48 = call i32 @usc_OutReg(%struct.mgsl_struct* %34, i32 %35, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, 1024
  store i32 %50, i32* %3, align 4
  br label %92

51:                                               ; preds = %26
  store i32 1542, i32* %3, align 4
  %52 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %53 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HDLC_FLAG_UNDERRUN_ABORT15, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @BIT14, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %51
  %64 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %65 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HDLC_FLAG_UNDERRUN_FLAG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @BIT15, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %90

75:                                               ; preds = %63
  %76 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %77 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @HDLC_FLAG_UNDERRUN_CRC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* @BIT15, align 4
  %85 = load i32, i32* @BIT14, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %75
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %33
  %93 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %94 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HDLC_PREAMBLE_PATTERN_NONE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @BIT13, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %92
  br label %104

104:                                              ; preds = %103, %25
  %105 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %106 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %104
  %112 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %113 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HDLC_FLAG_SHARE_ZERO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @BIT12, align 4
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %111, %104
  %124 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %125 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 255
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %131 = load i32, i32* @RSR, align 4
  %132 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %133 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @usc_OutReg(%struct.mgsl_struct* %130, i32 %131, i32 %135)
  %137 = load i32, i32* @BIT4, align 4
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %129, %123
  %141 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %142 = load i32, i32* @CMR, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @usc_OutReg(%struct.mgsl_struct* %141, i32 %142, i32 %143)
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %147 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 1280, i32* %3, align 4
  %148 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %149 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %190 [
    i32 137, label %152
    i32 136, label %156
    i32 135, label %160
    i32 141, label %166
    i32 140, label %170
    i32 142, label %176
    i32 139, label %182
  ]

152:                                              ; preds = %140
  %153 = load i32, i32* @BIT13, align 4
  %154 = load i32, i32* %3, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %3, align 4
  br label %190

156:                                              ; preds = %140
  %157 = load i32, i32* @BIT14, align 4
  %158 = load i32, i32* %3, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %3, align 4
  br label %190

160:                                              ; preds = %140
  %161 = load i32, i32* @BIT14, align 4
  %162 = load i32, i32* @BIT13, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* %3, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %3, align 4
  br label %190

166:                                              ; preds = %140
  %167 = load i32, i32* @BIT15, align 4
  %168 = load i32, i32* %3, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %3, align 4
  br label %190

170:                                              ; preds = %140
  %171 = load i32, i32* @BIT15, align 4
  %172 = load i32, i32* @BIT13, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %3, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %3, align 4
  br label %190

176:                                              ; preds = %140
  %177 = load i32, i32* @BIT15, align 4
  %178 = load i32, i32* @BIT14, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %3, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %3, align 4
  br label %190

182:                                              ; preds = %140
  %183 = load i32, i32* @BIT15, align 4
  %184 = load i32, i32* @BIT14, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* @BIT13, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %3, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %140, %182, %176, %170, %166, %160, %156, %152
  %191 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %192 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @HDLC_CRC_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @HDLC_CRC_16_CCITT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load i32, i32* @BIT9, align 4
  %201 = load i32, i32* %3, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %3, align 4
  br label %221

203:                                              ; preds = %190
  %204 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %205 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @HDLC_CRC_MASK, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* @HDLC_CRC_32_CCITT, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %203
  %213 = load i32, i32* @BIT12, align 4
  %214 = load i32, i32* @BIT10, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @BIT9, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* %3, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %212, %203
  br label %221

221:                                              ; preds = %220, %199
  %222 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %223 = load i32, i32* @RMR, align 4
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @usc_OutReg(%struct.mgsl_struct* %222, i32 %223, i32 %224)
  %226 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %227 = load i32, i32* @RCLR, align 4
  %228 = load i32, i32* @RCLRVALUE, align 4
  %229 = call i32 @usc_OutReg(%struct.mgsl_struct* %226, i32 %227, i32 %228)
  %230 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %231 = load i32, i32* @RCmd_SelectRicrdma_level, align 4
  %232 = call i32 @usc_RCmd(%struct.mgsl_struct* %230, i32 %231)
  %233 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %234 = load i32, i32* @RICR, align 4
  %235 = call i32 @usc_InReg(%struct.mgsl_struct* %233, i32 %234)
  %236 = and i32 %235, 192
  store i32 %236, i32* %3, align 4
  %237 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %238 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %221
  %243 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %244 = load i32, i32* @RICR, align 4
  %245 = load i32, i32* %3, align 4
  %246 = or i32 778, %245
  %247 = call i32 @usc_OutReg(%struct.mgsl_struct* %243, i32 %244, i32 %246)
  br label %254

248:                                              ; preds = %221
  %249 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %250 = load i32, i32* @RICR, align 4
  %251 = load i32, i32* %3, align 4
  %252 = or i32 5130, %251
  %253 = call i32 @usc_OutReg(%struct.mgsl_struct* %249, i32 %250, i32 %252)
  br label %254

254:                                              ; preds = %248, %242
  %255 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %256 = load i32, i32* @RXSTATUS_ALL, align 4
  %257 = call i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct* %255, i32 %256)
  %258 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %259 = load i64, i64* @RECEIVE_STATUS, align 8
  %260 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %258, i64 %259)
  store i32 1024, i32* %3, align 4
  %261 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %262 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  switch i32 %264, label %303 [
    i32 137, label %265
    i32 136, label %269
    i32 135, label %273
    i32 141, label %279
    i32 140, label %283
    i32 142, label %289
    i32 139, label %295
  ]

265:                                              ; preds = %254
  %266 = load i32, i32* @BIT13, align 4
  %267 = load i32, i32* %3, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %3, align 4
  br label %303

269:                                              ; preds = %254
  %270 = load i32, i32* @BIT14, align 4
  %271 = load i32, i32* %3, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %3, align 4
  br label %303

273:                                              ; preds = %254
  %274 = load i32, i32* @BIT14, align 4
  %275 = load i32, i32* @BIT13, align 4
  %276 = add nsw i32 %274, %275
  %277 = load i32, i32* %3, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %3, align 4
  br label %303

279:                                              ; preds = %254
  %280 = load i32, i32* @BIT15, align 4
  %281 = load i32, i32* %3, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %3, align 4
  br label %303

283:                                              ; preds = %254
  %284 = load i32, i32* @BIT15, align 4
  %285 = load i32, i32* @BIT13, align 4
  %286 = add nsw i32 %284, %285
  %287 = load i32, i32* %3, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %3, align 4
  br label %303

289:                                              ; preds = %254
  %290 = load i32, i32* @BIT15, align 4
  %291 = load i32, i32* @BIT14, align 4
  %292 = add nsw i32 %290, %291
  %293 = load i32, i32* %3, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %3, align 4
  br label %303

295:                                              ; preds = %254
  %296 = load i32, i32* @BIT15, align 4
  %297 = load i32, i32* @BIT14, align 4
  %298 = add nsw i32 %296, %297
  %299 = load i32, i32* @BIT13, align 4
  %300 = add nsw i32 %298, %299
  %301 = load i32, i32* %3, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %254, %295, %289, %283, %279, %273, %269, %265
  %304 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %305 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @HDLC_CRC_MASK, align 4
  %309 = and i32 %307, %308
  %310 = load i32, i32* @HDLC_CRC_16_CCITT, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %303
  %313 = load i32, i32* @BIT9, align 4
  %314 = load i32, i32* @BIT8, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* %3, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %3, align 4
  br label %338

318:                                              ; preds = %303
  %319 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %320 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @HDLC_CRC_MASK, align 4
  %324 = and i32 %322, %323
  %325 = load i32, i32* @HDLC_CRC_32_CCITT, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %337

327:                                              ; preds = %318
  %328 = load i32, i32* @BIT12, align 4
  %329 = load i32, i32* @BIT10, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @BIT9, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @BIT8, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* %3, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %3, align 4
  br label %337

337:                                              ; preds = %327, %318
  br label %338

338:                                              ; preds = %337, %312
  %339 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %340 = load i32, i32* @TMR, align 4
  %341 = load i32, i32* %3, align 4
  %342 = call i32 @usc_OutReg(%struct.mgsl_struct* %339, i32 %340, i32 %341)
  %343 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %344 = call i32 @usc_set_txidle(%struct.mgsl_struct* %343)
  %345 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %346 = load i32, i32* @TCmd_SelectTicrdma_level, align 4
  %347 = call i32 @usc_TCmd(%struct.mgsl_struct* %345, i32 %346)
  %348 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %349 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %338
  %354 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %355 = load i32, i32* @TICR, align 4
  %356 = call i32 @usc_OutReg(%struct.mgsl_struct* %354, i32 %355, i32 1846)
  br label %361

357:                                              ; preds = %338
  %358 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %359 = load i32, i32* @TICR, align 4
  %360 = call i32 @usc_OutReg(%struct.mgsl_struct* %358, i32 %359, i32 5174)
  br label %361

361:                                              ; preds = %357, %353
  %362 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %363 = load i32, i32* @TXSTATUS_ALL, align 4
  %364 = call i32 @usc_UnlatchTxstatusBits(%struct.mgsl_struct* %362, i32 %363)
  %365 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %366 = load i64, i64* @TRANSMIT_STATUS, align 8
  %367 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %365, i64 %366)
  %368 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %369 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %368, i32 0, i32 2
  store i32 0, i32* %369, align 8
  %370 = load i32, i32* %4, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %378, label %372

372:                                              ; preds = %361
  %373 = load i32, i32* @TCSR_UNDERWAIT, align 4
  %374 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %375 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %373
  store i32 %377, i32* %375, align 8
  br label %378

378:                                              ; preds = %372, %361
  %379 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %380 = load i32, i32* @TCSR, align 4
  %381 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %382 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @usc_OutReg(%struct.mgsl_struct* %379, i32 %380, i32 %383)
  store i32 3904, i32* %3, align 4
  %385 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %386 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %378
  %393 = load i32, i32* %3, align 4
  %394 = or i32 %393, 3
  store i32 %394, i32* %3, align 4
  br label %422

395:                                              ; preds = %378
  %396 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %397 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %396, i32 0, i32 4
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @HDLC_FLAG_RXC_BRG, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %395
  %404 = load i32, i32* %3, align 4
  %405 = or i32 %404, 4
  store i32 %405, i32* %3, align 4
  br label %421

406:                                              ; preds = %395
  %407 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %408 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @HDLC_FLAG_RXC_TXCPIN, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %406
  %415 = load i32, i32* %3, align 4
  %416 = or i32 %415, 6
  store i32 %416, i32* %3, align 4
  br label %420

417:                                              ; preds = %406
  %418 = load i32, i32* %3, align 4
  %419 = or i32 %418, 7
  store i32 %419, i32* %3, align 4
  br label %420

420:                                              ; preds = %417, %414
  br label %421

421:                                              ; preds = %420, %403
  br label %422

422:                                              ; preds = %421, %392
  %423 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %424 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %422
  %431 = load i32, i32* %3, align 4
  %432 = or i32 %431, 24
  store i32 %432, i32* %3, align 4
  br label %460

433:                                              ; preds = %422
  %434 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %435 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %434, i32 0, i32 4
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %433
  %442 = load i32, i32* %3, align 4
  %443 = or i32 %442, 32
  store i32 %443, i32* %3, align 4
  br label %459

444:                                              ; preds = %433
  %445 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %446 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %445, i32 0, i32 4
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @HDLC_FLAG_TXC_RXCPIN, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %444
  %453 = load i32, i32* %3, align 4
  %454 = or i32 %453, 56
  store i32 %454, i32* %3, align 4
  br label %458

455:                                              ; preds = %444
  %456 = load i32, i32* %3, align 4
  %457 = or i32 %456, 48
  store i32 %457, i32* %3, align 4
  br label %458

458:                                              ; preds = %455, %452
  br label %459

459:                                              ; preds = %458, %441
  br label %460

460:                                              ; preds = %459, %430
  %461 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %462 = load i32, i32* @CMCR, align 4
  %463 = load i32, i32* %3, align 4
  %464 = call i32 @usc_OutReg(%struct.mgsl_struct* %461, i32 %462, i32 %463)
  store i32 0, i32* %3, align 4
  %465 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %466 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %465, i32 0, i32 4
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %470 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %471 = add nsw i32 %469, %470
  %472 = and i32 %468, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %570

474:                                              ; preds = %460
  %475 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %476 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %474
  store i32 11059200, i32* %5, align 4
  br label %482

481:                                              ; preds = %474
  store i32 14745600, i32* %5, align 4
  br label %482

482:                                              ; preds = %481, %480
  %483 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %484 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %483, i32 0, i32 4
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @HDLC_FLAG_DPLL_DIV16, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %482
  store i32 16, i32* %6, align 4
  %491 = load i32, i32* @BIT10, align 4
  %492 = load i32, i32* %3, align 4
  %493 = or i32 %492, %491
  store i32 %493, i32* %3, align 4
  br label %508

494:                                              ; preds = %482
  %495 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %496 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %495, i32 0, i32 4
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* @HDLC_FLAG_DPLL_DIV8, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %494
  store i32 8, i32* %6, align 4
  %503 = load i32, i32* @BIT11, align 4
  %504 = load i32, i32* %3, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %3, align 4
  br label %507

506:                                              ; preds = %494
  store i32 32, i32* %6, align 4
  br label %507

507:                                              ; preds = %506, %502
  br label %508

508:                                              ; preds = %507, %490
  %509 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %510 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %509, i32 0, i32 4
  %511 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %510, i32 0, i32 6
  %512 = load i32, i32* %511, align 8
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %542

514:                                              ; preds = %508
  %515 = load i32, i32* %5, align 4
  %516 = load i32, i32* %6, align 4
  %517 = sdiv i32 %515, %516
  %518 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %519 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %518, i32 0, i32 4
  %520 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %519, i32 0, i32 6
  %521 = load i32, i32* %520, align 8
  %522 = sdiv i32 %517, %521
  store i32 %522, i32* %7, align 4
  %523 = load i32, i32* %5, align 4
  %524 = load i32, i32* %6, align 4
  %525 = sdiv i32 %523, %524
  %526 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %527 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %526, i32 0, i32 4
  %528 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i32 0, i32 6
  %529 = load i32, i32* %528, align 8
  %530 = srem i32 %525, %529
  %531 = mul nsw i32 %530, 2
  %532 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %533 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %532, i32 0, i32 4
  %534 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %533, i32 0, i32 6
  %535 = load i32, i32* %534, align 8
  %536 = sdiv i32 %531, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %541, label %538

538:                                              ; preds = %514
  %539 = load i32, i32* %7, align 4
  %540 = add nsw i32 %539, -1
  store i32 %540, i32* %7, align 4
  br label %541

541:                                              ; preds = %538, %514
  br label %543

542:                                              ; preds = %508
  store i32 -1, i32* %7, align 4
  br label %543

543:                                              ; preds = %542, %541
  %544 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %545 = load i32, i32* @TC1R, align 4
  %546 = load i32, i32* %7, align 4
  %547 = call i32 @usc_OutReg(%struct.mgsl_struct* %544, i32 %545, i32 %546)
  %548 = load i32, i32* @BIT4, align 4
  %549 = load i32, i32* %3, align 4
  %550 = or i32 %549, %548
  store i32 %550, i32* %3, align 4
  %551 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %552 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %551, i32 0, i32 4
  %553 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %552, i32 0, i32 4
  %554 = load i32, i32* %553, align 8
  switch i32 %554, label %569 [
    i32 138, label %555
    i32 137, label %555
    i32 136, label %555
    i32 135, label %555
    i32 141, label %559
    i32 140, label %559
    i32 142, label %563
    i32 139, label %563
  ]

555:                                              ; preds = %543, %543, %543, %543
  %556 = load i32, i32* @BIT8, align 4
  %557 = load i32, i32* %3, align 4
  %558 = or i32 %557, %556
  store i32 %558, i32* %3, align 4
  br label %569

559:                                              ; preds = %543, %543
  %560 = load i32, i32* @BIT9, align 4
  %561 = load i32, i32* %3, align 4
  %562 = or i32 %561, %560
  store i32 %562, i32* %3, align 4
  br label %569

563:                                              ; preds = %543, %543
  %564 = load i32, i32* @BIT9, align 4
  %565 = load i32, i32* @BIT8, align 4
  %566 = add nsw i32 %564, %565
  %567 = load i32, i32* %3, align 4
  %568 = or i32 %567, %566
  store i32 %568, i32* %3, align 4
  br label %569

569:                                              ; preds = %543, %563, %559, %555
  br label %570

570:                                              ; preds = %569, %460
  %571 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %572 = load i32, i32* @HCR, align 4
  %573 = load i32, i32* %3, align 4
  %574 = call i32 @usc_OutReg(%struct.mgsl_struct* %571, i32 %572, i32 %573)
  %575 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %576 = load i32, i32* @CCSR, align 4
  %577 = call i32 @usc_OutReg(%struct.mgsl_struct* %575, i32 %576, i32 4128)
  %578 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %579 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %578, i32 0, i32 4
  %580 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %583 = and i32 %581, %582
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %594

585:                                              ; preds = %570
  %586 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %587 = load i32, i32* @SICR, align 4
  %588 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %589 = load i32, i32* @SICR, align 4
  %590 = call i32 @usc_InReg(%struct.mgsl_struct* %588, i32 %589)
  %591 = load i32, i32* @SICR_CTS_INACTIVE, align 4
  %592 = or i32 %590, %591
  %593 = call i32 @usc_OutReg(%struct.mgsl_struct* %586, i32 %587, i32 %592)
  br label %594

594:                                              ; preds = %585, %570
  %595 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %596 = call i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct* %595)
  %597 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %598 = load i64, i64* @RECEIVE_STATUS, align 8
  %599 = load i64, i64* @RECEIVE_DATA, align 8
  %600 = add nsw i64 %598, %599
  %601 = load i64, i64* @TRANSMIT_STATUS, align 8
  %602 = add nsw i64 %600, %601
  %603 = load i64, i64* @TRANSMIT_DATA, align 8
  %604 = add nsw i64 %602, %603
  %605 = load i64, i64* @MISC, align 8
  %606 = add nsw i64 %604, %605
  %607 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %597, i64 %606)
  %608 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %609 = load i32, i32* @SICR, align 4
  %610 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %611 = load i32, i32* @SICR, align 4
  %612 = call i32 @usc_InReg(%struct.mgsl_struct* %610, i32 %611)
  %613 = load i32, i32* @BIT3, align 4
  %614 = or i32 %612, %613
  %615 = call i32 @usc_OutReg(%struct.mgsl_struct* %608, i32 %609, i32 %614)
  %616 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %617 = load i64, i64* @MISC, align 8
  %618 = call i32 @usc_EnableInterrupts(%struct.mgsl_struct* %616, i64 %617)
  %619 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %620 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %619, i32 0, i32 3
  store i32 0, i32* %620, align 4
  %621 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %622 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %621, i32 0, i32 5
  %623 = load i32, i32* %622, align 8
  %624 = call i32 @outw(i32 0, i32 %623)
  %625 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %626 = load i32, i32* @DmaCmd_ResetAllChannels, align 4
  %627 = call i32 @usc_DmaCmd(%struct.mgsl_struct* %625, i32 %626)
  %628 = load i32, i32* @BIT8, align 4
  %629 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %630 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %629, i32 0, i32 3
  store i32 %628, i32* %630, align 4
  %631 = load i32, i32* @BIT8, align 4
  %632 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %633 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %632, i32 0, i32 5
  %634 = load i32, i32* %633, align 8
  %635 = call i32 @outw(i32 %631, i32 %634)
  %636 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %637 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %636, i32 0, i32 1
  %638 = load i64, i64* %637, align 8
  %639 = load i64, i64* @MGSL_BUS_TYPE_ISA, align 8
  %640 = icmp eq i64 %638, %639
  br i1 %640, label %641, label %653

641:                                              ; preds = %594
  %642 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %643 = load i32, i32* @PCR, align 4
  %644 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %645 = load i32, i32* @PCR, align 4
  %646 = call i32 @usc_InReg(%struct.mgsl_struct* %644, i32 %645)
  %647 = load i32, i32* @BIT15, align 4
  %648 = or i32 %646, %647
  %649 = load i32, i32* @BIT14, align 4
  %650 = xor i32 %649, -1
  %651 = and i32 %648, %650
  %652 = call i32 @usc_OutReg(%struct.mgsl_struct* %642, i32 %643, i32 %651)
  br label %653

653:                                              ; preds = %641, %594
  %654 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %655 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %654, i32 0, i32 1
  %656 = load i64, i64* %655, align 8
  %657 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %658 = icmp eq i64 %656, %657
  br i1 %658, label %659, label %663

659:                                              ; preds = %653
  %660 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %661 = load i32, i32* @DCR, align 4
  %662 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %660, i32 %661, i32 40971)
  br label %667

663:                                              ; preds = %653
  %664 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %665 = load i32, i32* @DCR, align 4
  %666 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %664, i32 %665, i32 32779)
  br label %667

667:                                              ; preds = %663, %659
  %668 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %669 = load i32, i32* @RDMR, align 4
  %670 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %668, i32 %669, i32 61952)
  %671 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %672 = load i32, i32* @TDMR, align 4
  %673 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %671, i32 %672, i32 61952)
  %674 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %675 = load i32, i32* @DICR, align 4
  %676 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %674, i32 %675, i32 36864)
  %677 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %678 = load i32, i32* @RDMR, align 4
  %679 = call i32 @usc_InDmaReg(%struct.mgsl_struct* %677, i32 %678)
  %680 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %681 = load i32, i32* @TDMR, align 4
  %682 = call i32 @usc_InDmaReg(%struct.mgsl_struct* %680, i32 %681)
  %683 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %684 = load i32, i32* @CDIR, align 4
  %685 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %683, i32 %684, i32 771)
  store i32 32896, i32* %3, align 4
  %686 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %687 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %686, i32 0, i32 4
  %688 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %687, i32 0, i32 7
  %689 = load i32, i32* %688, align 4
  switch i32 %689, label %704 [
    i32 134, label %690
    i32 133, label %694
    i32 132, label %698
  ]

690:                                              ; preds = %667
  %691 = load i32, i32* @BIT10, align 4
  %692 = load i32, i32* %3, align 4
  %693 = or i32 %692, %691
  store i32 %693, i32* %3, align 4
  br label %704

694:                                              ; preds = %667
  %695 = load i32, i32* @BIT11, align 4
  %696 = load i32, i32* %3, align 4
  %697 = or i32 %696, %695
  store i32 %697, i32* %3, align 4
  br label %704

698:                                              ; preds = %667
  %699 = load i32, i32* @BIT11, align 4
  %700 = load i32, i32* @BIT10, align 4
  %701 = add nsw i32 %699, %700
  %702 = load i32, i32* %3, align 4
  %703 = or i32 %702, %701
  store i32 %703, i32* %3, align 4
  br label %704

704:                                              ; preds = %667, %698, %694, %690
  %705 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %706 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %705, i32 0, i32 4
  %707 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  switch i32 %708, label %729 [
    i32 129, label %709
    i32 128, label %715
    i32 130, label %719
    i32 131, label %723
  ]

709:                                              ; preds = %704
  %710 = load i32, i32* @BIT8, align 4
  %711 = load i32, i32* @BIT12, align 4
  %712 = add nsw i32 %710, %711
  %713 = load i32, i32* %3, align 4
  %714 = or i32 %713, %712
  store i32 %714, i32* %3, align 4
  br label %729

715:                                              ; preds = %704
  %716 = load i32, i32* @BIT8, align 4
  %717 = load i32, i32* %3, align 4
  %718 = or i32 %717, %716
  store i32 %718, i32* %3, align 4
  br label %729

719:                                              ; preds = %704
  %720 = load i32, i32* @BIT9, align 4
  %721 = load i32, i32* %3, align 4
  %722 = or i32 %721, %720
  store i32 %722, i32* %3, align 4
  br label %729

723:                                              ; preds = %704
  %724 = load i32, i32* @BIT9, align 4
  %725 = load i32, i32* @BIT8, align 4
  %726 = add nsw i32 %724, %725
  %727 = load i32, i32* %3, align 4
  %728 = or i32 %727, %726
  store i32 %728, i32* %3, align 4
  br label %729

729:                                              ; preds = %704, %723, %719, %715, %709
  %730 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %731 = load i32, i32* @CCR, align 4
  %732 = load i32, i32* %3, align 4
  %733 = call i32 @usc_OutReg(%struct.mgsl_struct* %730, i32 %731, i32 %732)
  %734 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %735 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %734, i32 0, i32 1
  %736 = load i64, i64* %735, align 8
  %737 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %738 = icmp eq i64 %736, %737
  br i1 %738, label %739, label %743

739:                                              ; preds = %729
  %740 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %741 = load i32, i32* @BDCR, align 4
  %742 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %740, i32 %741, i32 0)
  br label %747

743:                                              ; preds = %729
  %744 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %745 = load i32, i32* @BDCR, align 4
  %746 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %744, i32 %745, i32 8192)
  br label %747

747:                                              ; preds = %743, %739
  %748 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %749 = call i32 @usc_stop_transmitter(%struct.mgsl_struct* %748)
  %750 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %751 = call i32 @usc_stop_receiver(%struct.mgsl_struct* %750)
  ret void
}

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_RCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct*, i64) #1

declare dso_local i32 @usc_set_txidle(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_TCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_UnlatchTxstatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_EnableInterrupts(%struct.mgsl_struct*, i64) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @usc_DmaCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutDmaReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_InDmaReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_stop_transmitter(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_stop_receiver(%struct.mgsl_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
