; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_bfin_twi_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_bfin_twi_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfin_twi_iface = type { i32, i32*, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@XMTSERV = common dso_local global i16 0, align 2
@TWI_I2C_MODE_COMBINED = common dso_local global i64 0, align 8
@MDIR = common dso_local global i32 0, align 4
@RSTART = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@TWI_I2C_MODE_REPEAT = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@RCVSERV = common dso_local global i16 0, align 2
@TWI_I2C_MODE_STANDARDSUB = common dso_local global i64 0, align 8
@MERR = common dso_local global i16 0, align 2
@EIO = common dso_local global i32 0, align 4
@MCOMP = common dso_local global i16 0, align 2
@BUFRDERR = common dso_local global i16 0, align 2
@ANAK = common dso_local global i16 0, align 2
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfin_twi_iface*)* @bfin_twi_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_twi_handle_interrupt(%struct.bfin_twi_iface* %0) #0 {
  %2 = alloca %struct.bfin_twi_iface*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.bfin_twi_iface* %0, %struct.bfin_twi_iface** %2, align 8
  %5 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %6 = call zeroext i16 @read_INT_STAT(%struct.bfin_twi_iface* %5)
  store i16 %6, i16* %3, align 2
  %7 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %8 = call zeroext i16 @read_MASTER_STAT(%struct.bfin_twi_iface* %7)
  store i16 %8, i16* %4, align 2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @XMTSERV, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %118

15:                                               ; preds = %1
  %16 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %17 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %22 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %23 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %23, align 8
  %26 = load i32, i32* %24, align 4
  %27 = call i32 @write_XMT_DATA8(%struct.bfin_twi_iface* %21, i32 %26)
  %28 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %29 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  br label %112

32:                                               ; preds = %15
  %33 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %34 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TWI_I2C_MODE_COMBINED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %40 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %41 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %40)
  %42 = load i32, i32* @MDIR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RSTART, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %39, i32 %45)
  br label %111

47:                                               ; preds = %32
  %48 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %49 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %54 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %55 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %54)
  %56 = load i32, i32* @STOP, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %53, i32 %57)
  br label %110

59:                                               ; preds = %47
  %60 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %61 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TWI_I2C_MODE_REPEAT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %59
  %66 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %67 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %71 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %65
  %75 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %76 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %75, i32 0, i32 9
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %79 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @I2C_M_RD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %74
  %90 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %91 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %92 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %91)
  %93 = load i32, i32* @RSTART, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MDIR, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %90, i32 %96)
  br label %108

98:                                               ; preds = %74
  %99 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %100 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %101 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %100)
  %102 = load i32, i32* @RSTART, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MDIR, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %99, i32 %106)
  br label %108

108:                                              ; preds = %98, %89
  br label %109

109:                                              ; preds = %108, %65, %59
  br label %110

110:                                              ; preds = %109, %52
  br label %111

111:                                              ; preds = %110, %38
  br label %112

112:                                              ; preds = %111, %20
  %113 = call i32 (...) @SSYNC()
  %114 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %115 = load i16, i16* @XMTSERV, align 2
  %116 = call i32 @write_INT_STAT(%struct.bfin_twi_iface* %114, i16 zeroext %115)
  %117 = call i32 (...) @SSYNC()
  br label %118

118:                                              ; preds = %112, %1
  %119 = load i16, i16* %3, align 2
  %120 = zext i16 %119 to i32
  %121 = load i16, i16* @RCVSERV, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %243

125:                                              ; preds = %118
  %126 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %127 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %125
  %131 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %132 = call i32 @read_RCV_DATA8(%struct.bfin_twi_iface* %131)
  %133 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %134 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  store i32 %132, i32* %135, align 4
  %136 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %137 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TWI_I2C_MODE_COMBINED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %130
  %142 = load i64, i64* @TWI_I2C_MODE_STANDARDSUB, align 8
  %143 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %144 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %146 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %162

149:                                              ; preds = %141
  %150 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %151 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %156 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  %160 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %161 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %149, %141
  br label %163

163:                                              ; preds = %162, %130
  %164 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %165 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %165, align 8
  %168 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %169 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 4
  br label %238

172:                                              ; preds = %125
  %173 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %174 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %179 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %180 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %179)
  %181 = load i32, i32* @STOP, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %178, i32 %182)
  %184 = call i32 (...) @SSYNC()
  br label %237

185:                                              ; preds = %172
  %186 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %187 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TWI_I2C_MODE_REPEAT, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %236

191:                                              ; preds = %185
  %192 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %193 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %197 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %236

200:                                              ; preds = %191
  %201 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %202 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %201, i32 0, i32 9
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %205 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @I2C_M_RD, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %200
  %216 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %217 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %218 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %217)
  %219 = load i32, i32* @RSTART, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @MDIR, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %216, i32 %222)
  br label %234

