; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-viapro.c_vt596_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-viapro.c_vt596_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@VT596_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@vt596_features = common dso_local global i32 0, align 4
@FEATURE_I2CBLOCK = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@SMBHSTCNT = common dso_local global i32 0, align 4
@SMBBLKDAT = common dso_local global i32 0, align 4
@SMBHSTADD = common dso_local global i32 0, align 4
@vt596_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @vt596_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt596_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %19 = load i32, i32* %14, align 4
  switch i32 %19, label %160 [
    i32 135, label %20
    i32 139, label %22
    i32 138, label %33
    i32 134, label %49
    i32 136, label %73
    i32 137, label %90
    i32 140, label %111
  ]

20:                                               ; preds = %7
  %21 = load i32, i32* @VT596_QUICK, align 4
  store i32 %21, i32* %14, align 4
  br label %161

22:                                               ; preds = %7
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @SMBHSTCMD, align 4
  %31 = call i32 @outb_p(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  store i32 132, i32* %14, align 4
  br label %161

33:                                               ; preds = %7
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @SMBHSTCMD, align 4
  %36 = call i32 @outb_p(i32 %34, i32 %35)
  %37 = load i8, i8* %12, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %44 = bitcast %union.i2c_smbus_data* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SMBHSTDAT0, align 4
  %47 = call i32 @outb_p(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %33
  store i32 131, i32* %14, align 4
  br label %161

49:                                               ; preds = %7
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SMBHSTCMD, align 4
  %52 = call i32 @outb_p(i32 %50, i32 %51)
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %60 = bitcast %union.i2c_smbus_data* %59 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 255
  %63 = load i32, i32* @SMBHSTDAT0, align 4
  %64 = call i32 @outb_p(i32 %62, i32 %63)
  %65 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %66 = bitcast %union.i2c_smbus_data* %65 to i32*
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 65280
  %69 = ashr i32 %68, 8
  %70 = load i32, i32* @SMBHSTDAT1, align 4
  %71 = call i32 @outb_p(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %58, %49
  store i32 128, i32* %14, align 4
  br label %161

73:                                               ; preds = %7
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @SMBHSTCMD, align 4
  %76 = call i32 @outb_p(i32 %74, i32 %75)
  %77 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %78 = bitcast %union.i2c_smbus_data* %77 to i32*
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 255
  %81 = load i32, i32* @SMBHSTDAT0, align 4
  %82 = call i32 @outb_p(i32 %80, i32 %81)
  %83 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %84 = bitcast %union.i2c_smbus_data* %83 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 65280
  %87 = ashr i32 %86, 8
  %88 = load i32, i32* @SMBHSTDAT1, align 4
  %89 = call i32 @outb_p(i32 %87, i32 %88)
  store i32 129, i32* %14, align 4
  br label %161

90:                                               ; preds = %7
  %91 = load i32, i32* @vt596_features, align 4
  %92 = load i32, i32* @FEATURE_I2CBLOCK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %253

96:                                               ; preds = %90
  %97 = load i8, i8* %12, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @I2C_SMBUS_READ, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %104 = bitcast %union.i2c_smbus_data* %103 to i32**
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SMBHSTDAT0, align 4
  %109 = call i32 @outb_p(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %96
  br label %111

111:                                              ; preds = %7, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @SMBHSTCMD, align 4
  %114 = call i32 @outb_p(i32 %112, i32 %113)
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %111
  %121 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %122 = bitcast %union.i2c_smbus_data* %121 to i32**
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %129, %120
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @SMBHSTDAT0, align 4
  %134 = call i32 @outb_p(i32 %132, i32 %133)
  %135 = load i32, i32* @SMBHSTCNT, align 4
  %136 = call i32 @inb_p(i32 %135)
  store i32 1, i32* %16, align 4
  br label %137

137:                                              ; preds = %151, %131
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %143 = bitcast %union.i2c_smbus_data* %142 to i32**
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @SMBBLKDAT, align 4
  %150 = call i32 @outb_p(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %137

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %111
  %156 = load i32, i32* %14, align 4
  %157 = icmp eq i32 %156, 137
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 130, i32 133
  store i32 %159, i32* %14, align 4
  br label %161

160:                                              ; preds = %7
  br label %253

161:                                              ; preds = %155, %73, %72, %48, %32, %20
  %162 = load i32, i32* %10, align 4
  %163 = and i32 %162, 127
  %164 = shl i32 %163, 1
  %165 = load i8, i8* %12, align 1
  %166 = sext i8 %165 to i32
  %167 = or i32 %164, %166
  %168 = load i32, i32* @SMBHSTADD, align 4
  %169 = call i32 @outb_p(i32 %167, i32 %168)
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @vt596_transaction(i32 %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %161
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %8, align 4
  br label %258

176:                                              ; preds = %161
  %177 = load i32, i32* %14, align 4
  %178 = icmp eq i32 %177, 129
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %180, i8* %12, align 1
  br label %181

181:                                              ; preds = %179, %176
  %182 = load i8, i8* %12, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @VT596_QUICK, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187, %181
  store i32 0, i32* %8, align 4
  br label %258

192:                                              ; preds = %187
  %193 = load i32, i32* %14, align 4
  switch i32 %193, label %252 [
    i32 132, label %194
    i32 131, label %194
    i32 128, label %199
    i32 129, label %199
    i32 130, label %208
    i32 133, label %208
  ]

194:                                              ; preds = %192, %192
  %195 = load i32, i32* @SMBHSTDAT0, align 4
  %196 = call i32 @inb_p(i32 %195)
  %197 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %198 = bitcast %union.i2c_smbus_data* %197 to i32*
  store i32 %196, i32* %198, align 8
  br label %252

199:                                              ; preds = %192, %192
  %200 = load i32, i32* @SMBHSTDAT0, align 4
  %201 = call i32 @inb_p(i32 %200)
  %202 = load i32, i32* @SMBHSTDAT1, align 4
  %203 = call i32 @inb_p(i32 %202)
  %204 = shl i32 %203, 8
  %205 = add nsw i32 %201, %204
  %206 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %207 = bitcast %union.i2c_smbus_data* %206 to i32*
  store i32 %205, i32* %207, align 8
  br label %252

208:                                              ; preds = %192, %192
  %209 = load i32, i32* @SMBHSTDAT0, align 4
  %210 = call i32 @inb_p(i32 %209)
  %211 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %212 = bitcast %union.i2c_smbus_data* %211 to i32**
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %210, i32* %214, align 4
  %215 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %216 = bitcast %union.i2c_smbus_data* %215 to i32**
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %208
  %223 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %224 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %225 = bitcast %union.i2c_smbus_data* %224 to i32**
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %223, i32* %227, align 4
  br label %228

228:                                              ; preds = %222, %208
  %229 = load i32, i32* @SMBHSTCNT, align 4
  %230 = call i32 @inb_p(i32 %229)
  store i32 1, i32* %16, align 4
  br label %231

231:                                              ; preds = %248, %228
  %232 = load i32, i32* %16, align 4
  %233 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %234 = bitcast %union.i2c_smbus_data* %233 to i32**
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp sle i32 %232, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %231
  %240 = load i32, i32* @SMBBLKDAT, align 4
  %241 = call i32 @inb_p(i32 %240)
  %242 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %243 = bitcast %union.i2c_smbus_data* %242 to i32**
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %241, i32* %247, align 4
  br label %248

248:                                              ; preds = %239
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %16, align 4
  br label %231

251:                                              ; preds = %231
  br label %252

252:                                              ; preds = %192, %251, %199, %194
  store i32 0, i32* %8, align 4
  br label %258

253:                                              ; preds = %160, %95
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @dev_warn(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @EOPNOTSUPP, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %253, %252, %191, %174
  %259 = load i32, i32* %8, align 4
  ret i32 %259
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @vt596_transaction(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
