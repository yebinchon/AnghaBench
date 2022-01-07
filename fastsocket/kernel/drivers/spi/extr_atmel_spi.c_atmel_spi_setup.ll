; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.atmel_spi_device*, i64, i32, %struct.TYPE_2__* }
%struct.atmel_spi_device = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.atmel_spi = type { i32, %struct.spi_device*, i32, i64 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"setup: invalid chipselect %u (%u defined)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"setup: invalid bits_per_word %u (8 to 16)\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"setup: can't be active-high\0A\00", align 1
@SPI_SCBR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"setup: %d Hz too slow, scbr %u; min %ld Hz\0A\00", align 1
@SCBR = common dso_local global i32 0, align 4
@BITS = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@NCPHA = common dso_local global i32 0, align 4
@DLYBS = common dso_local global i32 0, align 4
@DLYBCT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"setup: %lu Hz bpw %u mode 0x%x -> csr%d %08x\0A\00", align 1
@CSR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @atmel_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.atmel_spi*, align 8
  %5 = alloca %struct.atmel_spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call %struct.atmel_spi* @spi_master_get_devdata(%struct.TYPE_2__* %18)
  store %struct.atmel_spi* %19, %struct.atmel_spi** %4, align 8
  %20 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ESHUTDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %265

27:                                               ; preds = %1
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 7
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 3
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 7
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %265

51:                                               ; preds = %27
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %52, 8
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %55, 16
  br i1 %56, label %57, label %64

57:                                               ; preds = %54, %51
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 3
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %265

64:                                               ; preds = %54
  %65 = call i32 (...) @atmel_spi_is_v2()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SPI_CS_HIGH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 3
  %82 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %265

85:                                               ; preds = %72, %67, %64
  %86 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %87 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @clk_get_rate(i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = call i32 (...) @atmel_spi_is_v2()
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %9, align 8
  %94 = udiv i64 %93, 2
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %95
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @DIV_ROUND_UP(i64 %101, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SPI_SCBR_SIZE, align 4
  %108 = shl i32 1, %107
  %109 = icmp sge i32 %106, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %100
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 3
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i64, i64* %9, align 8
  %118 = udiv i64 %117, 255
  %119 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116, i64 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %265

122:                                              ; preds = %100
  br label %124

123:                                              ; preds = %95
  store i32 255, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %122
  %125 = load i32, i32* @SCBR, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @SPI_BF(i32 %125, i32 %126)
  %128 = load i32, i32* @BITS, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub i32 %129, 8
  %131 = call i32 @SPI_BF(i32 %128, i32 %130)
  %132 = or i32 %127, %131
  store i32 %132, i32* %7, align 4
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SPI_CPOL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load i32, i32* @CPOL, align 4
  %141 = call i32 @SPI_BIT(i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %139, %124
  %145 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %146 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SPI_CPHA, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = load i32, i32* @NCPHA, align 4
  %153 = call i32 @SPI_BIT(i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %151, %144
  %157 = load i32, i32* @DLYBS, align 4
  %158 = call i32 @SPI_BF(i32 %157, i32 0)
  %159 = load i32, i32* %7, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @DLYBCT, align 4
  %162 = call i32 @SPI_BF(i32 %161, i32 0)
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  %165 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %166 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %10, align 4
  %169 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %170 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %169, i32 0, i32 4
  %171 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %170, align 8
  store %struct.atmel_spi_device* %171, %struct.atmel_spi_device** %5, align 8
  %172 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %173 = icmp ne %struct.atmel_spi_device* %172, null
  br i1 %173, label %211, label %174

174:                                              ; preds = %156
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call %struct.atmel_spi_device* @kzalloc(i32 8, i32 %175)
  store %struct.atmel_spi_device* %176, %struct.atmel_spi_device** %5, align 8
  %177 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %178 = icmp ne %struct.atmel_spi_device* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %265

182:                                              ; preds = %174
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %185 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %184, i32 0, i32 3
  %186 = call i32 @dev_name(i32* %185)
  %187 = call i32 @gpio_request(i32 %183, i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %192 = call i32 @kfree(%struct.atmel_spi_device* %191)
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %2, align 4
  br label %265

194:                                              ; preds = %182
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %197 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %199 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %200 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %199, i32 0, i32 4
  store %struct.atmel_spi_device* %198, %struct.atmel_spi_device** %200, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %203 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SPI_CS_HIGH, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @gpio_direction_output(i32 %201, i32 %209)
  br label %232

211:                                              ; preds = %156
  %212 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %213 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %212, i32 0, i32 0
  %214 = load i64, i64* %12, align 8
  %215 = call i32 @spin_lock_irqsave(i32* %213, i64 %214)
  %216 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %217 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %216, i32 0, i32 1
  %218 = load %struct.spi_device*, %struct.spi_device** %217, align 8
  %219 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %220 = icmp eq %struct.spi_device* %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %223 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %222, i32 0, i32 1
  store %struct.spi_device* null, %struct.spi_device** %223, align 8
  br label %224

224:                                              ; preds = %221, %211
  %225 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %226 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %227 = call i32 @cs_deactivate(%struct.atmel_spi* %225, %struct.spi_device* %226)
  %228 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %229 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %228, i32 0, i32 0
  %230 = load i64, i64* %12, align 8
  %231 = call i32 @spin_unlock_irqrestore(i32* %229, i64 %230)
  br label %232

232:                                              ; preds = %224, %194
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %235 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %237 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %236, i32 0, i32 3
  %238 = load i64, i64* %9, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = udiv i64 %238, %240
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %244 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %247 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %7, align 4
  %250 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %237, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %241, i32 %242, i32 %245, i32 %248, i32 %249)
  %251 = call i32 (...) @atmel_spi_is_v2()
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %232
  %254 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %255 = load i64, i64* @CSR0, align 8
  %256 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %257 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 4, %258
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %255, %260
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @spi_writel(%struct.atmel_spi* %254, i64 %261, i32 %262)
  br label %264

264:                                              ; preds = %253, %232
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %190, %179, %110, %79, %57, %37, %24
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.atmel_spi* @spi_master_get_devdata(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @atmel_spi_is_v2(...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @SPI_BF(i32, i32) #1

declare dso_local i32 @SPI_BIT(i32) #1

declare dso_local %struct.atmel_spi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @kfree(%struct.atmel_spi_device*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cs_deactivate(%struct.atmel_spi*, %struct.spi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spi_writel(%struct.atmel_spi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
