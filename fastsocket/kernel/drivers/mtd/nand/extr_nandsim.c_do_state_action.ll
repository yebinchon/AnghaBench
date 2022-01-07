; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_do_state_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_do_state_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ACTION_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"do_state_action: wrong page number (%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"do_state_action: column number is too large\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"do_state_action: (ACTION_CPY:) copy %d bytes to int buf, raw offset %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"read page %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"read page %d (second half)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"read OOB of page %d\0A\00", align 1
@access_delay = common dso_local global i32 0, align 4
@input_cycle = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"do_state_action: device is write-protected, ignore sector erase\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"do_state_action: wrong sector address (%#x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"do_state_action: erase sector at address %#x, off = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"erase sector %u\0A\00", align 1
@erase_delay = common dso_local global i32 0, align 4
@erase_block_wear = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"simulating erase failure in erase block %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"do_state_action: device is write-protected, programm\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"do_state_action: too few bytes were input (%d instead of %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"do_state_action: copy %d bytes from int buf to (%#x, %#x), raw off = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"programm page %d\0A\00", align 1
@programm_delay = common dso_local global i32 0, align 4
@output_cycle = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"simulating write failure in page %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"do_state_action: set internal offset to 0\0A\00", align 1
@OPT_PAGE512_8BIT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [82 x i8] c"do_state_action: BUG! can't skip half of page for non-512byte page size 8x chips\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"do_state_action: set internal offset to %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"do_state_action: BUG! unknown action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*, i32)* @do_state_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_state_action(%struct.nandsim* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nandsim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %11 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 8
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 2
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @ACTION_MASK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 129
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %23 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %27 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %25, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %33 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @NS_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %35)
  store i32 -1, i32* %3, align 4
  br label %383

37:                                               ; preds = %21, %2
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %380 [
    i32 133, label %39
    i32 129, label %133
    i32 130, label %248
    i32 128, label %338
    i32 132, label %343
    i32 131, label %367
  ]

39:                                               ; preds = %37
  %40 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %41 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %45 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %49 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %47, %51
  %53 = icmp sge i32 %43, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %382

56:                                               ; preds = %39
  %57 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %58 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %62 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %60, %64
  %66 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %67 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %65, %69
  store i32 %70, i32* %6, align 4
  %71 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @read_page(%struct.nandsim* %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %76 = call i32 @NS_RAW_OFFSET(%struct.nandsim* %75)
  %77 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %78 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %76, %80
  %82 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %81)
  %83 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %84 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %56
  %89 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %90 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @NS_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %120

95:                                               ; preds = %56
  %96 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %97 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %101 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %107 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @NS_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %119

112:                                              ; preds = %95
  %113 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %114 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @NS_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %88
  %121 = load i32, i32* @access_delay, align 4
  %122 = call i32 @NS_UDELAY(i32 %121)
  %123 = load i32, i32* @input_cycle, align 4
  %124 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %125 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %123, %127
  %129 = sdiv i32 %128, 1000
  %130 = load i32, i32* %7, align 4
  %131 = sdiv i32 %129, %130
  %132 = call i32 @NS_UDELAY(i32 %131)
  br label %382

133:                                              ; preds = %37
  %134 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %135 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %383

141:                                              ; preds = %133
  %142 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %143 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %147 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %151 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = zext i32 %153 to i64
  %155 = sub nsw i64 %149, %154
  %156 = icmp sge i64 %145, %155
  br i1 %156, label %171, label %157

157:                                              ; preds = %141
  %158 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %159 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %163 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  %167 = xor i32 %166, -1
  %168 = sext i32 %167 to i64
  %169 = and i64 %161, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %157, %141
  %172 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %173 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %175)
  store i32 -1, i32* %3, align 4
  br label %383

