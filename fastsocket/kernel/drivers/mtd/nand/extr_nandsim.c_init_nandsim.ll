; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_init_nandsim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_init_nandsim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.mtd_info = type { i64, i64, i64, i32, i64 }
%struct.nand_chip = type { i32, i64, i64, i64 }
%struct.nandsim = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i8* }

@.str = private unnamed_addr constant [46 x i8] c"init_nandsim: nandsim is already initialized\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@OPT_PAGE256 = common dso_local global i32 0, align 4
@OPT_PAGE512 = common dso_local global i32 0, align 4
@OPT_AUTOINCR = common dso_local global i32 0, align 4
@OPT_PAGE512_8BIT = common dso_local global i32 0, align 4
@OPT_PAGE2048 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"init_nandsim: unknown page size %u\0A\00", align 1
@OPT_SMALLPAGE = common dso_local global i32 0, align 4
@parts_num = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"too many partitions.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@parts = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"bad partition size.\0A\00", align 1
@nand_flash_ids = common dso_local global %struct.TYPE_7__* null, align 8
@second_id_byte = common dso_local global i64 0, align 8
@NAND_NO_AUTOINCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"16-bit flashes support wasn't tested\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"flash size: %llu MiB\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"page size: %u bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"OOB area size: %u bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"sector size: %u KiB\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"pages number: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"pages per sector: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"bus width: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"bits in sector size: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"bits in page size: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"bits in OOB size: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"flash size with OOB: %llu KiB\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"page address bytes: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"sector address bytes: %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"options: %#x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [67 x i8] c"init_nandsim: unable to allocate %u bytes for the internal buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @init_nandsim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_nandsim(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nandsim*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nand_chip*
  store %struct.nand_chip* %14, %struct.nand_chip** %4, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nandsim*
  store %struct.nandsim* %18, %struct.nandsim** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %20 = call i64 @NS_IS_INITIALIZED(%struct.nandsim* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %580

26:                                               ; preds = %1
  %27 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 16, i32 8
  %37 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %38 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %43 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %49 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %55 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %61 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %64 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %68 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %66, %70
  %72 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %73 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  store i64 %71, i64* %74, align 8
  %75 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %76 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %80 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @divide(i64 %78, i64 %82)
  %84 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %85 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  store i64 %83, i64* %86, align 8
  %87 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %88 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %92 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %96 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %94, %98
  %100 = add i64 %90, %99
  %101 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %102 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 13
  store i64 %100, i64* %103, align 8
  %104 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %105 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = call i8* @ffs(i64 %108)
  %110 = getelementptr i8, i8* %109, i64 -1
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %113 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  store i64 %111, i64* %114, align 8
  %115 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %116 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %119 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  store i64 %117, i64* %120, align 8
  %121 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %122 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @ffs(i64 %124)
  %126 = getelementptr i8, i8* %125, i64 -1
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %129 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 8
  store i64 %127, i64* %130, align 8
  %131 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %132 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %137 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = udiv i64 %135, %139
  %141 = trunc i64 %140 to i32
  %142 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %143 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 9
  store i32 %141, i32* %144, align 8
  %145 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %146 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %151 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %155 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = mul i64 %153, %158
  %160 = add i64 %149, %159
  %161 = trunc i64 %160 to i32
  %162 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %163 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 10
  store i32 %161, i32* %164, align 4
  %165 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %166 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %168 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 256
  br i1 %171, label %172, label %178

172:                                              ; preds = %26
  %173 = load i32, i32* @OPT_PAGE256, align 4
  %174 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %175 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %225

178:                                              ; preds = %26
  %179 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %180 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 512
  br i1 %183, label %184, label %203

184:                                              ; preds = %178
  %185 = load i32, i32* @OPT_PAGE512, align 4
  %186 = load i32, i32* @OPT_AUTOINCR, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %189 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %193 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 8
  br i1 %195, label %196, label %202

196:                                              ; preds = %184
  %197 = load i32, i32* @OPT_PAGE512_8BIT, align 4
  %198 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %199 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %196, %184
  br label %224

203:                                              ; preds = %178
  %204 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %205 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 2048
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load i32, i32* @OPT_PAGE2048, align 4
  %211 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %212 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %223

215:                                              ; preds = %203
  %216 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %217 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %219)
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %2, align 4
  br label %580

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223, %202
  br label %225

225:                                              ; preds = %224, %172
  %226 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %227 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @OPT_SMALLPAGE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %225
  %233 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %234 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp sle i64 %236, 33554432
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %240 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 11
  store i32 3, i32* %241, align 8
  %242 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %243 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 12
  store i32 2, i32* %244, align 4
  br label %252

245:                                              ; preds = %232
  %246 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %247 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 11
  store i32 4, i32* %248, align 8
  %249 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %250 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 12
  store i32 3, i32* %251, align 4
  br label %252

252:                                              ; preds = %245, %238
  br label %274

253:                                              ; preds = %225
  %254 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %255 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sle i64 %257, 134217728
  br i1 %258, label %259, label %266

259:                                              ; preds = %253
  %260 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %261 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 11
  store i32 4, i32* %262, align 8
  %263 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %264 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 12
  store i32 2, i32* %265, align 4
  br label %273

266:                                              ; preds = %253
  %267 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %268 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 11
  store i32 5, i32* %269, align 8
  %270 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %271 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 12
  store i32 3, i32* %272, align 4
  br label %273

273:                                              ; preds = %266, %259
  br label %274

274:                                              ; preds = %273, %252
  %275 = load i32, i32* @parts_num, align 4
  %276 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %277 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %276, i32 0, i32 5
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %278)
  %280 = icmp sgt i32 %275, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %7, align 4
  br label %576

