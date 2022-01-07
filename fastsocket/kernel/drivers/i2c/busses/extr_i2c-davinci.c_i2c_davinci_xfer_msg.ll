; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_platform_data = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64, i32, i32, i32 }
%struct.davinci_i2c_dev = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { %struct.davinci_i2c_platform_data* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@davinci_i2c_platform_data_default = common dso_local global %struct.davinci_i2c_platform_data zeroinitializer, align 8
@DAVINCI_I2C_SAR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_CNT_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_IRS = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_MST = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_STT = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_XA = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_TRX = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_STP = common dso_local global i32 0, align 4
@DAVINCI_I2C_IMR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_IMR_RRDY = common dso_local global i32 0, align 4
@DAVINCI_I2C_IMR_XRDY = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"abnormal termination buf_len=%i\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@DAVINCI_I2C_STR_AL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DAVINCI_I2C_STR_NACK = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_davinci_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_davinci_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.davinci_i2c_dev*, align 8
  %9 = alloca %struct.davinci_i2c_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.davinci_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.davinci_i2c_dev* %14, %struct.davinci_i2c_dev** %8, align 8
  %15 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %16 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %18, align 8
  store %struct.davinci_i2c_platform_data* %19, %struct.davinci_i2c_platform_data** %9, align 8
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %247

27:                                               ; preds = %3
  %28 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %9, align 8
  %29 = icmp ne %struct.davinci_i2c_platform_data* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store %struct.davinci_i2c_platform_data* @davinci_i2c_platform_data_default, %struct.davinci_i2c_platform_data** %9, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %9, align 8
  %33 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %9, align 8
  %38 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @udelay(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %43 = load i32, i32* @DAVINCI_I2C_SAR_REG, align 4
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %42, i32 %43, i32 %46)
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %52 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %58 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %60 = load i32, i32* @DAVINCI_I2C_CNT_REG, align 4
  %61 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %62 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %59, i32 %60, i32 %63)
  %65 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %66 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @INIT_COMPLETION(i32 %67)
  %69 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %70 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* @DAVINCI_I2C_MDR_IRS, align 4
  %72 = load i32, i32* @DAVINCI_I2C_MDR_MST, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @DAVINCI_I2C_MDR_STT, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I2C_M_TEN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %41
  %83 = load i32, i32* @DAVINCI_I2C_MDR_XA, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %41
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @I2C_M_RD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @DAVINCI_I2C_MDR_TRX, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @DAVINCI_I2C_MDR_STP, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %97
  %105 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %106 = load i32, i32* @DAVINCI_I2C_IMR_REG, align 4
  %107 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @I2C_M_RD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @DAVINCI_I2C_IMR_RRDY, align 4
  %117 = call i32 @MOD_REG_BIT(i32 %115, i32 %116, i32 1)
  br label %122

118:                                              ; preds = %104
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @DAVINCI_I2C_IMR_XRDY, align 4
  %121 = call i32 @MOD_REG_BIT(i32 %119, i32 %120, i32 1)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %124 = load i32, i32* @DAVINCI_I2C_IMR_REG, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %123, i32 %124, i32 %125)
  %127 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %128 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  %129 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %130 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %134 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %133, i32 0, i32 5
  %135 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %136 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @wait_for_completion_interruptible_timeout(i32* %134, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %122
  %143 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %144 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %147 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %148 = call i32 @i2c_davinci_init(%struct.davinci_i2c_dev* %147)
  %149 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %150 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %247

153:                                              ; preds = %122
  %154 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %155 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %163 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %166 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @EREMOTEIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %161, %158
  %172 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %173 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = call i32 (...) @wmb()
  %175 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %176 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %171, %153
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %4, align 4
  br label %247

182:                                              ; preds = %177
  %183 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %184 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i64 @likely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %182
  %192 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %4, align 4
  br label %247

196:                                              ; preds = %182
  %197 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %198 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @DAVINCI_I2C_STR_AL, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %205 = call i32 @i2c_davinci_init(%struct.davinci_i2c_dev* %204)
  %206 = load i32, i32* @EIO, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %4, align 4
  br label %247

208:                                              ; preds = %196
  %209 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %210 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @DAVINCI_I2C_STR_NACK, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %244

215:                                              ; preds = %208
  %216 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %217 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %224 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %4, align 4
  br label %247

227:                                              ; preds = %215
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %227
  %231 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %232 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %233 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %231, i32 %232)
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @DAVINCI_I2C_MDR_STP, align 4
  %236 = call i32 @MOD_REG_BIT(i32 %234, i32 %235, i32 1)
  %237 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %8, align 8
  %238 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %237, i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %230, %227
  %242 = load i32, i32* @EREMOTEIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %4, align 4
  br label %247

244:                                              ; preds = %208
  %245 = load i32, i32* @EIO, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %244, %241, %222, %203, %191, %180, %142, %24
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local %struct.davinci_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev*, i32) #1

declare dso_local i32 @MOD_REG_BIT(i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @i2c_davinci_init(%struct.davinci_i2c_dev*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