177:                                              ; preds = %157
  %178 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %179 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %183 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %187 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %185, %189
  %191 = mul nsw i32 8, %190
  %192 = zext i32 %191 to i64
  %193 = shl i64 %181, %192
  %194 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %195 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = or i64 %193, %198
  %200 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %201 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i64 %199, i64* %202, align 8
  %203 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %204 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  store i32 0, i32* %205, align 8
  %206 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %207 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %211 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %215 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = sub i32 %213, %217
  %219 = zext i32 %218 to i64
  %220 = ashr i64 %209, %219
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %8, align 4
  %222 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %223 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %227 = call i32 @NS_RAW_OFFSET(%struct.nandsim* %226)
  %228 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %225, i32 %227)
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @NS_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %229)
  %231 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %232 = call i32 @erase_sector(%struct.nandsim* %231)
  %233 = load i32, i32* @erase_delay, align 4
  %234 = call i32 @NS_MDELAY(i32 %233)
  %235 = load i32, i32* @erase_block_wear, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %177
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @update_wear(i32 %238)
  br label %240

240:                                              ; preds = %237, %177
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @erase_error(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %8, align 4
  %246 = call i32 (i8*, ...) @NS_WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %245)
  store i32 -1, i32* %3, align 4
  br label %383

247:                                              ; preds = %240
  br label %382

248:                                              ; preds = %37
  %249 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %250 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = call i32 (i8*, ...) @NS_WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %383

256:                                              ; preds = %248
  %257 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %258 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %262 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %260, %264
  %266 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %267 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %265, %269
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %273 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %271, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %256
  %278 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %279 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %281, i32 %282)
  store i32 -1, i32* %3, align 4
  br label %383

284:                                              ; preds = %256
  %285 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @prog_page(%struct.nandsim* %285, i32 %286)
  %288 = icmp eq i32 %287, -1
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  store i32 -1, i32* %3, align 4
  br label %383

290:                                              ; preds = %284
  %291 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %292 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %6, align 4
  %297 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %298 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %302 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %306 = call i32 @NS_RAW_OFFSET(%struct.nandsim* %305)
  %307 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %308 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %306, %310
  %312 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 %296, i64 %300, i32 %304, i32 %311)
  %313 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %314 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = trunc i64 %316 to i32
  %318 = call i32 @NS_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %317)
  %319 = load i32, i32* @programm_delay, align 4
  %320 = call i32 @NS_UDELAY(i32 %319)
  %321 = load i32, i32* @output_cycle, align 4
  %322 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %323 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = mul nsw i32 %321, %325
  %327 = sdiv i32 %326, 1000
  %328 = load i32, i32* %7, align 4
  %329 = sdiv i32 %327, %328
  %330 = call i32 @NS_UDELAY(i32 %329)
  %331 = load i32, i32* %9, align 4
  %332 = call i32 @write_error(i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %290
  %335 = load i32, i32* %9, align 4
  %336 = call i32 (i8*, ...) @NS_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %335)
  store i32 -1, i32* %3, align 4
  br label %383

337:                                              ; preds = %290
  br label %382

338:                                              ; preds = %37
  %339 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %340 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %341 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 2
  store i32 0, i32* %342, align 4
  br label %382

343:                                              ; preds = %37
  %344 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %345 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @OPT_PAGE512_8BIT, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %343
  %351 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %383

352:                                              ; preds = %343
  %353 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %354 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = sdiv i32 %356, 2
  %358 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %357)
  %359 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %360 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = sdiv i32 %362, 2
  %364 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %365 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 2
  store i32 %363, i32* %366, align 4
  br label %382

367:                                              ; preds = %37
  %368 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %369 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %371)
  %373 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %374 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %378 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 2
  store i32 %376, i32* %379, align 4
  br label %382

380:                                              ; preds = %37
  %381 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %367, %352, %338, %337, %247, %120, %54
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %382, %350, %334, %289, %277, %254, %244, %171, %139, %31
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @NS_WARN(i8*, ...) #1

declare dso_local i32 @NS_ERR(i8*, ...) #1

declare dso_local i32 @read_page(%struct.nandsim*, i32) #1

declare dso_local i32 @NS_DBG(i8*, ...) #1

declare dso_local i32 @NS_RAW_OFFSET(%struct.nandsim*) #1

declare dso_local i32 @NS_LOG(i8*, i32) #1

declare dso_local i32 @NS_UDELAY(i32) #1

declare dso_local i32 @erase_sector(%struct.nandsim*) #1

declare dso_local i32 @NS_MDELAY(i32) #1

declare dso_local i32 @update_wear(i32) #1

declare dso_local i32 @erase_error(i32) #1

declare dso_local i32 @prog_page(%struct.nandsim*, i32) #1

declare dso_local i32 @write_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
