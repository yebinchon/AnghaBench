; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_sdio.c_ssb_sdio_get_invariants.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_sdio.c_ssb_sdio_get_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sdio_func_tuple* }
%struct.sdio_func_tuple = type { i32, i32*, i32, %struct.sdio_func_tuple* }
%struct.ssb_init_invariants = type { %struct.ssb_boardinfo, %struct.ssb_sprom }
%struct.ssb_boardinfo = type { i32 }
%struct.ssb_sprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mac tpl size\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"sromrev tpl size\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"id tpl size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"boardrev tpl size\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pa tpl size\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ccode tpl size\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ant tpl size\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"antg tpl size\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"bfl tpl size\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"leds tpl size\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"failed to fetch device invariants: %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_sdio_get_invariants(%struct.ssb_bus* %0, %struct.ssb_init_invariants* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca %struct.ssb_init_invariants*, align 8
  %6 = alloca %struct.ssb_sprom*, align 8
  %7 = alloca %struct.ssb_boardinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sdio_func_tuple*, align 8
  %10 = alloca i8*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store %struct.ssb_init_invariants* %1, %struct.ssb_init_invariants** %5, align 8
  %11 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %5, align 8
  %12 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %11, i32 0, i32 1
  store %struct.ssb_sprom* %12, %struct.ssb_sprom** %6, align 8
  %13 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %5, align 8
  %14 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %13, i32 0, i32 0
  store %struct.ssb_boardinfo* %14, %struct.ssb_boardinfo** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %15 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %16 = call i32 @memset(%struct.ssb_sprom* %15, i32 255, i32 104)
  %17 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %18 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %20 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %19, i32 0, i32 20
  store i64 0, i64* %20, align 8
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %22 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %24, align 8
  store %struct.sdio_func_tuple* %25, %struct.sdio_func_tuple** %9, align 8
  br label %26

26:                                               ; preds = %361, %2
  %27 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %28 = icmp ne %struct.sdio_func_tuple* %27, null
  br i1 %28, label %29, label %365

29:                                               ; preds = %26
  %30 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %31 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %360 [
    i32 34, label %33
    i32 128, label %74
  ]

33:                                               ; preds = %29
  %34 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %35 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %72 [
    i32 138, label %39
  ]

39:                                               ; preds = %33
  %40 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %41 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 7
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %46 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 6
  br label %51

