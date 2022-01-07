; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_handle_write_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_handle_write_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.r10conf = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r10bio = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.bio*, %struct.bio* }

@R10BIO_IsSync = common dso_local global i32 0, align 4
@R10BIO_IsRecover = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@IO_MADE_GOOD = common dso_local global %struct.bio* null, align 8
@R10BIO_Degraded = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, %struct.r10bio*)* @handle_write_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_write_completed(%struct.r10conf* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %10 = load i32, i32* @R10BIO_IsSync, align 4
  %11 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %12 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @R10BIO_IsRecover, align 4
  %17 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %18 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %179

21:                                               ; preds = %15, %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %173, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %25 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %176

28:                                               ; preds = %22
  %29 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %30 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %38 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.md_rdev*, %struct.md_rdev** %43, align 8
  store %struct.md_rdev* %44, %struct.md_rdev** %6, align 8
  %45 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %46 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load %struct.bio*, %struct.bio** %51, align 8
  %53 = icmp eq %struct.bio* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  br label %173

55:                                               ; preds = %28
  %56 = load i32, i32* @BIO_UPTODATE, align 4
  %57 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %58 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load %struct.bio*, %struct.bio** %63, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 0
  %66 = call i64 @test_bit(i32 %56, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %55
  %69 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %70 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %71 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %79 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %69, i32 %77, i32 %80, i32 0)
  br label %104

82:                                               ; preds = %55
  %83 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %84 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %85 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %93 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rdev_set_badblocks(%struct.md_rdev* %83, i32 %91, i32 %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %82
  %98 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %99 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %102 = call i32 @md_error(i32 %100, %struct.md_rdev* %101)
  br label %103

103:                                              ; preds = %97, %82
  br label %104

104:                                              ; preds = %103, %68
  %105 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %106 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load %struct.md_rdev*, %struct.md_rdev** %111, align 8
  store %struct.md_rdev* %112, %struct.md_rdev** %6, align 8
  %113 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %114 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load %struct.bio*, %struct.bio** %119, align 8
  %121 = icmp eq %struct.bio* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %104
  br label %173

123:                                              ; preds = %104
  %124 = load i32, i32* @BIO_UPTODATE, align 4
  %125 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %126 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load %struct.bio*, %struct.bio** %131, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 0
  %134 = call i64 @test_bit(i32 %124, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %123
  %137 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %138 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %139 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %147 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %137, i32 %145, i32 %148, i32 0)
  br label %172

150:                                              ; preds = %123
  %151 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %152 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %153 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %161 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rdev_set_badblocks(%struct.md_rdev* %151, i32 %159, i32 %162, i32 0)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %150
  %166 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %167 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %170 = call i32 @md_error(i32 %168, %struct.md_rdev* %169)
  br label %171

171:                                              ; preds = %165, %150
  br label %172

172:                                              ; preds = %171, %136
  br label %173

173:                                              ; preds = %172, %122, %54
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %22

176:                                              ; preds = %22
  %177 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %178 = call i32 @put_buf(%struct.r10bio* %177)
  br label %322

179:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %307, %179
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %183 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %310

186:                                              ; preds = %180
  %187 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %188 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %187, i32 0, i32 2
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %8, align 4
  %195 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %196 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load %struct.bio*, %struct.bio** %201, align 8
  store %struct.bio* %202, %struct.bio** %9, align 8
  %203 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %204 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load %struct.md_rdev*, %struct.md_rdev** %209, align 8
  store %struct.md_rdev* %210, %struct.md_rdev** %6, align 8
  %211 = load %struct.bio*, %struct.bio** %9, align 8
  %212 = load %struct.bio*, %struct.bio** @IO_MADE_GOOD, align 8
  %213 = icmp eq %struct.bio* %211, %212
  br i1 %213, label %214, label %233

214:                                              ; preds = %186
  %215 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %216 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %217 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %216, i32 0, i32 2
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %225 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %215, i32 %223, i32 %226, i32 0)
  %228 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %229 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %230 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @rdev_dec_pending(%struct.md_rdev* %228, i32 %231)
  br label %264

233:                                              ; preds = %186
  %234 = load %struct.bio*, %struct.bio** %9, align 8
  %235 = icmp ne %struct.bio* %234, null
  br i1 %235, label %236, label %263

236:                                              ; preds = %233
  %237 = load i32, i32* @BIO_UPTODATE, align 4
  %238 = load %struct.bio*, %struct.bio** %9, align 8
  %239 = getelementptr inbounds %struct.bio, %struct.bio* %238, i32 0, i32 0
  %240 = call i64 @test_bit(i32 %237, i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %263, label %242

242:                                              ; preds = %236
  %243 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @narrow_write_error(%struct.r10bio* %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %242
  %248 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %249 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %252 = call i32 @md_error(i32 %250, %struct.md_rdev* %251)
  %253 = load i32, i32* @R10BIO_Degraded, align 4
  %254 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %255 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %254, i32 0, i32 0
  %256 = call i32 @set_bit(i32 %253, i32* %255)
  br label %257

257:                                              ; preds = %247, %242
  %258 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %259 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %260 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @rdev_dec_pending(%struct.md_rdev* %258, i32 %261)
  br label %263

263:                                              ; preds = %257, %236, %233
  br label %264

264:                                              ; preds = %263, %214
  %265 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %266 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %265, i32 0, i32 2
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load %struct.bio*, %struct.bio** %271, align 8
  store %struct.bio* %272, %struct.bio** %9, align 8
  %273 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %274 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %273, i32 0, i32 2
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  %280 = load %struct.md_rdev*, %struct.md_rdev** %279, align 8
  store %struct.md_rdev* %280, %struct.md_rdev** %6, align 8
  %281 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %282 = icmp ne %struct.md_rdev* %281, null
  br i1 %282, label %283, label %306

283:                                              ; preds = %264
  %284 = load %struct.bio*, %struct.bio** %9, align 8
  %285 = load %struct.bio*, %struct.bio** @IO_MADE_GOOD, align 8
  %286 = icmp eq %struct.bio* %284, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %283
  %288 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %289 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %290 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %289, i32 0, i32 2
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %298 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %288, i32 %296, i32 %299, i32 0)
  %301 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %302 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %303 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @rdev_dec_pending(%struct.md_rdev* %301, i32 %304)
  br label %306

306:                                              ; preds = %287, %283, %264
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %5, align 4
  br label %180

310:                                              ; preds = %180
  %311 = load i32, i32* @R10BIO_WriteError, align 4
  %312 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %313 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %312, i32 0, i32 0
  %314 = call i64 @test_bit(i32 %311, i32* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %310
  %317 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %318 = call i32 @close_write(%struct.r10bio* %317)
  br label %319

319:                                              ; preds = %316, %310
  %320 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %321 = call i32 @raid_end_bio_io(%struct.r10bio* %320)
  br label %322

322:                                              ; preds = %319, %176
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @md_error(i32, %struct.md_rdev*) #1

declare dso_local i32 @put_buf(%struct.r10bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

declare dso_local i32 @narrow_write_error(%struct.r10bio*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @close_write(%struct.r10bio*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
