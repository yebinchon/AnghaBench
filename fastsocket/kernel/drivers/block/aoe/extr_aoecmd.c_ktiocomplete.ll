; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ktiocomplete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ktiocomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, i32, i32, i32, %struct.buf*, %struct.sk_buff*, %struct.aoetgt* }
%struct.buf = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.aoetgt = type { i64, i64, %struct.aoedev* }
%struct.aoedev = type { i32, i32, i64 }
%struct.aoe_hdr = type { i32, i32 }
%struct.aoe_atahdr = type { i32, i32 }
%struct.aoeif = type { i32 }

@FFL_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"aoe: ata error cmd=%2.2Xh stat=%2.2Xh from e%ld.%d\0A\00", align 1
@BIO_UPTODATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s e%ld.%d.  skb->len=%d need=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"aoe: runt data size in read from\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s e%ld.%d.  skb->len=%d need=512\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"aoe: runt data size in ataid from\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"aoe: unrecognized ata command %2.2Xh for %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*)* @ktiocomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktiocomplete(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.aoe_hdr*, align 8
  %4 = alloca %struct.aoe_hdr*, align 8
  %5 = alloca %struct.aoe_atahdr*, align 8
  %6 = alloca %struct.aoe_atahdr*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.aoetgt*, align 8
  %10 = alloca %struct.aoeif*, align 8
  %11 = alloca %struct.aoedev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %2, align 8
  %14 = load %struct.frame*, %struct.frame** %2, align 8
  %15 = icmp eq %struct.frame* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %260

17:                                               ; preds = %1
  %18 = load %struct.frame*, %struct.frame** %2, align 8
  %19 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 6
  %20 = load %struct.aoetgt*, %struct.aoetgt** %19, align 8
  store %struct.aoetgt* %20, %struct.aoetgt** %9, align 8
  %21 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %22 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %21, i32 0, i32 2
  %23 = load %struct.aoedev*, %struct.aoedev** %22, align 8
  store %struct.aoedev* %23, %struct.aoedev** %11, align 8
  %24 = load %struct.frame*, %struct.frame** %2, align 8
  %25 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 5
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = load %struct.frame*, %struct.frame** %2, align 8
  %28 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 4
  %29 = load %struct.buf*, %struct.buf** %28, align 8
  store %struct.buf* %29, %struct.buf** %7, align 8
  %30 = load %struct.frame*, %struct.frame** %2, align 8
  %31 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FFL_PROBE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %200

37:                                               ; preds = %17
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %81

41:                                               ; preds = %37
  %42 = load %struct.frame*, %struct.frame** %2, align 8
  %43 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @skb_mac_header(i32 %44)
  %46 = inttoptr i64 %45 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %46, %struct.aoe_hdr** %4, align 8
  %47 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %48 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %47, i64 1
  %49 = bitcast %struct.aoe_hdr* %48 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %49, %struct.aoe_atahdr** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %53, %struct.aoe_hdr** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i32 @skb_pull(%struct.sk_buff* %54, i32 8)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %59, %struct.aoe_atahdr** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @skb_pull(%struct.sk_buff* %60, i32 8)
  %62 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %63 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 169
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %41
  %68 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %69 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %72 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %75 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %78 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %67, %40
  %82 = load %struct.buf*, %struct.buf** %7, align 8
  %83 = icmp ne %struct.buf* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* @BIO_UPTODATE, align 4
  %86 = load %struct.buf*, %struct.buf** %7, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @clear_bit(i32 %85, i32* %89)
  br label %91

91:                                               ; preds = %84, %81
  br label %200

92:                                               ; preds = %41
  %93 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %94 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 9
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %12, align 8
  %98 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %99 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %187 [
    i32 131, label %101
    i32 130, label %101
    i32 129, label %135
    i32 128, label %135
    i32 132, label %153
  ]

101:                                              ; preds = %92, %92
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %109 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %112 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %110, i32 %113, i64 %116, i64 %117)
  %119 = load i32, i32* @BIO_UPTODATE, align 4
  %120 = load %struct.buf*, %struct.buf** %7, align 8
  %121 = getelementptr inbounds %struct.buf, %struct.buf* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @clear_bit(i32 %119, i32* %123)
  br label %199

125:                                              ; preds = %101
  %126 = load %struct.frame*, %struct.frame** %2, align 8
  %127 = getelementptr inbounds %struct.frame, %struct.frame* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.frame*, %struct.frame** %2, align 8
  %130 = getelementptr inbounds %struct.frame, %struct.frame* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @bvcpy(i32 %128, i32 %131, %struct.sk_buff* %132, i64 %133)
  br label %135