51:                                               ; preds = %44, %39
  %52 = phi i1 [ false, %39 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @GOTO_ERROR_ON(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %56 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %10, align 8
  %60 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %61 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %60, i32 0, i32 19
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %62, i8* %63, i32 %64)
  %66 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %67 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %66, i32 0, i32 18
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @memcpy(i32 %68, i8* %69, i32 %70)
  br label %73

72:                                               ; preds = %33
  br label %73

73:                                               ; preds = %72, %51
  br label %361

74:                                               ; preds = %29
  %75 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %76 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %358 [
    i32 128, label %80
    i32 132, label %94
    i32 134, label %122
    i32 129, label %136
    i32 130, label %220
    i32 133, label %221
    i32 137, label %235
    i32 136, label %256
    i32 135, label %295
    i32 131, label %323
  ]

80:                                               ; preds = %74
  %81 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %82 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 2
  %85 = zext i1 %84 to i32
  %86 = call i32 @GOTO_ERROR_ON(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %88 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %93 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %359

94:                                               ; preds = %74
  %95 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %96 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 5
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %101 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 7
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i1 [ false, %94 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @GOTO_ERROR_ON(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %109 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %114 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = or i32 %112, %118
  %120 = load %struct.ssb_boardinfo*, %struct.ssb_boardinfo** %7, align 8
  %121 = getelementptr inbounds %struct.ssb_boardinfo, %struct.ssb_boardinfo* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %359

122:                                              ; preds = %74
  %123 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %124 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 2
  %127 = zext i1 %126 to i32
  %128 = call i32 @GOTO_ERROR_ON(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %130 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %135 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %359

136:                                              ; preds = %74
  %137 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %138 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 9
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %143 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 10
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i1 [ false, %136 ], [ %145, %141 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @GOTO_ERROR_ON(i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %150 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %151 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %156 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 8
  %161 = or i32 %154, %160
  %162 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %163 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %165 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %170 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 8
  %175 = or i32 %168, %174
  %176 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %177 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %179 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 5
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %184 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = or i32 %182, %188
  %190 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %191 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  %192 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %193 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 7
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %198 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  %199 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %200 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 7
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %205 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 4
  %206 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %207 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 8
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %212 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %211, i32 0, i32 8
  store i32 %210, i32* %212, align 8
  %213 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %214 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 8
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %219 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 4
  br label %359

220:                                              ; preds = %74
  br label %359

221:                                              ; preds = %74
  %222 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %223 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 2
  %226 = zext i1 %225 to i32
  %227 = call i32 @GOTO_ERROR_ON(i32 %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %228 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %229 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %234 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %233, i32 0, i32 10
  store i32 %232, i32* %234, align 8
  br label %359

235:                                              ; preds = %74
  %236 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %237 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 2
  %240 = zext i1 %239 to i32
  %241 = call i32 @GOTO_ERROR_ON(i32 %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %242 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %243 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %248 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %247, i32 0, i32 11
  store i32 %246, i32* %248, align 4
  %249 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %250 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %255 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %254, i32 0, i32 12
  store i32 %253, i32* %255, align 8
  br label %359

256:                                              ; preds = %74
  %257 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %258 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 2
  %261 = zext i1 %260 to i32
  %262 = call i32 @GOTO_ERROR_ON(i32 %261, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %263 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %264 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %269 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %268, i32 0, i32 17
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 4
  %271 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %272 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %277 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %276, i32 0, i32 17
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  %279 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %280 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %285 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %284, i32 0, i32 17
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 2
  store i32 %283, i32* %286, align 4
  %287 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %288 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %293 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %292, i32 0, i32 17
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 3
  store i32 %291, i32* %294, align 4
  br label %359

295:                                              ; preds = %74
  %296 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %297 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 3
  br i1 %299, label %300, label %305

300:                                              ; preds = %295
  %301 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %302 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 5
  br label %305

305:                                              ; preds = %300, %295
  %306 = phi i1 [ false, %295 ], [ %304, %300 ]
  %307 = zext i1 %306 to i32
  %308 = call i32 @GOTO_ERROR_ON(i32 %307, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %309 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %310 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %315 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 2
  %318 = load i32, i32* %317, align 4
  %319 = shl i32 %318, 8
  %320 = or i32 %313, %319
  %321 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %322 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  br label %359

323:                                              ; preds = %74
  %324 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %325 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 5
  %328 = zext i1 %327 to i32
  %329 = call i32 @GOTO_ERROR_ON(i32 %328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %330 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %331 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %336 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %335, i32 0, i32 13
  store i32 %334, i32* %336, align 4
  %337 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %338 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %343 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %342, i32 0, i32 14
  store i32 %341, i32* %343, align 8
  %344 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %345 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %350 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %349, i32 0, i32 15
  store i32 %348, i32* %350, align 4
  %351 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %352 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 4
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %357 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %356, i32 0, i32 16
  store i32 %355, i32* %357, align 8
  br label %359

358:                                              ; preds = %74
  br label %359

359:                                              ; preds = %358, %323, %305, %256, %235, %221, %220, %146, %122, %104, %80
  br label %361

360:                                              ; preds = %29
  br label %361

361:                                              ; preds = %360, %359, %73
  %362 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %9, align 8
  %363 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %362, i32 0, i32 3
  %364 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %363, align 8
  store %struct.sdio_func_tuple* %364, %struct.sdio_func_tuple** %9, align 8
  br label %26

365:                                              ; preds = %26
  store i32 0, i32* %3, align 4
  br label %373

366:                                              ; No predecessors!
  %367 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %368 = call i32 @ssb_sdio_dev(%struct.ssb_bus* %367)
  %369 = load i8*, i8** %8, align 8
  %370 = call i32 @dev_err(i32 %368, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %369)
  %371 = load i32, i32* @ENODEV, align 4
  %372 = sub nsw i32 0, %371
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %366, %365
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i32 @memset(%struct.ssb_sprom*, i32, i32) #1

declare dso_local i32 @GOTO_ERROR_ON(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @ssb_sdio_dev(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
