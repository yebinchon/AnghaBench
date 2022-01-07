; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.zs_port = type { i32*, i32, %struct.zs_scc* }
%struct.zs_scc = type { i32, %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@RxNBITS_MASK = common dso_local global i32 0, align 4
@TxNBITS_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@Rx5 = common dso_local global i32 0, align 4
@Tx5 = common dso_local global i32 0, align 4
@Rx6 = common dso_local global i32 0, align 4
@Tx6 = common dso_local global i32 0, align 4
@Rx7 = common dso_local global i32 0, align 4
@Tx7 = common dso_local global i32 0, align 4
@Rx8 = common dso_local global i32 0, align 4
@Tx8 = common dso_local global i32 0, align 4
@XCLK_MASK = common dso_local global i32 0, align 4
@SB_MASK = common dso_local global i32 0, align 4
@PAR_ENA = common dso_local global i32 0, align 4
@PAR_EVEN = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SB2 = common dso_local global i32 0, align 4
@SB1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@X64CLK = common dso_local global i32 0, align 4
@X32CLK = common dso_local global i32 0, align 4
@X16CLK = common dso_local global i32 0, align 4
@X1CLK = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@FRM_ERR = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@DCDIE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CTSIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @zs_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.zs_port*, align 8
  %8 = alloca %struct.zs_scc*, align 8
  %9 = alloca %struct.zs_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = call %struct.zs_port* @to_zport(%struct.uart_port* %14)
  store %struct.zs_port* %15, %struct.zs_port** %7, align 8
  %16 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %17 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %16, i32 0, i32 2
  %18 = load %struct.zs_scc*, %struct.zs_scc** %17, align 8
  store %struct.zs_scc* %18, %struct.zs_scc** %8, align 8
  %19 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  %20 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %19, i32 0, i32 1
  %21 = load %struct.zs_port*, %struct.zs_port** %20, align 8
  %22 = load i64, i64* @ZS_CHAN_A, align 8
  %23 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %21, i64 %22
  store %struct.zs_port* %23, %struct.zs_port** %9, align 8
  %24 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  %25 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %24, i32 0, i32 0
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @irqs_disabled_flags(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @RxNBITS_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %36 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @TxNBITS_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %44 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %50 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CSIZE, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %100 [
    i32 131, label %54
    i32 130, label %69
    i32 129, label %84
    i32 128, label %99
  ]

54:                                               ; preds = %3
  %55 = load i32, i32* @Rx5, align 4
  %56 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %57 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @Tx5, align 4
  %63 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %64 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %115

69:                                               ; preds = %3
  %70 = load i32, i32* @Rx6, align 4
  %71 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %72 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @Tx6, align 4
  %78 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %79 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 4
  br label %115

84:                                               ; preds = %3
  %85 = load i32, i32* @Rx7, align 4
  %86 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %87 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @Tx7, align 4
  %93 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %94 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %115

99:                                               ; preds = %3
  br label %100

100:                                              ; preds = %3, %99
  %101 = load i32, i32* @Rx8, align 4
  %102 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %103 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @Tx8, align 4
  %109 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %110 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %100, %84, %69, %54
  %116 = load i32, i32* @XCLK_MASK, align 4
  %117 = load i32, i32* @SB_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PAR_ENA, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PAR_EVEN, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %125 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %131 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CSTOPB, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %115
  %137 = load i32, i32* @SB2, align 4
  %138 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %139 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  br label %152

144:                                              ; preds = %115
  %145 = load i32, i32* @SB1, align 4
  %146 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %147 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %136
  %153 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PARENB, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load i32, i32* @PAR_ENA, align 4
  %161 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %162 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %160
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %159, %152
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PARODD, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @PAR_EVEN, align 4
  %176 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %177 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %175
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %174, %167
  %183 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %184 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %218 [
    i32 64, label %186
    i32 32, label %194
    i32 16, label %202
    i32 1, label %210
  ]

186:                                              ; preds = %182
  %187 = load i32, i32* @X64CLK, align 4
  %188 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %189 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %187
  store i32 %193, i32* %191, align 4
  br label %220

194:                                              ; preds = %182
  %195 = load i32, i32* @X32CLK, align 4
  %196 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %197 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  br label %220

202:                                              ; preds = %182
  %203 = load i32, i32* @X16CLK, align 4
  %204 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %205 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %203
  store i32 %209, i32* %207, align 4
  br label %220

210:                                              ; preds = %182
  %211 = load i32, i32* @X1CLK, align 4
  %212 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %213 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %211
  store i32 %217, i32* %215, align 4
  br label %220

218:                                              ; preds = %182
  %219 = call i32 (...) @BUG()
  br label %220

220:                                              ; preds = %218, %210, %202, %194, %186
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %223 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %224 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %225 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %228 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = sdiv i32 %226, %229
  %231 = sdiv i32 %230, 4
  %232 = call i32 @uart_get_baud_rate(%struct.uart_port* %221, %struct.ktermios* %222, %struct.ktermios* %223, i32 0, i32 %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %235 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %238 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = sdiv i32 %236, %239
  %241 = call i32 @ZS_BPS_TO_BRG(i32 %233, i32 %240)
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %12, align 4
  %243 = and i32 %242, 255
  %244 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %245 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 12
  store i32 %243, i32* %247, align 4
  %248 = load i32, i32* %12, align 4
  %249 = lshr i32 %248, 8
  %250 = and i32 %249, 255
  %251 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %252 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 13
  store i32 %250, i32* %254, align 4
  %255 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %256 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %257 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @uart_update_timeout(%struct.uart_port* %255, i32 %258, i32 %259)
  %261 = load i32, i32* @Rx_OVR, align 4
  %262 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %263 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %265 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @INPCK, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %220
  %271 = load i32, i32* @FRM_ERR, align 4
  %272 = load i32, i32* @PAR_ERR, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %275 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %270, %220
  %279 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %280 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @BRKINT, align 4
  %283 = load i32, i32* @PARMRK, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %278
  %288 = load i32, i32* @Rx_BRK, align 4
  %289 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %290 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %278
  %294 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %295 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %294, i32 0, i32 2
  store i32 0, i32* %295, align 4
  %296 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %297 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @IGNPAR, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %293
  %303 = load i32, i32* @FRM_ERR, align 4
  %304 = load i32, i32* @PAR_ERR, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %307 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %302, %293
  %311 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %312 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @IGNBRK, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %336

317:                                              ; preds = %310
  %318 = load i32, i32* @Rx_BRK, align 4
  %319 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %320 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %324 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @IGNPAR, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %317
  %330 = load i32, i32* @Rx_OVR, align 4
  %331 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %332 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %329, %317
  br label %336

336:                                              ; preds = %335, %310
  %337 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %338 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @CREAD, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %336
  %344 = load i32, i32* @RxENABLE, align 4
  %345 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %346 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 3
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %344
  store i32 %350, i32* %348, align 4
  br label %360

351:                                              ; preds = %336
  %352 = load i32, i32* @RxENABLE, align 4
  %353 = xor i32 %352, -1
  %354 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %355 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 3
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, %353
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %351, %343
  %361 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %362 = load %struct.zs_port*, %struct.zs_port** %9, align 8
  %363 = icmp ne %struct.zs_port* %361, %362
  br i1 %363, label %364, label %415

364:                                              ; preds = %360
  %365 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %366 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @CLOCAL, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %379, label %371

371:                                              ; preds = %364
  %372 = load i32, i32* @DCDIE, align 4
  %373 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %374 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %373, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 15
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %372
  store i32 %378, i32* %376, align 4
  br label %388

379:                                              ; preds = %364
  %380 = load i32, i32* @DCDIE, align 4
  %381 = xor i32 %380, -1
  %382 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %383 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 15
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, %381
  store i32 %387, i32* %385, align 4
  br label %388

388:                                              ; preds = %379, %371
  %389 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %390 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @CRTSCTS, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %388
  %396 = load i32, i32* @CTSIE, align 4
  %397 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %398 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 15
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %396
  store i32 %402, i32* %400, align 4
  br label %412

403:                                              ; preds = %388
  %404 = load i32, i32* @CTSIE, align 4
  %405 = xor i32 %404, -1
  %406 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %407 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %406, i32 0, i32 0
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 15
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, %405
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %403, %395
  %413 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %414 = call i32 @zs_raw_xor_mctrl(%struct.zs_port* %413)
  br label %415

415:                                              ; preds = %412, %360
  %416 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %417 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %418 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %10, align 4
  %421 = call i32 @load_zsregs(%struct.zs_port* %416, i32* %419, i32 %420)
  %422 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  %423 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %422, i32 0, i32 0
  %424 = load i64, i64* %13, align 8
  %425 = call i32 @spin_unlock_irqrestore(i32* %423, i64 %424)
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irqs_disabled_flags(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @ZS_BPS_TO_BRG(i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @zs_raw_xor_mctrl(%struct.zs_port*) #1

declare dso_local i32 @load_zsregs(%struct.zs_port*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
