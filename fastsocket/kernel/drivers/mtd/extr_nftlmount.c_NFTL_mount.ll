; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_NFTL_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_NFTL_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, i32*, i32*, i32, i32, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.nftl_uci0 = type { i32, i32, i32, i32 }
%struct.nftl_uci1 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not find valid boot record\0A\00", align 1
@BLOCK_NIL = common dso_local global i32 0, align 4
@BLOCK_NOTEXPLORED = common dso_local global i32 0, align 4
@SECTORSIZE = common dso_local global i32 0, align 4
@ERASE_MARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Formatting block %d\0A\00", align 1
@BLOCK_RESERVED = common dso_local global i8* null, align 8
@BLOCK_FREE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Block %d: free but referenced in chain %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Block %d: incorrect logical block: %d expected: %d\0A\00", align 1
@FOLD_MARK_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Block %d: incorrectly marked as first block in chain\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Block %d: folding in progress - ignoring first block flag\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Block %d: referencing invalid block %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Block %d: referencing block %d already in another chain\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Could read foldmark at block %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Two chains at blocks %d (len=%d) and %d (len=%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Unreferenced block %d, formatting it\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NFTL_mount(%struct.NFTLrecord* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.NFTLrecord*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nftl_uci0, align 4
  %16 = alloca %struct.nftl_uci1, align 4
  %17 = alloca %struct.mtd_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %3, align 8
  %23 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %24 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.mtd_info*, %struct.mtd_info** %25, align 8
  store %struct.mtd_info* %26, %struct.mtd_info** %17, align 8
  %27 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %28 = call i64 @find_boot_record(%struct.NFTLrecord* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %501

32:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %36 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i32, i32* @BLOCK_NIL, align 4
  %41 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %42 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %420, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %54 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %423

57:                                               ; preds = %51
  %58 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %59 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BLOCK_NOTEXPLORED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %418

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %341, %67
  %70 = load %struct.mtd_info*, %struct.mtd_info** %17, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %73 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = mul i32 %71, %74
  %76 = add i32 %75, 8
  %77 = bitcast %struct.nftl_uci0* %15 to i8*
  %78 = call i64 @nftl_read_oob(%struct.mtd_info* %70, i32 %76, i32 8, i64* %18, i8* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %69
  %81 = load %struct.mtd_info*, %struct.mtd_info** %17, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %84 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = mul i32 %82, %85
  %87 = load i32, i32* @SECTORSIZE, align 4
  %88 = add i32 %86, %87
  %89 = add i32 %88, 8
  %90 = bitcast %struct.nftl_uci1* %16 to i8*
  %91 = call i64 @nftl_read_oob(%struct.mtd_info* %81, i32 %89, i32 8, i64* %18, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %80, %69
  %94 = load i32, i32* @BLOCK_NIL, align 4
  %95 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %96 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  store i32 1, i32* %14, align 4
  br label %342

101:                                              ; preds = %80
  %102 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %15, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %15, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %103, %105
  %107 = call i8* @le16_to_cpu(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %15, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %15, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %110, %112
  %114 = call i8* @le16_to_cpu(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %16, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %16, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %16, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %120, %122
  %124 = call i8* @le16_to_cpu(i32 %123)
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %6, align 4
  %127 = lshr i32 %126, 15
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, 32767
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ERASE_MARK, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %101
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %139 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp uge i32 %137, %140
  br i1 %141, label %142, label %197

142:                                              ; preds = %136, %101
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %186

145:                                              ; preds = %142
  %146 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i64 @check_and_mark_free_block(%struct.NFTLrecord* %146, i32 %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i64 @NFTL_formatblock(%struct.NFTLrecord* %153, i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load i8*, i8** @BLOCK_RESERVED, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %161 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %175

166:                                              ; preds = %150
  %167 = load i8*, i8** @BLOCK_FREE, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %170 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %166, %157
  br label %185

176:                                              ; preds = %145
  %177 = load i8*, i8** @BLOCK_FREE, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %180 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %178, i32* %184, align 4
  br label %185

185:                                              ; preds = %176, %175
  br label %419

186:                                              ; preds = %142
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* @BLOCK_NIL, align 4
  %191 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %192 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %190, i32* %196, align 4
  store i32 1, i32* %14, align 4
  br label %342

197:                                              ; preds = %136
  %198 = load i32, i32* %13, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  br label %419

204:                                              ; preds = %200
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %5, align 4
  br label %235

206:                                              ; preds = %197
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %211, i32 %212, i32 %213)
  store i32 1, i32* %14, align 4
  br label %215

215:                                              ; preds = %210, %206
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %215
  %219 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @get_fold_mark(%struct.NFTLrecord* %219, i32 %220)
  %222 = load i32, i32* @FOLD_MARK_IN_PROGRESS, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %227, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 65535
  br i1 %226, label %227, label %230

227:                                              ; preds = %224, %218
  %228 = load i32, i32* %10, align 4
  %229 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  store i32 1, i32* %14, align 4
  br label %233

230:                                              ; preds = %224
  %231 = load i32, i32* %10, align 4
  %232 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %230, %227
  br label %234

234:                                              ; preds = %233, %215
  br label %235

235:                                              ; preds = %234, %204
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 65535
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load i32, i32* @BLOCK_NIL, align 4
  %242 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %243 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %241, i32* %247, align 4
  br label %342

248:                                              ; preds = %235
  %249 = load i32, i32* %7, align 4
  %250 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %251 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp uge i32 %249, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %248
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %255, i32 %256)
  store i32 1, i32* %14, align 4
  %258 = load i32, i32* @BLOCK_NIL, align 4
  %259 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %260 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %258, i32* %264, align 4
  br label %342

265:                                              ; preds = %248
  %266 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %267 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @BLOCK_NOTEXPLORED, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %330

275:                                              ; preds = %265
  %276 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %277 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @BLOCK_NIL, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %318

285:                                              ; preds = %275
  %286 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %287 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %318

295:                                              ; preds = %285
  %296 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @get_fold_mark(%struct.NFTLrecord* %296, i32 %297)
  %299 = load i32, i32* @FOLD_MARK_IN_PROGRESS, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %318

301:                                              ; preds = %295
  %302 = load i32, i32* %7, align 4
  %303 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* %7, align 4
  %305 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %306 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %304, i32* %310, align 4
  %311 = load i32, i32* @BLOCK_NIL, align 4
  %312 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %313 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %5, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %311, i32* %317, align 4
  br label %329

318:                                              ; preds = %295, %285, %275
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %7, align 4
  %321 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %319, i32 %320)
  store i32 1, i32* %14, align 4
  %322 = load i32, i32* @BLOCK_NIL, align 4
  %323 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %324 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %322, i32* %328, align 4
  br label %329

329:                                              ; preds = %318, %301
  br label %342

330:                                              ; preds = %265
  %331 = load i32, i32* %7, align 4
  %332 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %333 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %331, i32* %337, align 4
  %338 = load i32, i32* %7, align 4
  store i32 %338, i32* %10, align 4
  br label %339

339:                                              ; preds = %330
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  br label %69

342:                                              ; preds = %329, %254, %240, %186, %93
  %343 = load i32, i32* %14, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %342
  %346 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %347 = load i32, i32* %11, align 4
  %348 = call i32 @format_chain(%struct.NFTLrecord* %346, i32 %347)
  br label %417

349:                                              ; preds = %342
  %350 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %351 = load i32, i32* %11, align 4
  %352 = call i32 @get_fold_mark(%struct.NFTLrecord* %350, i32 %351)
  store i32 %352, i32* %22, align 4
  %353 = load i32, i32* %22, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %349
  %356 = load i32, i32* %11, align 4
  %357 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %356)
  %358 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %359 = load i32, i32* %11, align 4
  %360 = call i32 @format_chain(%struct.NFTLrecord* %358, i32 %359)
  br label %416

361:                                              ; preds = %349
  %362 = load i32, i32* %22, align 4
  %363 = load i32, i32* @FOLD_MARK_IN_PROGRESS, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %367 = load i32, i32* %11, align 4
  %368 = call i32 @check_sectors_in_chain(%struct.NFTLrecord* %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %361
  %370 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %371 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %5, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  store i32 %376, i32* %19, align 4
  %377 = load i32, i32* %19, align 4
  %378 = load i32, i32* @BLOCK_NIL, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %407

380:                                              ; preds = %369
  %381 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %382 = load i32, i32* %19, align 4
  %383 = call i32 @calc_chain_length(%struct.NFTLrecord* %381, i32 %382)
  store i32 %383, i32* %21, align 4
  %384 = load i32, i32* %19, align 4
  %385 = load i32, i32* %21, align 4
  %386 = load i32, i32* %11, align 4
  %387 = load i32, i32* %13, align 4
  %388 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %384, i32 %385, i32 %386, i32 %387)
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %21, align 4
  %391 = icmp uge i32 %389, %390
  br i1 %391, label %392, label %401

392:                                              ; preds = %380
  %393 = load i32, i32* %19, align 4
  store i32 %393, i32* %20, align 4
  %394 = load i32, i32* %11, align 4
  %395 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %396 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  store i32 %394, i32* %400, align 4
  br label %403

401:                                              ; preds = %380
  %402 = load i32, i32* %11, align 4
  store i32 %402, i32* %20, align 4
  br label %403

403:                                              ; preds = %401, %392
  %404 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %405 = load i32, i32* %20, align 4
  %406 = call i32 @format_chain(%struct.NFTLrecord* %404, i32 %405)
  br label %415

407:                                              ; preds = %369
  %408 = load i32, i32* %11, align 4
  %409 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %410 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %5, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  store i32 %408, i32* %414, align 4
  br label %415

415:                                              ; preds = %407, %403
  br label %416

416:                                              ; preds = %415, %355
  br label %417

417:                                              ; preds = %416, %345
  br label %418

418:                                              ; preds = %417, %57
  br label %419

419:                                              ; preds = %418, %203, %185
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %11, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %11, align 4
  br label %51

423:                                              ; preds = %51
  %424 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %425 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %424, i32 0, i32 5
  store i64 0, i64* %425, align 8
  %426 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %427 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %426, i32 0, i32 6
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i8* @le16_to_cpu(i32 %429)
  %431 = ptrtoint i8* %430 to i32
  %432 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %433 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %432, i32 0, i32 4
  store i32 %431, i32* %433, align 4
  store i32 0, i32* %10, align 4
  br label %434

434:                                              ; preds = %497, %423
  %435 = load i32, i32* %10, align 4
  %436 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %437 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = icmp ult i32 %435, %438
  br i1 %439, label %440, label %500

440:                                              ; preds = %434
  %441 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %442 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %441, i32 0, i32 2
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @BLOCK_NOTEXPLORED, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %476

450:                                              ; preds = %440
  %451 = load i32, i32* %10, align 4
  %452 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %451)
  %453 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %454 = load i32, i32* %10, align 4
  %455 = call i64 @NFTL_formatblock(%struct.NFTLrecord* %453, i32 %454)
  %456 = icmp slt i64 %455, 0
  br i1 %456, label %457, label %466

457:                                              ; preds = %450
  %458 = load i8*, i8** @BLOCK_RESERVED, align 8
  %459 = ptrtoint i8* %458 to i32
  %460 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %461 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %460, i32 0, i32 2
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %10, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %459, i32* %465, align 4
  br label %475

466:                                              ; preds = %450
  %467 = load i8*, i8** @BLOCK_FREE, align 8
  %468 = ptrtoint i8* %467 to i32
  %469 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %470 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %469, i32 0, i32 2
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* %10, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  store i32 %468, i32* %474, align 4
  br label %475

475:                                              ; preds = %466, %457
  br label %476

476:                                              ; preds = %475, %440
  %477 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %478 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %477, i32 0, i32 2
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %10, align 4
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = zext i32 %483 to i64
  %485 = inttoptr i64 %484 to i8*
  %486 = load i8*, i8** @BLOCK_FREE, align 8
  %487 = icmp eq i8* %485, %486
  br i1 %487, label %488, label %496

488:                                              ; preds = %476
  %489 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %490 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %489, i32 0, i32 5
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %491, 1
  store i64 %492, i64* %490, align 8
  %493 = load i32, i32* %10, align 4
  %494 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %495 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %494, i32 0, i32 4
  store i32 %493, i32* %495, align 4
  br label %496

496:                                              ; preds = %488, %476
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %10, align 4
  %499 = add i32 %498, 1
  store i32 %499, i32* %10, align 4
  br label %434

500:                                              ; preds = %434
  store i32 0, i32* %2, align 4
  br label %501

501:                                              ; preds = %500, %30
  %502 = load i32, i32* %2, align 4
  ret i32 %502
}

declare dso_local i64 @find_boot_record(%struct.NFTLrecord*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @check_and_mark_free_block(%struct.NFTLrecord*, i32) #1

declare dso_local i64 @NFTL_formatblock(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @get_fold_mark(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @format_chain(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @check_sectors_in_chain(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @calc_chain_length(%struct.NFTLrecord*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