285:                                              ; preds = %274
  %286 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %287 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %290

290:                                              ; preds = %362, %285
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @parts_num, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %365

294:                                              ; preds = %290
  %295 = load i64*, i64** @parts, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %301 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = mul nsw i64 %299, %304
  store i64 %305, i64* %10, align 8
  %306 = load i64, i64* %10, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %294
  %309 = load i64, i64* %10, align 8
  %310 = load i64, i64* %8, align 8
  %311 = icmp sgt i64 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %308, %294
  %313 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %7, align 4
  br label %576

316:                                              ; preds = %308
  %317 = load i32, i32* %6, align 4
  %318 = call i8* @get_partition_name(i32 %317)
  %319 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %320 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %319, i32 0, i32 5
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 2
  store i8* %318, i8** %325, align 8
  %326 = load i64, i64* %9, align 8
  %327 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %328 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %327, i32 0, i32 5
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  store i64 %326, i64* %333, align 8
  %334 = load i64, i64* %10, align 8
  %335 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %336 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %335, i32 0, i32 5
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  store i64 %334, i64* %341, align 8
  %342 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %343 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %342, i32 0, i32 5
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %343, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* %9, align 8
  %351 = add nsw i64 %350, %349
  store i64 %351, i64* %9, align 8
  %352 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %353 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %352, i32 0, i32 5
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %353, align 8
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* %8, align 8
  %361 = sub nsw i64 %360, %359
  store i64 %361, i64* %8, align 8
  br label %362

362:                                              ; preds = %316
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %6, align 4
  br label %290

365:                                              ; preds = %290
  %366 = load i32, i32* @parts_num, align 4
  %367 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %368 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %367, i32 0, i32 2
  store i32 %366, i32* %368, align 8
  %369 = load i64, i64* %8, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %413

371:                                              ; preds = %365
  %372 = load i32, i32* @parts_num, align 4
  %373 = add nsw i32 %372, 1
  %374 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %375 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %374, i32 0, i32 5
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %375, align 8
  %377 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %376)
  %378 = icmp sgt i32 %373, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %371
  %380 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %381 = load i32, i32* @EINVAL, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %7, align 4
  br label %576

383:                                              ; preds = %371
  %384 = load i32, i32* %6, align 4
  %385 = call i8* @get_partition_name(i32 %384)
  %386 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %387 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %386, i32 0, i32 5
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %387, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 2
  store i8* %385, i8** %392, align 8
  %393 = load i64, i64* %9, align 8
  %394 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %395 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %394, i32 0, i32 5
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 1
  store i64 %393, i64* %400, align 8
  %401 = load i64, i64* %8, align 8
  %402 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %403 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %402, i32 0, i32 5
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %403, align 8
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  store i64 %401, i64* %408, align 8
  %409 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %410 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 8
  br label %413

413:                                              ; preds = %383, %365
  store i32 0, i32* %6, align 4
  br label %414

414:                                              ; preds = %449, %413
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nand_flash_ids, align 8
  %416 = load i32, i32* %6, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 2
  %420 = load i32*, i32** %419, align 8
  %421 = icmp ne i32* %420, null
  br i1 %421, label %422, label %452

422:                                              ; preds = %414
  %423 = load i64, i64* @second_id_byte, align 8
  %424 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nand_flash_ids, align 8
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %423, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %422
  br label %449

432:                                              ; preds = %422
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nand_flash_ids, align 8
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @NAND_NO_AUTOINCR, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %448, label %442

