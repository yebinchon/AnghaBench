; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.stu300_dev = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wait while busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"re-int hw\0A\00", align 1
@I2C_CR_PERIPHERAL_ENABLE = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_CR_START_ENABLE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_CR_ACK_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"send start event\0A\00", align 1
@STU300_EVENT_5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"send address\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"failed sending address, retrying. Attempt: %d msg_index: %d/%d\0A\00", align 1
@NUM_ADDR_RESEND_ATTEMPTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"managed to get address through after %d attempts\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"I give up, tried %d times to resend address.\0A\00", align 1
@I2C_CR_STOP_ENABLE = common dso_local global i32 0, align 4
@I2C_CR = common dso_local global i64 0, align 8
@STU300_EVENT_7 = common dso_local global i32 0, align 4
@I2C_DR = common dso_local global i64 0, align 8
@STU300_EVENT_8 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"error awaiting event 8 (%d)\0A\00", align 1
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_SR2 = common dso_local global i64 0, align 8
@I2C_SR2_AF_IND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"I2C payload send returned NAK!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"timout waiting for transfer to commence.\0A\00", align 1
@I2C_SR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @stu300_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stu300_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = call %struct.stu300_dev* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.stu300_dev* %14, %struct.stu300_dev** %12, align 8
  %15 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %16 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_enable(i32 %17)
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %343

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %151, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %32 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %38 = call i32 @stu300_wait_while_busy(%struct.stu300_dev* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %343

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %47 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %42
  %52 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %53 = call i32 @stu300_init_hw(%struct.stu300_dev* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %343

57:                                               ; preds = %51
  %58 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I2C_M_NOSTART, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @I2C_CR_START_ENABLE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %57
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @I2C_M_RD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @I2C_CR_ACK_ENABLE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %76, %69
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I2C_M_NOSTART, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %97 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %95, %92
  %102 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @STU300_EVENT_5, align 4
  %105 = call i32 @stu300_start_and_await_event(%struct.stu300_dev* %102, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %85
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %111 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @stu300_send_address(%struct.stu300_dev* %119, %struct.i2c_msg* %120, i32 %123)
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %118, %115
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  %131 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %132 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %137 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %140 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %134, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %128, %125
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %150 = icmp slt i32 %148, %149
  br label %151

151:                                              ; preds = %147, %144
  %152 = phi i1 [ false, %144 ], [ %150, %147 ]
  br i1 %152, label %27, label %153

153:                                              ; preds = %151
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load i32, i32* %11, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %162 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %164, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %179

167:                                              ; preds = %157, %153
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %173 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %177 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %175, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  br label %343

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %160
  %180 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @I2C_M_RD, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %240

186:                                              ; preds = %179
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %236, %186
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %190 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %187
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 1
  %199 = icmp eq i32 %194, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %193
  %201 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load i32, i32* @I2C_CR_STOP_ENABLE, align 4
  %206 = load i32, i32* %8, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %204, %200
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %211 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @I2C_CR, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @stu300_wr8(i32 %209, i64 %214)
  br label %216

216:                                              ; preds = %208, %193
  %217 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %218 = load i32, i32* @STU300_EVENT_7, align 4
  %219 = call i32 @stu300_await_event(%struct.stu300_dev* %217, i32 %218)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %343

223:                                              ; preds = %216
  %224 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %225 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @I2C_DR, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @stu300_r8(i64 %228)
  %230 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %231 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  br label %236

236:                                              ; preds = %223
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %187

239:                                              ; preds = %187
  br label %319

240:                                              ; preds = %179
  store i32 0, i32* %9, align 4
  br label %241

241:                                              ; preds = %274, %240
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %244 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %277

247:                                              ; preds = %241
  %248 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %249 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %256 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @I2C_DR, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @stu300_wr8(i32 %254, i64 %259)
  %261 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %262 = load i32, i32* @STU300_EVENT_8, align 4
  %263 = call i32 @stu300_await_event(%struct.stu300_dev* %261, i32 %262)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %247
  %267 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %268 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %267, i32 0, i32 2
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %10, align 4
  %272 = call i32 (i32*, i8*, ...) @dev_err(i32* %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %271)
  br label %343

273:                                              ; preds = %247
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %241

277:                                              ; preds = %241
  %278 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %279 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %303, label %284

284:                                              ; preds = %277
  %285 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %286 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @I2C_SR2, align 8
  %289 = add nsw i64 %287, %288
  %290 = call i32 @stu300_r8(i64 %289)
  %291 = load i32, i32* @I2C_SR2_AF_IND, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %284
  %295 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %296 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %295, i32 0, i32 2
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = call i32 (i32*, i8*, ...) @dev_err(i32* %298, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %300 = load i32, i32* @EIO, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %10, align 4
  br label %343

302:                                              ; preds = %284
  br label %303

303:                                              ; preds = %302, %277
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %303
  %307 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* @I2C_CR_STOP_ENABLE, align 4
  %309 = load i32, i32* %8, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %313 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @I2C_CR, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i32 @stu300_wr8(i32 %311, i64 %316)
  br label %318

318:                                              ; preds = %306, %303
  br label %319

319:                                              ; preds = %318, %239
  %320 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %321 = call i32 @stu300_wait_while_busy(%struct.stu300_dev* %320)
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %319
  %325 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %326 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %325, i32 0, i32 2
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = call i32 (i32*, i8*, ...) @dev_err(i32* %328, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %343

330:                                              ; preds = %319
  %331 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %332 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @I2C_SR2, align 8
  %335 = add nsw i64 %333, %334
  %336 = call i32 @stu300_r8(i64 %335)
  store i32 %336, i32* %8, align 4
  %337 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %338 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @I2C_SR1, align 8
  %341 = add nsw i64 %339, %340
  %342 = call i32 @stu300_r8(i64 %341)
  store i32 %342, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %343

343:                                              ; preds = %330, %324, %294, %266, %222, %171, %56, %41, %23
  %344 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %345 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @I2C_CR, align 8
  %348 = add nsw i64 %346, %347
  %349 = call i32 @stu300_wr8(i32 0, i64 %348)
  %350 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %351 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @clk_disable(i32 %352)
  %354 = load i32, i32* %10, align 4
  ret i32 %354
}

declare dso_local %struct.stu300_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @stu300_wait_while_busy(%struct.stu300_dev*) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

declare dso_local i32 @stu300_start_and_await_event(%struct.stu300_dev*, i32, i32) #1

declare dso_local i32 @stu300_send_address(%struct.stu300_dev*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @stu300_await_event(%struct.stu300_dev*, i32) #1

declare dso_local i32 @stu300_r8(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