135:                                              ; preds = %92, %92, %125
  %136 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %137 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %136, i32 0, i32 0
  %138 = call i32 @spin_lock_irq(i32* %137)
  %139 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.aoeif* @getif(%struct.aoetgt* %139, i32 %142)
  store %struct.aoeif* %143, %struct.aoeif** %10, align 8
  %144 = load %struct.aoeif*, %struct.aoeif** %10, align 8
  %145 = icmp ne %struct.aoeif* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load %struct.aoeif*, %struct.aoeif** %10, align 8
  %148 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %135
  %150 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %151 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock_irq(i32* %151)
  br label %199

153:                                              ; preds = %92
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %156, 512
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %160 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %163 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %161, i32 %164, i64 %167)
  br label %199

169:                                              ; preds = %153
  %170 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %171 = call i32 @skb_linearize(%struct.sk_buff* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %199

174:                                              ; preds = %169
  %175 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %176 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %175, i32 0, i32 0
  %177 = call i32 @spin_lock_irq(i32* %176)
  %178 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %179 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @ataid_complete(%struct.aoedev* %178, %struct.aoetgt* %179, i64 %182)
  %184 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %185 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %184, i32 0, i32 0
  %186 = call i32 @spin_unlock_irq(i32* %185)
  br label %199

187:                                              ; preds = %92
  %188 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %189 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.aoe_hdr*, %struct.aoe_hdr** %3, align 8
  %192 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %191, i32 0, i32 1
  %193 = call i32 @get_unaligned(i32* %192)
  %194 = call i32 @be16_to_cpu(i32 %193)
  %195 = load %struct.aoe_hdr*, %struct.aoe_hdr** %3, align 8
  %196 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %190, i32 %194, i32 %197)
  br label %199

199:                                              ; preds = %187, %174, %173, %158, %149, %107
  br label %200

200:                                              ; preds = %199, %91, %36
  %201 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %202 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %201, i32 0, i32 0
  %203 = call i32 @spin_lock_irq(i32* %202)
  %204 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %205 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %232

208:                                              ; preds = %200
  %209 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %210 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, -1
  store i64 %212, i64* %210, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %208
  %215 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %216 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %214
  %220 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %221 = call i32 @count_targets(%struct.aoedev* %220, i32* %13)
  %222 = load i32, i32* %13, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %226 = call i32 @probe(%struct.aoetgt* %225)
  %227 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %228 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  br label %231

231:                                              ; preds = %224, %219
  br label %232

232:                                              ; preds = %231, %214, %208, %200
  %233 = load %struct.frame*, %struct.frame** %2, align 8
  %234 = call i32 @aoe_freetframe(%struct.frame* %233)
  %235 = load %struct.buf*, %struct.buf** %7, align 8
  %236 = icmp ne %struct.buf* %235, null
  br i1 %236, label %237, label %252

237:                                              ; preds = %232
  %238 = load %struct.buf*, %struct.buf** %7, align 8
  %239 = getelementptr inbounds %struct.buf, %struct.buf* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %240, -1
  store i64 %241, i64* %239, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load %struct.buf*, %struct.buf** %7, align 8
  %245 = getelementptr inbounds %struct.buf, %struct.buf* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %250 = load %struct.buf*, %struct.buf** %7, align 8
  %251 = call i32 @aoe_end_buf(%struct.aoedev* %249, %struct.buf* %250)
  br label %252

252:                                              ; preds = %248, %243, %237, %232
  %253 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %254 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %253, i32 0, i32 0
  %255 = call i32 @spin_unlock_irq(i32* %254)
  %256 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %257 = call i32 @aoedev_put(%struct.aoedev* %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %259 = call i32 @dev_kfree_skb(%struct.sk_buff* %258)
  br label %260

260:                                              ; preds = %252, %16
  ret void
}

declare dso_local i64 @skb_mac_header(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bvcpy(i32, i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.aoeif* @getif(%struct.aoetgt*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ataid_complete(%struct.aoedev*, %struct.aoetgt*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @count_targets(%struct.aoedev*, i32*) #1

declare dso_local i32 @probe(%struct.aoetgt*) #1

declare dso_local i32 @aoe_freetframe(%struct.frame*) #1

declare dso_local i32 @aoe_end_buf(%struct.aoedev*, %struct.buf*) #1

declare dso_local i32 @aoedev_put(%struct.aoedev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