224:                                              ; preds = %200
  %225 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %226 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %227 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %226)
  %228 = load i32, i32* @RSTART, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @MDIR, align 4
  %231 = xor i32 %230, -1
  %232 = and i32 %229, %231
  %233 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %225, i32 %232)
  br label %234

234:                                              ; preds = %224, %215
  %235 = call i32 (...) @SSYNC()
  br label %236

236:                                              ; preds = %234, %191, %185
  br label %237

237:                                              ; preds = %236, %177
  br label %238

238:                                              ; preds = %237, %163
  %239 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %240 = load i16, i16* @RCVSERV, align 2
  %241 = call i32 @write_INT_STAT(%struct.bfin_twi_iface* %239, i16 zeroext %240)
  %242 = call i32 (...) @SSYNC()
  br label %243

243:                                              ; preds = %238, %118
  %244 = load i16, i16* %3, align 2
  %245 = zext i16 %244 to i32
  %246 = load i16, i16* @MERR, align 2
  %247 = zext i16 %246 to i32
  %248 = and i32 %245, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %310

250:                                              ; preds = %243
  %251 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %252 = load i16, i16* @MERR, align 2
  %253 = call i32 @write_INT_STAT(%struct.bfin_twi_iface* %251, i16 zeroext %252)
  %254 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %255 = call i32 @write_INT_MASK(%struct.bfin_twi_iface* %254, i32 0)
  %256 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %257 = call i32 @write_MASTER_STAT(%struct.bfin_twi_iface* %256, i32 62)
  %258 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %259 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %258, i32 0)
  %260 = call i32 (...) @SSYNC()
  %261 = load i32, i32* @EIO, align 4
  %262 = sub nsw i32 0, %261
  %263 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %264 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 8
  %265 = load i16, i16* %3, align 2
  %266 = zext i16 %265 to i32
  %267 = load i16, i16* @MCOMP, align 2
  %268 = zext i16 %267 to i32
  %269 = and i32 %266, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %306

271:                                              ; preds = %250
  %272 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %273 = load i16, i16* @MCOMP, align 2
  %274 = call i32 @write_INT_STAT(%struct.bfin_twi_iface* %272, i16 zeroext %273)
  %275 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %276 = call i32 @write_INT_MASK(%struct.bfin_twi_iface* %275, i32 0)
  %277 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %278 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %277, i32 0)
  %279 = call i32 (...) @SSYNC()
  %280 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %281 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %271
  %285 = load i16, i16* %4, align 2
  %286 = zext i16 %285 to i32
  %287 = load i16, i16* @BUFRDERR, align 2
  %288 = zext i16 %287 to i32
  %289 = and i32 %286, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %284
  %292 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %293 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %292, i32 0, i32 7
  store i32 1, i32* %293, align 8
  br label %305

294:                                              ; preds = %284, %271
  %295 = load i16, i16* %4, align 2
  %296 = zext i16 %295 to i32
  %297 = load i16, i16* @ANAK, align 2
  %298 = zext i16 %297 to i32
  %299 = and i32 %296, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %294
  %302 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %303 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %302, i32 0, i32 7
  store i32 0, i32* %303, align 8
  br label %304

304:                                              ; preds = %301, %294
  br label %305

305:                                              ; preds = %304, %291
  br label %306

306:                                              ; preds = %305, %250
  %307 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %308 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %307, i32 0, i32 8
  %309 = call i32 @complete(i32* %308)
  br label %519

310:                                              ; preds = %243
  %311 = load i16, i16* %3, align 2
  %312 = zext i16 %311 to i32
  %313 = load i16, i16* @MCOMP, align 2
  %314 = zext i16 %313 to i32
  %315 = and i32 %312, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %519

317:                                              ; preds = %310
  %318 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %319 = load i16, i16* @MCOMP, align 2
  %320 = call i32 @write_INT_STAT(%struct.bfin_twi_iface* %318, i16 zeroext %319)
  %321 = call i32 (...) @SSYNC()
  %322 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %323 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @TWI_I2C_MODE_COMBINED, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %362

327:                                              ; preds = %317
  %328 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %329 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %327
  %333 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %334 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %333, i32 0, i32 6
  store i32 1, i32* %334, align 4
  %335 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %336 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %335, i32 0, i32 3
  store i32 1, i32* %336, align 8
  %337 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %338 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %339 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %338)
  %340 = or i32 %339, 16320
  %341 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %337, i32 %340)
  br label %353

342:                                              ; preds = %327
  %343 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %344 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %345 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %344)
  %346 = and i32 %345, -16321
  %347 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %348 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 4
  %350 = shl i32 %349, 6
  %351 = or i32 %346, %350
  %352 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %343, i32 %351)
  br label %353

353:                                              ; preds = %342, %332
  %354 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %355 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %356 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %355)
  %357 = load i32, i32* @RSTART, align 4
  %358 = xor i32 %357, -1
  %359 = and i32 %356, %358
  %360 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %354, i32 %359)
  %361 = call i32 (...) @SSYNC()
  br label %518

