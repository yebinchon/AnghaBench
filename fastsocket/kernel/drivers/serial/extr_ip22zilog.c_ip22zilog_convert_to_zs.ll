; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_convert_to_zs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_convert_to_zs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NRZ = common dso_local global i32 0, align 4
@R10 = common dso_local global i64 0, align 8
@TCBR = common dso_local global i32 0, align 4
@RCBR = common dso_local global i32 0, align 4
@R11 = common dso_local global i64 0, align 8
@XCLK_MASK = common dso_local global i32 0, align 4
@R4 = common dso_local global i64 0, align 8
@X16CLK = common dso_local global i32 0, align 4
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@BRENAB = common dso_local global i32 0, align 4
@R14 = common dso_local global i64 0, align 8
@RxN_MASK = common dso_local global i32 0, align 4
@TxN_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@Rx5 = common dso_local global i32 0, align 4
@Tx5 = common dso_local global i32 0, align 4
@Rx6 = common dso_local global i32 0, align 4
@Tx6 = common dso_local global i32 0, align 4
@Rx7 = common dso_local global i32 0, align 4
@Tx7 = common dso_local global i32 0, align 4
@Rx8 = common dso_local global i32 0, align 4
@Tx8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SB2 = common dso_local global i32 0, align 4
@SB1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PAR_ENAB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PAR_EVEN = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@CRC_ERR = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@BRK_ABRT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_ip22zilog_port*, i32, i32, i32)* @ip22zilog_convert_to_zs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_convert_to_zs(%struct.uart_ip22zilog_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uart_ip22zilog_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @NRZ, align 4
  %10 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @R10, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @TCBR, align 4
  %16 = load i32, i32* @RCBR, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @R11, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @XCLK_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %26 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @R4, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @X16CLK, align 4
  %33 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %34 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @R4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  %42 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %43 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @R12, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %51 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @R13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* @BRENAB, align 4
  %56 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %57 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @R14, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* @RxN_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @TxN_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %72 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CSIZE, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %132 [
    i32 131, label %80
    i32 130, label %97
    i32 129, label %114
    i32 128, label %131
  ]

80:                                               ; preds = %4
  %81 = load i32, i32* @Rx5, align 4
  %82 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %83 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @Tx5, align 4
  %89 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %90 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  %95 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %95, i32 0, i32 1
  store i32 31, i32* %96, align 8
  br label %149

97:                                               ; preds = %4
  %98 = load i32, i32* @Rx6, align 4
  %99 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %100 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @Tx6, align 4
  %106 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %107 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %113 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %112, i32 0, i32 1
  store i32 63, i32* %113, align 8
  br label %149

114:                                              ; preds = %4
  %115 = load i32, i32* @Rx7, align 4
  %116 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %117 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %115
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @Tx7, align 4
  %123 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %124 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 4
  %129 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %130 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %129, i32 0, i32 1
  store i32 127, i32* %130, align 8
  br label %149

131:                                              ; preds = %4
  br label %132

132:                                              ; preds = %4, %131
  %133 = load i32, i32* @Rx8, align 4
  %134 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %135 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %133
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @Tx8, align 4
  %141 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %142 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 4
  %147 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %148 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %147, i32 0, i32 1
  store i32 255, i32* %148, align 8
  br label %149

149:                                              ; preds = %132, %114, %97, %80
  %150 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %151 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, -13
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @CSTOPB, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %149
  %161 = load i32, i32* @SB2, align 4
  %162 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %163 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %161
  store i32 %167, i32* %165, align 4
  br label %176

168:                                              ; preds = %149
  %169 = load i32, i32* @SB1, align 4
  %170 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %171 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %168, %160
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @PARENB, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load i32, i32* @PAR_ENAB, align 4
  %183 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %184 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %182
  store i32 %188, i32* %186, align 4
  br label %198

189:                                              ; preds = %176
  %190 = load i32, i32* @PAR_ENAB, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %193 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 4
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %191
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %189, %181
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @PARODD, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* @PAR_EVEN, align 4
  %205 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %206 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %204
  store i32 %210, i32* %208, align 4
  br label %220

211:                                              ; preds = %198
  %212 = load i32, i32* @PAR_EVEN, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %215 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %213
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %211, %203
  %221 = load i32, i32* @Rx_OVR, align 4
  %222 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %223 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @INPCK, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %220
  %230 = load i32, i32* @CRC_ERR, align 4
  %231 = load i32, i32* @PAR_ERR, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %234 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %232
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %229, %220
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @BRKINT, align 4
  %241 = load i32, i32* @PARMRK, align 4
  %242 = or i32 %240, %241
  %243 = and i32 %239, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %238
  %246 = load i32, i32* @BRK_ABRT, align 4
  %247 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %248 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %246
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %245, %238
  %253 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %254 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @IGNPAR, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %252
  %261 = load i32, i32* @CRC_ERR, align 4
  %262 = load i32, i32* @PAR_ERR, align 4
  %263 = or i32 %261, %262
  %264 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %265 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %263
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %260, %252
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* @IGNBRK, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %269
  %275 = load i32, i32* @BRK_ABRT, align 4
  %276 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %277 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %275
  store i32 %280, i32* %278, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @IGNPAR, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %274
  %286 = load i32, i32* @Rx_OVR, align 4
  %287 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %288 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %286
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %285, %274
  br label %293

293:                                              ; preds = %292, %269
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* @CREAD, align 4
  %296 = and i32 %294, %295
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %300 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 1
  store i32 255, i32* %301, align 4
  br label %302

302:                                              ; preds = %298, %293
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
