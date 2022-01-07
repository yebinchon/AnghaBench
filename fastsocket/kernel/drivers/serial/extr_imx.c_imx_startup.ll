; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { i64, i64, i64, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { %struct.imxuart_platform_data* }
%struct.imxuart_platform_data = type { i32 (i32)*, i32, i64, i64 }

@UCR4 = common dso_local global i64 0, align 8
@UCR4_IRSC = common dso_local global i64 0, align 8
@UCR4_DREN = common dso_local global i64 0, align 8
@UCR2 = common dso_local global i64 0, align 8
@UCR2_SRST = common dso_local global i64 0, align 8
@imx_rxint = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@imx_txint = common dso_local global i32 0, align 4
@imx_rtsint = common dso_local global i32 0, align 4
@MAX_INTERNAL_IRQ = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@imx_int = common dso_local global i32 0, align 4
@USR1_RTSD = common dso_local global i64 0, align 8
@USR1 = common dso_local global i64 0, align 8
@UCR1 = common dso_local global i64 0, align 8
@UCR1_RRDYEN = common dso_local global i64 0, align 8
@UCR1_RTSDEN = common dso_local global i64 0, align 8
@UCR1_UARTEN = common dso_local global i64 0, align 8
@UCR1_IREN = common dso_local global i64 0, align 8
@UCR2_RXEN = common dso_local global i64 0, align 8
@UCR2_TXEN = common dso_local global i64 0, align 8
@URXD0 = common dso_local global i64 0, align 8
@URXD_CHARRDY = common dso_local global i64 0, align 8
@UCR3 = common dso_local global i64 0, align 8
@MX2_UCR3_RXDMUXSEL = common dso_local global i64 0, align 8
@UCR4_INVR = common dso_local global i64 0, align 8
@UCR3_INVT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @imx_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.imx_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.imxuart_platform_data*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = bitcast %struct.uart_port* %11 to %struct.imx_port*
  store %struct.imx_port* %12, %struct.imx_port** %4, align 8
  %13 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %14 = call i32 @imx_setup_ufcr(%struct.imx_port* %13, i32 0)
  %15 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UCR4, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @readl(i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %23 = call i64 @USE_IRDA(%struct.imx_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i64, i64* @UCR4_IRSC, align 8
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @UCR4_DREN, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %35 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UCR4, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i64 %33, i64 %39)
  %41 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %42 = call i64 @USE_IRDA(%struct.imx_port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %29
  store i32 100, i32* %8, align 4
  %45 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %46 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UCR2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @readl(i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* @UCR2_SRST, align 8
  %53 = xor i64 %52, -1
  %54 = load i64, i64* %7, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %58 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UCR2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i64 %56, i64 %62)
  br label %64

64:                                               ; preds = %81, %44
  %65 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %66 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UCR2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i64 @readl(i64 %70)
  %72 = load i64, i64* @UCR2_SRST, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  br label %79

79:                                               ; preds = %75, %64
  %80 = phi i1 [ false, %64 ], [ %78, %75 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = call i32 @udelay(i32 1)
  br label %64

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %29
  %85 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %86 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %140

89:                                               ; preds = %84
  %90 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %91 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @imx_rxint, align 4
  %94 = load i32, i32* @DRIVER_NAME, align 4
  %95 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %96 = call i32 @request_irq(i64 %92, i32 %93, i32 0, i32 %94, %struct.imx_port* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %407

100:                                              ; preds = %89
  %101 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %102 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @imx_txint, align 4
  %105 = load i32, i32* @DRIVER_NAME, align 4
  %106 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %107 = call i32 @request_irq(i64 %103, i32 %104, i32 0, i32 %105, %struct.imx_port* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %395

111:                                              ; preds = %100
  %112 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %113 = call i64 @USE_IRDA(%struct.imx_port* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %111
  %116 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %117 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @imx_rtsint, align 4
  %120 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %121 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MAX_INTERNAL_IRQ, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %130

126:                                              ; preds = %115
  %127 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %128 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %129 = or i32 %127, %128
  br label %130

130:                                              ; preds = %126, %125
  %131 = phi i32 [ 0, %125 ], [ %129, %126 ]
  %132 = load i32, i32* @DRIVER_NAME, align 4
  %133 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %134 = call i32 @request_irq(i64 %118, i32 %119, i32 %131, i32 %132, %struct.imx_port* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %383

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %111
  br label %159

140:                                              ; preds = %84
  %141 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %142 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @imx_int, align 4
  %146 = load i32, i32* @DRIVER_NAME, align 4
  %147 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %148 = call i32 @request_irq(i64 %144, i32 %145, i32 0, i32 %146, %struct.imx_port* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %140
  %152 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %153 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %157 = call i32 @free_irq(i64 %155, %struct.imx_port* %156)
  br label %407

158:                                              ; preds = %140
  br label %159

159:                                              ; preds = %158, %139
  %160 = load i64, i64* @USR1_RTSD, align 8
  %161 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %162 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @USR1, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i64 %160, i64 %166)
  %168 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %169 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @UCR1, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i64 @readl(i64 %173)
  store i64 %174, i64* %7, align 8
  %175 = load i64, i64* @UCR1_RRDYEN, align 8
  %176 = load i64, i64* @UCR1_RTSDEN, align 8
  %177 = or i64 %175, %176
  %178 = load i64, i64* @UCR1_UARTEN, align 8
  %179 = or i64 %177, %178
  %180 = load i64, i64* %7, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %7, align 8
  %182 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %183 = call i64 @USE_IRDA(%struct.imx_port* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %159
  %186 = load i64, i64* @UCR1_IREN, align 8
  %187 = load i64, i64* %7, align 8
  %188 = or i64 %187, %186
  store i64 %188, i64* %7, align 8
  %189 = load i64, i64* @UCR1_RTSDEN, align 8
  %190 = xor i64 %189, -1
  %191 = load i64, i64* %7, align 8
  %192 = and i64 %191, %190
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %185, %159
  %194 = load i64, i64* %7, align 8
  %195 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %196 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @UCR1, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i64 %194, i64 %200)
  %202 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %203 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @UCR2, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i64 @readl(i64 %207)
  store i64 %208, i64* %7, align 8
  %209 = load i64, i64* @UCR2_RXEN, align 8
  %210 = load i64, i64* @UCR2_TXEN, align 8
  %211 = or i64 %209, %210
  %212 = load i64, i64* %7, align 8
  %213 = or i64 %212, %211
  store i64 %213, i64* %7, align 8
  %214 = load i64, i64* %7, align 8
  %215 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %216 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @UCR2, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i64 %214, i64 %220)
  %222 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %223 = call i64 @USE_IRDA(%struct.imx_port* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %193
  store i32 64, i32* %9, align 4
  br label %226

226:                                              ; preds = %243, %225
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %9, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %232 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @URXD0, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i64 @readl(i64 %236)
  %238 = load i64, i64* @URXD_CHARRDY, align 8
  %239 = and i64 %237, %238
  %240 = icmp ne i64 %239, 0
  br label %241

241:                                              ; preds = %230, %226
  %242 = phi i1 [ false, %226 ], [ %240, %230 ]
  br i1 %242, label %243, label %245

243:                                              ; preds = %241
  %244 = call i32 (...) @barrier()
  br label %226

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %245, %193
  %247 = call i32 (...) @cpu_is_mx1()
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %268, label %249

249:                                              ; preds = %246
  %250 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %251 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @UCR3, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i64 @readl(i64 %255)
  store i64 %256, i64* %7, align 8
  %257 = load i64, i64* @MX2_UCR3_RXDMUXSEL, align 8
  %258 = load i64, i64* %7, align 8
  %259 = or i64 %258, %257
  store i64 %259, i64* %7, align 8
  %260 = load i64, i64* %7, align 8
  %261 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %262 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @UCR3, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @writel(i64 %260, i64 %266)
  br label %268

268:                                              ; preds = %249, %246
  %269 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %270 = call i64 @USE_IRDA(%struct.imx_port* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %333

272:                                              ; preds = %268
  %273 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %274 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %273, i32 0, i32 6
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @UCR4, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i64 @readl(i64 %278)
  store i64 %279, i64* %7, align 8
  %280 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %281 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %272
  %285 = load i64, i64* @UCR4_INVR, align 8
  %286 = load i64, i64* %7, align 8
  %287 = or i64 %286, %285
  store i64 %287, i64* %7, align 8
  br label %293

288:                                              ; preds = %272
  %289 = load i64, i64* @UCR4_INVR, align 8
  %290 = xor i64 %289, -1
  %291 = load i64, i64* %7, align 8
  %292 = and i64 %291, %290
  store i64 %292, i64* %7, align 8
  br label %293

293:                                              ; preds = %288, %284
  %294 = load i64, i64* %7, align 8
  %295 = load i64, i64* @UCR4_DREN, align 8
  %296 = or i64 %294, %295
  %297 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %298 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @UCR4, align 8
  %302 = add nsw i64 %300, %301
  %303 = call i32 @writel(i64 %296, i64 %302)
  %304 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %305 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @UCR3, align 8
  %309 = add nsw i64 %307, %308
  %310 = call i64 @readl(i64 %309)
  store i64 %310, i64* %7, align 8
  %311 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %312 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %293
  %316 = load i64, i64* @UCR3_INVT, align 8
  %317 = load i64, i64* %7, align 8
  %318 = or i64 %317, %316
  store i64 %318, i64* %7, align 8
  br label %324

319:                                              ; preds = %293
  %320 = load i64, i64* @UCR3_INVT, align 8
  %321 = xor i64 %320, -1
  %322 = load i64, i64* %7, align 8
  %323 = and i64 %322, %321
  store i64 %323, i64* %7, align 8
  br label %324

324:                                              ; preds = %319, %315
  %325 = load i64, i64* %7, align 8
  %326 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %327 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %326, i32 0, i32 6
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @UCR3, align 8
  %331 = add nsw i64 %329, %330
  %332 = call i32 @writel(i64 %325, i64 %331)
  br label %333

333:                                              ; preds = %324, %268
  %334 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %335 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 2
  %337 = load i64, i64* %6, align 8
  %338 = call i32 @spin_lock_irqsave(i32* %336, i64 %337)
  %339 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %340 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %339, i32 0, i32 6
  %341 = call i32 @imx_enable_ms(%struct.TYPE_4__* %340)
  %342 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %343 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %342, i32 0, i32 6
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 2
  %345 = load i64, i64* %6, align 8
  %346 = call i32 @spin_unlock_irqrestore(i32* %344, i64 %345)
  %347 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %348 = call i64 @USE_IRDA(%struct.imx_port* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %382

350:                                              ; preds = %333
  %351 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %352 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %351, i32 0, i32 6
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %355, align 8
  store %struct.imxuart_platform_data* %356, %struct.imxuart_platform_data** %10, align 8
  %357 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %10, align 8
  %358 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %361 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %360, i32 0, i32 5
  store i64 %359, i64* %361, align 8
  %362 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %10, align 8
  %363 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %366 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %365, i32 0, i32 4
  store i64 %364, i64* %366, align 8
  %367 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %10, align 8
  %368 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %371 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 8
  %372 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %10, align 8
  %373 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %372, i32 0, i32 0
  %374 = load i32 (i32)*, i32 (i32)** %373, align 8
  %375 = icmp ne i32 (i32)* %374, null
  br i1 %375, label %376, label %381

376:                                              ; preds = %350
  %377 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %10, align 8
  %378 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %377, i32 0, i32 0
  %379 = load i32 (i32)*, i32 (i32)** %378, align 8
  %380 = call i32 %379(i32 1)
  br label %381

381:                                              ; preds = %376, %350
  br label %382

382:                                              ; preds = %381, %333
  store i32 0, i32* %2, align 4
  br label %409

383:                                              ; preds = %137
  %384 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %385 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %390 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %393 = call i32 @free_irq(i64 %391, %struct.imx_port* %392)
  br label %394

394:                                              ; preds = %388, %383
  br label %395

395:                                              ; preds = %394, %110
  %396 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %397 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %395
  %401 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %402 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %405 = call i32 @free_irq(i64 %403, %struct.imx_port* %404)
  br label %406

406:                                              ; preds = %400, %395
  br label %407

407:                                              ; preds = %406, %151, %99
  %408 = load i32, i32* %5, align 4
  store i32 %408, i32* %2, align 4
  br label %409

409:                                              ; preds = %407, %382
  %410 = load i32, i32* %2, align 4
  ret i32 %410
}

declare dso_local i32 @imx_setup_ufcr(%struct.imx_port*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @USE_IRDA(%struct.imx_port*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.imx_port*) #1

declare dso_local i32 @free_irq(i64, %struct.imx_port*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @cpu_is_mx1(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @imx_enable_ms(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