362:                                              ; preds = %317
  %363 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %364 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @TWI_I2C_MODE_REPEAT, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %506

368:                                              ; preds = %362
  %369 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %370 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %371, 1
  %373 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %374 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %506

377:                                              ; preds = %368
  %378 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %379 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 4
  %382 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %383 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %382, i32 0, i32 9
  %384 = load %struct.TYPE_2__*, %struct.TYPE_2__** %383, align 8
  %385 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %386 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %393 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %392, i32 0, i32 1
  store i32* %391, i32** %393, align 8
  %394 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %395 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %394, i32 0, i32 9
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %395, align 8
  %397 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %398 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %405 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %404, i32 0, i32 6
  store i32 %403, i32* %405, align 4
  %406 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %407 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %406, i32 0, i32 0
  store i32 %403, i32* %407, align 8
  %408 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %409 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %410 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %409, i32 0, i32 9
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** %410, align 8
  %412 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %413 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @write_MASTER_ADDR(%struct.bfin_twi_iface* %408, i32 %418)
  %420 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %421 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %420, i32 0, i32 9
  %422 = load %struct.TYPE_2__*, %struct.TYPE_2__** %421, align 8
  %423 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %424 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @I2C_M_RD, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %377
  %434 = load i32, i32* @I2C_SMBUS_READ, align 4
  %435 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %436 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %435, i32 0, i32 10
  store i32 %434, i32* %436, align 8
  br label %459

437:                                              ; preds = %377
  %438 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %439 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %440 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %439, i32 0, i32 10
  store i32 %438, i32* %440, align 8
  %441 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %442 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %458

445:                                              ; preds = %437
  %446 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %447 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %448 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %447, i32 0, i32 1
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i32 1
  store i32* %450, i32** %448, align 8
  %451 = load i32, i32* %449, align 4
  %452 = call i32 @write_XMT_DATA8(%struct.bfin_twi_iface* %446, i32 %451)
  %453 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %454 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %454, align 8
  %457 = call i32 (...) @SSYNC()
  br label %458

458:                                              ; preds = %445, %437
  br label %459

459:                                              ; preds = %458, %433
  %460 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %461 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %460, i32 0, i32 9
  %462 = load %struct.TYPE_2__*, %struct.TYPE_2__** %461, align 8
  %463 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %464 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %463, i32 0, i32 4
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %462, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = icmp sle i32 %469, 255
  br i1 %470, label %471, label %489

471:                                              ; preds = %459
  %472 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %473 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %474 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %473)
  %475 = and i32 %474, -16321
  %476 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %477 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %476, i32 0, i32 9
  %478 = load %struct.TYPE_2__*, %struct.TYPE_2__** %477, align 8
  %479 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %480 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = shl i32 %485, 6
  %487 = or i32 %475, %486
  %488 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %472, i32 %487)
  br label %497

489:                                              ; preds = %459
  %490 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %491 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %492 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %491)
  %493 = or i32 %492, 16320
  %494 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %490, i32 %493)
  %495 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %496 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %495, i32 0, i32 3
  store i32 1, i32* %496, align 8
  br label %497

497:                                              ; preds = %489, %471
  %498 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %499 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %500 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %499)
  %501 = load i32, i32* @RSTART, align 4
  %502 = xor i32 %501, -1
  %503 = and i32 %500, %502
  %504 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %498, i32 %503)
  %505 = call i32 (...) @SSYNC()
  br label %517

506:                                              ; preds = %368, %362
  %507 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %508 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %507, i32 0, i32 7
  store i32 1, i32* %508, align 8
  %509 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %510 = call i32 @write_INT_MASK(%struct.bfin_twi_iface* %509, i32 0)
  %511 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %512 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %511, i32 0)
  %513 = call i32 (...) @SSYNC()
  %514 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %2, align 8
  %515 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %514, i32 0, i32 8
  %516 = call i32 @complete(i32* %515)
  br label %517

517:                                              ; preds = %506, %497
  br label %518

518:                                              ; preds = %517, %353
  br label %519

519:                                              ; preds = %306, %518, %310
  ret void
}

declare dso_local zeroext i16 @read_INT_STAT(%struct.bfin_twi_iface*) #1

declare dso_local zeroext i16 @read_MASTER_STAT(%struct.bfin_twi_iface*) #1

declare dso_local i32 @write_XMT_DATA8(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @write_MASTER_CTL(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @read_MASTER_CTL(%struct.bfin_twi_iface*) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @write_INT_STAT(%struct.bfin_twi_iface*, i16 zeroext) #1

declare dso_local i32 @read_RCV_DATA8(%struct.bfin_twi_iface*) #1

declare dso_local i32 @write_INT_MASK(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @write_MASTER_STAT(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @write_MASTER_ADDR(%struct.bfin_twi_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
