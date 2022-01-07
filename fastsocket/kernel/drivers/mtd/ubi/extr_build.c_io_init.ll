; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_io_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"multiple regions, not implemented\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"min. I/O unit (%d) is not power of 2\00", align 1
@UBI_EC_HDR_SIZE = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"min_io_size      %d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"hdrs_min_io_size %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ec_hdr_alsize    %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"vid_hdr_alsize   %d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"vid_hdr_offset   %d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"vid_hdr_aloffset %d\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"vid_hdr_shift    %d\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"leb_start        %d\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"unaligned VID header shift %d\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"bad VID header (%d) or data offsets (%d)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"max_erroneous    %d\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"EC and VID headers are in the same minimal I/O unit, switch to read-only mode\00", align 1
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [59 x i8] c"MTD device %d is write-protected, attach in read-only mode\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"physical eraseblock size:   %d bytes (%d KiB)\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"logical eraseblock size:    %d bytes\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"smallest flash I/O unit:    %d\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"sub-page size:              %d\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"VID header offset:          %d (aligned %d)\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"data offset:                %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*)* @io_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_init(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %4 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %5 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %4, i32 0, i32 15
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %399

14:                                               ; preds = %1
  %15 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %399

22:                                               ; preds = %14
  %23 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 15
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 15
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @mtd_div_by_eb(i32 %34, %struct.TYPE_2__* %37)
  %39 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 15
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 15
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %22
  %55 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %56 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %55, i32 0, i32 15
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %54, %22
  %65 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %66 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %65, i32 0, i32 15
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MTD_NORFLASH, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %74 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %73, i32 0, i32 15
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 @ubi_assert(i32 %79)
  %81 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 4
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %72, %64
  %84 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %85 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %84, i32 0, i32 15
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %90 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %92 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %91, i32 0, i32 15
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %97 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %96, i32 0, i32 15
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %95, %100
  %102 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %103 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %105 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @is_power_of_2(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %83
  %110 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %399

116:                                              ; preds = %83
  %117 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %118 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @ubi_assert(i32 %121)
  %123 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %124 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %127 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 %125, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @ubi_assert(i32 %130)
  %132 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %133 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %136 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = srem i32 %134, %137
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @ubi_assert(i32 %140)
  %142 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %143 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %144 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @ALIGN(i32 %142, i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %149 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %151 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %152 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @ALIGN(i32 %150, i32 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %157 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 8
  %158 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %159 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %163 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %167 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %171 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  %174 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %175 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %116
  %179 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %180 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %183 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %185 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %184, i32 0, i32 0
  store i32 %181, i32* %185, align 8
  br label %207

186:                                              ; preds = %116
  %187 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %188 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %191 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = xor i32 %193, -1
  %195 = and i32 %189, %194
  %196 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %197 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 4
  %198 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %199 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %202 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %200, %203
  %205 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %206 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %205, i32 0, i32 10
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %186, %178
  %208 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %209 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %212 = add nsw i32 %210, %211
  %213 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %214 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %213, i32 0, i32 11
  store i32 %212, i32* %214, align 4
  %215 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %216 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %215, i32 0, i32 11
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %219 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @ALIGN(i32 %217, i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %224 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %223, i32 0, i32 11
  store i32 %222, i32* %224, align 4
  %225 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %226 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %230 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %231)
  %233 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %234 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %235)
  %237 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %238 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %239)
  %241 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %242 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 8
  %244 = srem i32 %243, 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %207
  %247 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %248 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %2, align 4
  br label %399

253:                                              ; preds = %207
  %254 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %255 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %289, label %259

259:                                              ; preds = %253
  %260 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %261 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %260, i32 0, i32 11
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %264 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %267 = add nsw i32 %265, %266
  %268 = icmp slt i32 %262, %267
  br i1 %268, label %289, label %269

269:                                              ; preds = %259
  %270 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %271 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %270, i32 0, i32 11
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %274 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %277 = sub nsw i32 %275, %276
  %278 = icmp sgt i32 %272, %277
  br i1 %278, label %289, label %279

279:                                              ; preds = %269
  %280 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %281 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %280, i32 0, i32 11
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %284 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %285, 1
  %287 = and i32 %282, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %279, %269, %259, %253
  %290 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %291 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %294 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %292, i32 %295)
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %2, align 4
  br label %399

299:                                              ; preds = %279
  %300 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %301 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = sdiv i32 %302, 10
  %304 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %305 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %304, i32 0, i32 12
  store i32 %303, i32* %305, align 8
  %306 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %307 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %306, i32 0, i32 12
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %308, 16
  br i1 %309, label %310, label %313

310:                                              ; preds = %299
  %311 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %312 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %311, i32 0, i32 12
  store i32 16, i32* %312, align 8
  br label %313

313:                                              ; preds = %310, %299
  %314 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %315 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @dbg_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %316)
  %318 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %319 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %322 = add nsw i32 %320, %321
  %323 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %324 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = icmp sle i32 %322, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %313
  %328 = call i32 @ubi_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.13, i64 0, i64 0))
  %329 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %330 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %329, i32 0, i32 13
  store i32 1, i32* %330, align 4
  br label %331

331:                                              ; preds = %327, %313
  %332 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %333 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %336 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %335, i32 0, i32 11
  %337 = load i32, i32* %336, align 4
  %338 = sub nsw i32 %334, %337
  %339 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %340 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %339, i32 0, i32 14
  store i32 %338, i32* %340, align 8
  %341 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %342 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %341, i32 0, i32 15
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @MTD_WRITEABLE, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %331
  %350 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %351 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %350, i32 0, i32 15
  %352 = load %struct.TYPE_2__*, %struct.TYPE_2__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0), i32 %354)
  %356 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %357 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %356, i32 0, i32 13
  store i32 1, i32* %357, align 4
  br label %358

358:                                              ; preds = %349, %331
  %359 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %360 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %363 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = ashr i32 %364, 10
  %366 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %361, i32 %365)
  %367 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %368 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %367, i32 0, i32 14
  %369 = load i32, i32* %368, align 8
  %370 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %369)
  %371 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %372 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %373)
  %375 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %376 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %379 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %377, %380
  br i1 %381, label %382, label %387

382:                                              ; preds = %358
  %383 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %384 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %383, i32 0, i32 6
  %385 = load i32, i32* %384, align 8
  %386 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %385)
  br label %387

387:                                              ; preds = %382, %358
  %388 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %389 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %392 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %391, i32 0, i32 9
  %393 = load i32, i32* %392, align 4
  %394 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 %390, i32 %393)
  %395 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %396 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %395, i32 0, i32 11
  %397 = load i32, i32* %396, align 4
  %398 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %397)
  store i32 0, i32* %2, align 4
  br label %399

399:                                              ; preds = %387, %289, %246, %109, %19, %10
  %400 = load i32, i32* %2, align 4
  ret i32 %400
}

declare dso_local i32 @ubi_err(i8*, ...) #1

declare dso_local i32 @mtd_div_by_eb(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_msg(i8*, i32) #1

declare dso_local i32 @ubi_warn(i8*) #1

declare dso_local i32 @ubi_msg(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
