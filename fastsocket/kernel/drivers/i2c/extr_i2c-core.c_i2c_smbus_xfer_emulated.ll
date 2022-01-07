; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_smbus_xfer_emulated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_smbus_xfer_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.i2c_msg = type { i16, i32, i8*, i32, i16, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i8 0, align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_M_RD = common dso_local global i16 0, align 2
@I2C_M_RECV_LEN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [29 x i8] c"Invalid block write size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i8, i32, %union.i2c_smbus_data*)* @i2c_smbus_xfer_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i8 zeroext %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca [2 x %struct.i2c_msg], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %25 = load i8, i8* @I2C_SMBUS_BLOCK_MAX, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, 3
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %31 = load i8, i8* @I2C_SMBUS_BLOCK_MAX, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  %36 = load i8, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @I2C_SMBUS_READ, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  store i32 %42, i32* %19, align 4
  %43 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %44, align 16
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %48 = load i16, i16* %11, align 2
  %49 = zext i16 %48 to i32
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %50, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 3
  %52 = ptrtoint i8* %30 to i32
  store i32 %52, i32* %51, align 16
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 4
  store i16 0, i16* %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 5
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i64 1
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %56, align 16
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  %60 = load i16, i16* %11, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @I2C_M_RD, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %61, %63
  store i32 %64, i32* %59, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 2
  store i8* null, i8** %65, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 3
  %67 = ptrtoint i8* %35 to i32
  store i32 %67, i32* %66, align 16
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 4
  store i16 0, i16* %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 5
  store i32 0, i32* %69, align 8
  store i8 0, i8* %22, align 1
  %70 = load i8, i8* %13, align 1
  %71 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %70, i8* %71, align 16
  %72 = load i32, i32* %14, align 4
  switch i32 %72, label %368 [
    i32 129, label %73
    i32 133, label %93
    i32 132, label %109
    i32 128, label %126
    i32 130, label %151
    i32 135, label %169
    i32 134, label %238
    i32 131, label %301
  ]

73:                                               ; preds = %7
  %74 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 3
  store i32 0, i32* %75, align 16
  %76 = load i16, i16* %11, align 2
  %77 = zext i16 %76 to i32
  %78 = load i8, i8* %12, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @I2C_SMBUS_READ, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i16, i16* @I2C_M_RD, align 2
  %85 = zext i16 %84 to i32
  br label %87

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 0, %86 ]
  %89 = or i32 %77, %88
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 4
  store i16 %90, i16* %92, align 4
  store i32 1, i32* %19, align 4
  br label %375

93:                                               ; preds = %7
  %94 = load i8, i8* %12, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* @I2C_SMBUS_READ, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i16, i16* @I2C_M_RD, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* %11, align 2
  %103 = zext i16 %102 to i32
  %104 = or i32 %101, %103
  %105 = trunc i32 %104 to i16
  %106 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 4
  store i16 %105, i16* %107, align 4
  store i32 1, i32* %19, align 4
  br label %108

108:                                              ; preds = %99, %93
  br label %375

109:                                              ; preds = %7
  %110 = load i8, i8* %12, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* @I2C_SMBUS_READ, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 3
  store i32 1, i32* %117, align 16
  br label %125

118:                                              ; preds = %109
  %119 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 3
  store i32 2, i32* %120, align 16
  %121 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %122 = bitcast %union.i2c_smbus_data* %121 to i8*
  %123 = load i8, i8* %122, align 8
  %124 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %123, i8* %124, align 1
  br label %125

125:                                              ; preds = %118, %115
  br label %375

126:                                              ; preds = %7
  %127 = load i8, i8* %12, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @I2C_SMBUS_READ, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 3
  store i32 2, i32* %134, align 16
  br label %150

135:                                              ; preds = %126
  %136 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 3
  store i32 3, i32* %137, align 16
  %138 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %139 = bitcast %union.i2c_smbus_data* %138 to i32*
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %142, i8* %143, align 1
  %144 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %145 = bitcast %union.i2c_smbus_data* %144 to i32*
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %146, 8
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %148, i8* %149, align 2
  br label %150

150:                                              ; preds = %135, %132
  br label %375

151:                                              ; preds = %7
  store i32 2, i32* %19, align 4
  %152 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %152, i8* %12, align 1
  %153 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 3
  store i32 3, i32* %154, align 16
  %155 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i32 0, i32 3
  store i32 2, i32* %156, align 16
  %157 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %158 = bitcast %union.i2c_smbus_data* %157 to i32*
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %161, i8* %162, align 1
  %163 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %164 = bitcast %union.i2c_smbus_data* %163 to i32*
  %165 = load i32, i32* %164, align 8
  %166 = ashr i32 %165, 8
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %167, i8* %168, align 2
  br label %375