442:                                              ; preds = %432
  %443 = load i32, i32* @OPT_AUTOINCR, align 4
  %444 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %445 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %446, %443
  store i32 %447, i32* %445, align 4
  br label %448

448:                                              ; preds = %442, %432
  br label %449

449:                                              ; preds = %448, %431
  %450 = load i32, i32* %6, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %6, align 4
  br label %414

452:                                              ; preds = %414
  %453 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %454 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = icmp eq i32 %455, 16
  br i1 %456, label %457, label %459

457:                                              ; preds = %452
  %458 = call i32 @NS_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %459

459:                                              ; preds = %457, %452
  %460 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %461 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = lshr i64 %463, 20
  %465 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %464)
  %466 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %467 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %469)
  %471 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %472 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 2
  %474 = load i64, i64* %473, align 8
  %475 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %474)
  %476 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %477 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %477, i32 0, i32 3
  %479 = load i32, i32* %478, align 8
  %480 = ashr i32 %479, 10
  %481 = sext i32 %480 to i64
  %482 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %481)
  %483 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %484 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 5
  %486 = load i64, i64* %485, align 8
  %487 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %486)
  %488 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %489 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %488, i32 0, i32 3
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 9
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %492)
  %494 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %495 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 %497)
  %499 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %500 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 6
  %502 = load i64, i64* %501, align 8
  %503 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i64 %502)
  %504 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %505 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %504, i32 0, i32 3
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 7
  %507 = load i64, i64* %506, align 8
  %508 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 %507)
  %509 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %510 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %509, i32 0, i32 3
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 8
  %512 = load i64, i64* %511, align 8
  %513 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %512)
  %514 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %515 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %514, i32 0, i32 3
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 13
  %517 = load i64, i64* %516, align 8
  %518 = lshr i64 %517, 10
  %519 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i64 %518)
  %520 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %521 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %520, i32 0, i32 3
  %522 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %521, i32 0, i32 11
  %523 = load i32, i32* %522, align 8
  %524 = sext i32 %523 to i64
  %525 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 %524)
  %526 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %527 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %526, i32 0, i32 3
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 12
  %529 = load i32, i32* %528, align 4
  %530 = sext i32 %529 to i64
  %531 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i64 %530)
  %532 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %533 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  %536 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 %535)
  %537 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %538 = call i32 @alloc_device(%struct.nandsim* %537)
  store i32 %538, i32* %7, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %459
  br label %576

541:                                              ; preds = %459
  %542 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %543 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %542, i32 0, i32 3
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 4
  %545 = load i64, i64* %544, align 8
  %546 = trunc i64 %545 to i32
  %547 = load i32, i32* @GFP_KERNEL, align 4
  %548 = call i32 @kmalloc(i32 %546, i32 %547)
  %549 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %550 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %549, i32 0, i32 4
  %551 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %550, i32 0, i32 0
  store i32 %548, i32* %551, align 8
  %552 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %553 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %552, i32 0, i32 4
  %554 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %565, label %557

557:                                              ; preds = %541
  %558 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %559 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %558, i32 0, i32 3
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 4
  %561 = load i64, i64* %560, align 8
  %562 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0), i64 %561)
  %563 = load i32, i32* @ENOMEM, align 4
  %564 = sub nsw i32 0, %563
  store i32 %564, i32* %7, align 4
  br label %576

565:                                              ; preds = %541
  %566 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %567 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %566, i32 0, i32 4
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %571 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %570, i32 0, i32 3
  %572 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %571, i32 0, i32 4
  %573 = load i64, i64* %572, align 8
  %574 = trunc i64 %573 to i32
  %575 = call i32 @memset(i32 %569, i32 255, i32 %574)
  store i32 0, i32* %2, align 4
  br label %580

576:                                              ; preds = %557, %540, %379, %312, %281
  %577 = load %struct.nandsim*, %struct.nandsim** %5, align 8
  %578 = call i32 @free_device(%struct.nandsim* %577)
  %579 = load i32, i32* %7, align 4
  store i32 %579, i32* %2, align 4
  br label %580

580:                                              ; preds = %576, %565, %215, %22
  %581 = load i32, i32* %2, align 4
  ret i32 %581
}

declare dso_local i64 @NS_IS_INITIALIZED(%struct.nandsim*) #1

declare dso_local i32 @NS_ERR(i8*, ...) #1

declare dso_local i64 @divide(i64, i64) #1

declare dso_local i8* @ffs(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i8* @get_partition_name(i32) #1

declare dso_local i32 @NS_WARN(i8*) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @alloc_device(%struct.nandsim*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @free_device(%struct.nandsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
