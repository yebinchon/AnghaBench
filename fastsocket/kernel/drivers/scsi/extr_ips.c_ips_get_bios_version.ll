; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_get_bios_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_get_bios_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32*, i32, i32, %struct.TYPE_17__*, i64, %struct.TYPE_14__*, i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i8**, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i64, i32, i8* }
%struct.TYPE_14__ = type { i64, i64 }

@__const.ips_get_bios_version.hexDigits = private unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@.str = private unnamed_addr constant [21 x i8] c"ips_get_bios_version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"       ?\00", align 1
@IPS_DEVICEID_COPPERHEAD = common dso_local global i64 0, align 8
@IPS_REG_FLAP = common dso_local global i64 0, align 8
@IPS_REVID_TROMBONE64 = common dso_local global i64 0, align 8
@IPS_REG_FLDP = common dso_local global i64 0, align 8
@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_RW_BIOSFW = common dso_local global i8* null, align 8
@IPS_FAILURE = common dso_local global i32 0, align 4
@IPS_SUCCESS_IMM = common dso_local global i32 0, align 4
@IPS_GSC_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @ips_get_bios_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_get_bios_version(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [16 x i8], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = bitcast [16 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.ips_get_bios_version.hexDigits, i32 0, i32 0), i64 16, i1 false)
  %13 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strncpy(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPS_DEVICEID_COPPERHEAD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %264

25:                                               ; preds = %2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = call i64 @IPS_USE_MEMIO(%struct.TYPE_18__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %146

29:                                               ; preds = %25
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPS_REG_FLAP, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 0, i64 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = call i32 @udelay(i32 25)
  br label %45

45:                                               ; preds = %43, %29
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPS_REG_FLDP, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readb(i64 %50)
  %52 = icmp ne i32 %51, 85
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %432

54:                                               ; preds = %45
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IPS_REG_FLAP, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 1, i64 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = call i32 @udelay(i32 25)
  br label %70

70:                                               ; preds = %68, %54
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IPS_REG_FLDP, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readb(i64 %75)
  %77 = icmp ne i32 %76, 170
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %432

79:                                               ; preds = %70
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IPS_REG_FLAP, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 511, i64 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = call i32 @udelay(i32 25)
  br label %95

95:                                               ; preds = %93, %79
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IPS_REG_FLDP, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readb(i64 %100)
  store i32 %101, i32* %7, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IPS_REG_FLAP, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 510, i64 %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %95
  %116 = call i32 @udelay(i32 25)
  br label %117

117:                                              ; preds = %115, %95
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IPS_REG_FLDP, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readb(i64 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IPS_REG_FLAP, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 509, i64 %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %117
  %138 = call i32 @udelay(i32 25)
  br label %139

139:                                              ; preds = %137, %117
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IPS_REG_FLDP, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @readb(i64 %144)
  store i32 %145, i32* %9, align 4
  br label %263

146:                                              ; preds = %25
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IPS_REG_FLAP, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outl(i32 0, i64 %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  %161 = call i32 @udelay(i32 25)
  br label %162

162:                                              ; preds = %160, %146
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @IPS_REG_FLDP, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @inb(i64 %167)
  %169 = icmp ne i32 %168, 85
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %432

171:                                              ; preds = %162
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IPS_REG_FLAP, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @outl(i32 1, i64 %176)
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %171
  %186 = call i32 @udelay(i32 25)
  br label %187

187:                                              ; preds = %185, %171
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @IPS_REG_FLDP, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @inb(i64 %192)
  %194 = icmp ne i32 %193, 170
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %432

196:                                              ; preds = %187
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @IPS_REG_FLAP, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outl(i32 511, i64 %201)
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %196
  %211 = call i32 @udelay(i32 25)
  br label %212

212:                                              ; preds = %210, %196
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @IPS_REG_FLDP, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @inb(i64 %217)
  store i32 %218, i32* %7, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @IPS_REG_FLAP, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @outl(i32 510, i64 %223)
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %212
  %233 = call i32 @udelay(i32 25)
  br label %234

234:                                              ; preds = %232, %212
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @IPS_REG_FLDP, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @inb(i64 %239)
  store i32 %240, i32* %8, align 4
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @IPS_REG_FLAP, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i32 @outl(i32 509, i64 %245)
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 6
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %234
  %255 = call i32 @udelay(i32 25)
  br label %256

256:                                              ; preds = %254, %234
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @IPS_REG_FLDP, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @inb(i64 %261)
  store i32 %262, i32* %9, align 4
  br label %263

263:                                              ; preds = %256, %139
  br label %373

264:                                              ; preds = %2
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  store i32* %267, i32** %10, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = call i32 @memset(i32* %268, i32 0, i32 4096)
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %271, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i64 %277
  store %struct.TYPE_17__* %278, %struct.TYPE_17__** %5, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = call i32 @ips_init_scb(%struct.TYPE_18__* %279, %struct.TYPE_17__* %280)
  %282 = load i32, i32* @ips_cmd_timeout, align 4
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 4
  store i32 %282, i32* %284, align 8
  %285 = load i8*, i8** @IPS_CMD_RW_BIOSFW, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 3
  %288 = load i8**, i8*** %287, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 0
  store i8* %285, i8** %289, align 8
  %290 = load i8*, i8** @IPS_CMD_RW_BIOSFW, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 7
  store i8* %290, i8** %294, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = call i32 @IPS_COMMAND_ID(%struct.TYPE_18__* %295, %struct.TYPE_17__* %296)
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 6
  store i32 %297, i32* %301, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  store i32 1, i32* %305, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 5
  store i64 0, i64* %309, align 8
  %310 = call i32 @cpu_to_le32(i32 2048)
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 4
  store i32 %310, i32* %314, align 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 1
  store i32 1, i32* %318, align 4
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 3
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  store i32 4096, i32* %324, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 2
  store i32 %327, i32* %331, align 8
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %334 = load i32, i32* @ips_cmd_timeout, align 4
  %335 = load i32, i32* %4, align 4
  %336 = call i32 @ips_send_wait(%struct.TYPE_18__* %332, %struct.TYPE_17__* %333, i32 %334, i32 %335)
  store i32 %336, i32* %6, align 4
  %337 = load i32, i32* @IPS_FAILURE, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %350, label %339

339:                                              ; preds = %264
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %350, label %343

343:                                              ; preds = %339
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @IPS_GSC_STATUS_MASK, align 4
  %348 = and i32 %346, %347
  %349 = icmp sgt i32 %348, 1
  br i1 %349, label %350, label %351

350:                                              ; preds = %343, %339, %264
  br label %432

351:                                              ; preds = %343
  %352 = load i32*, i32** %10, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 192
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 85
  br i1 %355, label %356, label %371

356:                                              ; preds = %351
  %357 = load i32*, i32** %10, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 193
  %359 = load i32, i32* %358, align 4
  %360 = icmp eq i32 %359, 170
  br i1 %360, label %361, label %371

361:                                              ; preds = %356
  %362 = load i32*, i32** %10, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 703
  %364 = load i32, i32* %363, align 4
  store i32 %364, i32* %7, align 4
  %365 = load i32*, i32** %10, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 702
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %8, align 4
  %368 = load i32*, i32** %10, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 701
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %9, align 4
  br label %372

371:                                              ; preds = %356, %351
  br label %432

372:                                              ; preds = %361
  br label %373

373:                                              ; preds = %372, %263
  %374 = load i32, i32* %7, align 4
  %375 = and i32 %374, 240
  %376 = ashr i32 %375, 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %377
  %379 = load i8, i8* %378, align 1
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 0
  store i8 %379, i8* %383, align 1
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 1
  store i8 46, i8* %387, align 1
  %388 = load i32, i32* %7, align 4
  %389 = and i32 %388, 15
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 2
  store i8 %392, i8* %396, align 1
  %397 = load i32, i32* %9, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 3
  store i8 %400, i8* %404, align 1
  %405 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 0
  %407 = load i8*, i8** %406, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 4
  store i8 46, i8* %408, align 1
  %409 = load i32, i32* %8, align 4
  %410 = and i32 %409, 240
  %411 = ashr i32 %410, 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 5
  store i8 %414, i8* %418, align 1
  %419 = load i32, i32* %8, align 4
  %420 = and i32 %419, 15
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %421
  %423 = load i8, i8* %422, align 1
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 6
  store i8 %423, i8* %427, align 1
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 0
  %430 = load i8*, i8** %429, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 7
  store i8 0, i8* %431, align 1
  br label %432

432:                                              ; preds = %373, %371, %350, %195, %170, %78, %53
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @METHOD_TRACE(i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @IPS_USE_MEMIO(%struct.TYPE_18__*) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @readb(i64) #2

declare dso_local i32 @outl(i32, i64) #2

declare dso_local i32 @inb(i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ips_init_scb(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @ips_send_wait(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