169:                                              ; preds = %7
  %170 = load i8, i8* %12, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8, i8* @I2C_SMBUS_READ, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load i16, i16* @I2C_M_RECV_LEN, align 2
  %177 = zext i16 %176 to i32
  %178 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %179 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i32 0, i32 4
  %180 = load i16, i16* %179, align 4
  %181 = zext i16 %180 to i32
  %182 = or i32 %181, %177
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %179, align 4
  %184 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 3
  store i32 1, i32* %185, align 16
  br label %237

186:                                              ; preds = %169
  %187 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %188 = bitcast %union.i2c_smbus_data* %187 to i32**
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 2
  %193 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 16
  %195 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 16
  %198 = load i8, i8* @I2C_SMBUS_BLOCK_MAX, align 1
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 %199, 2
  %201 = icmp sgt i32 %197, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %186
  %203 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %204 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %203, i32 0, i32 0
  %205 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %206 = bitcast %union.i2c_smbus_data* %205 to i32**
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @dev_err(i32* %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

213:                                              ; preds = %186
  store i32 1, i32* %21, align 4
  br label %214

214:                                              ; preds = %233, %213
  %215 = load i32, i32* %21, align 4
  %216 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %217 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 16
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %236

220:                                              ; preds = %214
  %221 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %222 = bitcast %union.i2c_smbus_data* %221 to i32**
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %21, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = trunc i32 %228 to i8
  %230 = load i32, i32* %21, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %30, i64 %231
  store i8 %229, i8* %232, align 1
  br label %233

233:                                              ; preds = %220
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %21, align 4
  br label %214

236:                                              ; preds = %214
  br label %237

237:                                              ; preds = %236, %175
  br label %375

238:                                              ; preds = %7
  store i32 2, i32* %19, align 4
  %239 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %239, i8* %12, align 1
  %240 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %241 = bitcast %union.i2c_smbus_data* %240 to i32**
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i8, i8* @I2C_SMBUS_BLOCK_MAX, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp sgt i32 %244, %246
  br i1 %247, label %248, label %259

248:                                              ; preds = %238
  %249 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %250 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %249, i32 0, i32 0
  %251 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %252 = bitcast %union.i2c_smbus_data* %251 to i32**
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @dev_err(i32* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

259:                                              ; preds = %238
  %260 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %261 = bitcast %union.i2c_smbus_data* %260 to i32**
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 2
  %266 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %267 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 16
  store i32 1, i32* %21, align 4
  br label %268

268:                                              ; preds = %287, %259
  %269 = load i32, i32* %21, align 4
  %270 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %271 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 16
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %290

274:                                              ; preds = %268
  %275 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %276 = bitcast %union.i2c_smbus_data* %275 to i32**
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %21, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = trunc i32 %282 to i8
  %284 = load i32, i32* %21, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %30, i64 %285
  store i8 %283, i8* %286, align 1
  br label %287

287:                                              ; preds = %274
  %288 = load i32, i32* %21, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %21, align 4
  br label %268

290:                                              ; preds = %268
  %291 = load i16, i16* @I2C_M_RECV_LEN, align 2
  %292 = zext i16 %291 to i32
  %293 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %294 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %293, i32 0, i32 4
  %295 = load i16, i16* %294, align 4
  %296 = zext i16 %295 to i32
  %297 = or i32 %296, %292
  %298 = trunc i32 %297 to i16
  store i16 %298, i16* %294, align 4
  %299 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %300 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %299, i32 0, i32 3
  store i32 1, i32* %300, align 16
  br label %375

301:                                              ; preds = %7
  %302 = load i8, i8* %12, align 1
  %303 = sext i8 %302 to i32
  %304 = load i8, i8* @I2C_SMBUS_READ, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %303, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %309 = bitcast %union.i2c_smbus_data* %308 to i32**
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 1
  %314 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %313, i32 0, i32 3
  store i32 %312, i32* %314, align 16
  br label %367

315:                                              ; preds = %301
  %316 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %317 = bitcast %union.i2c_smbus_data* %316 to i32**
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 1
  %322 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %323 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 16
  %324 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %325 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 16
  %327 = load i8, i8* @I2C_SMBUS_BLOCK_MAX, align 1
  %328 = zext i8 %327 to i32
  %329 = add nsw i32 %328, 1
  %330 = icmp sgt i32 %326, %329
  br i1 %330, label %331, label %342

331:                                              ; preds = %315
  %332 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %333 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %332, i32 0, i32 0
  %334 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %335 = bitcast %union.i2c_smbus_data* %334 to i32**
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @dev_err(i32* %333, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %338)
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

342:                                              ; preds = %315
  store i32 1, i32* %21, align 4
  br label %343

343:                                              ; preds = %363, %342
  %344 = load i32, i32* %21, align 4
  %345 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %346 = bitcast %union.i2c_smbus_data* %345 to i32**
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp sle i32 %344, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %343
  %352 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %353 = bitcast %union.i2c_smbus_data* %352 to i32**
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %21, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = trunc i32 %358 to i8
  %360 = load i32, i32* %21, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %30, i64 %361
  store i8 %359, i8* %362, align 1
  br label %363

363:                                              ; preds = %351
  %364 = load i32, i32* %21, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %21, align 4
  br label %343

366:                                              ; preds = %343
  br label %367

367:                                              ; preds = %366, %307
  br label %375

368:                                              ; preds = %7
  %369 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %370 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %369, i32 0, i32 0
  %371 = load i32, i32* %14, align 4
  %372 = call i32 @dev_err(i32* %370, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* @EOPNOTSUPP, align 4
  %374 = sub nsw i32 0, %373
  store i32 %374, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

375:                                              ; preds = %367, %290, %237, %151, %150, %125, %108, %87
  %376 = load i16, i16* %11, align 2
  %377 = zext i16 %376 to i32
  %378 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %379 = zext i16 %378 to i32
  %380 = and i32 %377, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %375
  %383 = load i32, i32* %14, align 4
  %384 = icmp ne i32 %383, 129
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i32, i32* %14, align 4
  %387 = icmp ne i32 %386, 131
  br label %388

388:                                              ; preds = %385, %382, %375
  %389 = phi i1 [ false, %382 ], [ false, %375 ], [ %387, %385 ]
  %390 = zext i1 %389 to i32
  store i32 %390, i32* %21, align 4
  %391 = load i32, i32* %21, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %433

393:                                              ; preds = %388
  %394 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %395 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %394, i32 0, i32 4
  %396 = load i16, i16* %395, align 4
  %397 = zext i16 %396 to i32
  %398 = load i16, i16* @I2C_M_RD, align 2
  %399 = zext i16 %398 to i32
  %400 = and i32 %397, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %412, label %402

402:                                              ; preds = %393
  %403 = load i32, i32* %19, align 4
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %408

405:                                              ; preds = %402
  %406 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %407 = call i32 @i2c_smbus_add_pec(%struct.i2c_msg* %406)
  br label %411

408:                                              ; preds = %402
  %409 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %410 = call zeroext i8 @i2c_smbus_msg_pec(i32 0, %struct.i2c_msg* %409)
  store i8 %410, i8* %22, align 1
  br label %411

411:                                              ; preds = %408, %405
  br label %412

412:                                              ; preds = %411, %393
  %413 = load i32, i32* %19, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 %415
  %417 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %416, i32 0, i32 4
  %418 = load i16, i16* %417, align 4
  %419 = zext i16 %418 to i32
  %420 = load i16, i16* @I2C_M_RD, align 2
  %421 = zext i16 %420 to i32
  %422 = and i32 %419, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %412
  %425 = load i32, i32* %19, align 4
  %426 = sub nsw i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 %427
  %429 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 16
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %429, align 16
  br label %432

432:                                              ; preds = %424, %412
  br label %433

433:                                              ; preds = %432, %388
  %434 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %435 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 0
  %436 = load i32, i32* %19, align 4
  %437 = call i32 @i2c_transfer(%struct.i2c_adapter* %434, %struct.i2c_msg* %435, i32 %436)
  store i32 %437, i32* %23, align 4
  %438 = load i32, i32* %23, align 4
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %433
  %441 = load i32, i32* %23, align 4
  store i32 %441, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

442:                                              ; preds = %433
  %443 = load i32, i32* %21, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %469

445:                                              ; preds = %442
  %446 = load i32, i32* %19, align 4
  %447 = sub nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 %448
  %450 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %449, i32 0, i32 4
  %451 = load i16, i16* %450, align 4
  %452 = zext i16 %451 to i32
  %453 = load i16, i16* @I2C_M_RD, align 2
  %454 = zext i16 %453 to i32
  %455 = and i32 %452, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %469

457:                                              ; preds = %445
  %458 = load i8, i8* %22, align 1
  %459 = load i32, i32* %19, align 4
  %460 = sub nsw i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %20, i64 0, i64 %461
  %463 = call i32 @i2c_smbus_check_pec(i8 zeroext %458, %struct.i2c_msg* %462)
  store i32 %463, i32* %23, align 4
  %464 = load i32, i32* %23, align 4
  %465 = icmp slt i32 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %457
  %467 = load i32, i32* %23, align 4
  store i32 %467, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

468:                                              ; preds = %457
  br label %469

469:                                              ; preds = %468, %445, %442
  %470 = load i8, i8* %12, align 1
  %471 = sext i8 %470 to i32
  %472 = load i8, i8* @I2C_SMBUS_READ, align 1
  %473 = sext i8 %472 to i32
  %474 = icmp eq i32 %471, %473
  br i1 %474, label %475, label %549

475:                                              ; preds = %469
  %476 = load i32, i32* %14, align 4
  switch i32 %476, label %548 [
    i32 133, label %477
    i32 132, label %482
    i32 128, label %487
    i32 130, label %487
    i32 131, label %498
    i32 135, label %524
    i32 134, label %524
  ]

477:                                              ; preds = %475
  %478 = getelementptr inbounds i8, i8* %30, i64 0
  %479 = load i8, i8* %478, align 16
  %480 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %481 = bitcast %union.i2c_smbus_data* %480 to i8*
  store i8 %479, i8* %481, align 8
  br label %548

482:                                              ; preds = %475
  %483 = getelementptr inbounds i8, i8* %35, i64 0
  %484 = load i8, i8* %483, align 16
  %485 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %486 = bitcast %union.i2c_smbus_data* %485 to i8*
  store i8 %484, i8* %486, align 8
  br label %548

487:                                              ; preds = %475, %475
  %488 = getelementptr inbounds i8, i8* %35, i64 0
  %489 = load i8, i8* %488, align 16
  %490 = zext i8 %489 to i32
  %491 = getelementptr inbounds i8, i8* %35, i64 1
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i32
  %494 = shl i32 %493, 8
  %495 = or i32 %490, %494
  %496 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %497 = bitcast %union.i2c_smbus_data* %496 to i32*
  store i32 %495, i32* %497, align 8
  br label %548

498:                                              ; preds = %475
  store i32 0, i32* %21, align 4
  br label %499

499:                                              ; preds = %520, %498
  %500 = load i32, i32* %21, align 4
  %501 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %502 = bitcast %union.i2c_smbus_data* %501 to i32**
  %503 = load i32*, i32** %502, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 0
  %505 = load i32, i32* %504, align 4
  %506 = icmp slt i32 %500, %505
  br i1 %506, label %507, label %523

507:                                              ; preds = %499
  %508 = load i32, i32* %21, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* %35, i64 %509
  %511 = load i8, i8* %510, align 1
  %512 = zext i8 %511 to i32
  %513 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %514 = bitcast %union.i2c_smbus_data* %513 to i32**
  %515 = load i32*, i32** %514, align 8
  %516 = load i32, i32* %21, align 4
  %517 = add nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %515, i64 %518
  store i32 %512, i32* %519, align 4
  br label %520

520:                                              ; preds = %507
  %521 = load i32, i32* %21, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %21, align 4
  br label %499

523:                                              ; preds = %499
  br label %548

524:                                              ; preds = %475, %475
  store i32 0, i32* %21, align 4
  br label %525

525:                                              ; preds = %544, %524
  %526 = load i32, i32* %21, align 4
  %527 = getelementptr inbounds i8, i8* %35, i64 0
  %528 = load i8, i8* %527, align 16
  %529 = zext i8 %528 to i32
  %530 = add nsw i32 %529, 1
  %531 = icmp slt i32 %526, %530
  br i1 %531, label %532, label %547

532:                                              ; preds = %525
  %533 = load i32, i32* %21, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, i8* %35, i64 %534
  %536 = load i8, i8* %535, align 1
  %537 = zext i8 %536 to i32
  %538 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %539 = bitcast %union.i2c_smbus_data* %538 to i32**
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %21, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  store i32 %537, i32* %543, align 4
  br label %544

544:                                              ; preds = %532
  %545 = load i32, i32* %21, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %21, align 4
  br label %525

547:                                              ; preds = %525
  br label %548

548:                                              ; preds = %475, %547, %523, %487, %482, %477
  br label %549

549:                                              ; preds = %548, %469
  store i32 0, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %550

550:                                              ; preds = %549, %466, %440, %368, %331, %248, %202
  %551 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %551)
  %552 = load i32, i32* %8, align 4
  ret i32 %552
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @i2c_smbus_add_pec(%struct.i2c_msg*) #2

declare dso_local zeroext i8 @i2c_smbus_msg_pec(i32, %struct.i2c_msg*) #2

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @i2c_smbus_check_pec(i8 zeroext, %struct.i2c_msg*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
