; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_nvbios_pll_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_nvbios_pll_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nvbios_pll = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@PLL_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"unknown pll limits version 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios* %0, i32 %1, %struct.nvbios_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_pll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvbios_pll* %2, %struct.nvbios_pll** %7, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PLL_MAX, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @pll_map_reg(%struct.nouveau_bios* %19, i32 %20, i32* %6, i32* %8, i32* %9)
  store i32 %21, i32* %11, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pll_map_type(%struct.nouveau_bios* %23, i32 %24, i32* %10, i32* %8, i32* %9)
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %739

35:                                               ; preds = %29, %26
  %36 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %37 = call i32 @memset(%struct.nvbios_pll* %36, i32 0, i32 104)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %40 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %43 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %564 [
    i32 0, label %45
    i32 16, label %46
    i32 17, label %46
    i32 32, label %153
    i32 33, label %153
    i32 48, label %320
    i32 64, label %475
  ]

45:                                               ; preds = %35
  br label %570

46:                                               ; preds = %35, %35
  %47 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 0
  %50 = call i8* @nv_ro32(%struct.nouveau_bios* %47, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %53 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 4
  %58 = call i8* @nv_ro32(%struct.nouveau_bios* %55, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %61 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 8
  %66 = call i8* @nv_ro32(%struct.nouveau_bios* %63, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %69 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 12
  %74 = call i8* @nv_ro32(%struct.nouveau_bios* %71, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %77 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 16
  %82 = call i8* @nv_ro32(%struct.nouveau_bios* %79, i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %85 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 20
  %90 = call i8* @nv_ro32(%struct.nouveau_bios* %87, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %93 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load i8*, i8** @INT_MAX, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %98 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load i8*, i8** @INT_MAX, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %103 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %106 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %105, i32 0, i32 2
  store i32 7, i32* %106, align 8
  %107 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %108 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %107, i32 0, i32 3
  store i32 6, i32* %108, align 4
  %109 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %110 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %117 [
    i32 54, label %113
  ]

113:                                              ; preds = %46
  %114 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %115 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store i32 5, i32* %116, align 4
  br label %121

117:                                              ; preds = %46
  %118 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %119 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %123 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i32 255, i32* %124, align 4
  %125 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %126 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 6
  store i32 1, i32* %127, align 4
  %128 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %129 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 7
  store i32 13, i32* %130, align 4
  %131 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %132 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  store i32 4, i32* %133, align 8
  %134 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %135 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  switch i32 %137, label %142 [
    i32 48, label %138
    i32 53, label %138
  ]

138:                                              ; preds = %121, %121
  %139 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %140 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  store i32 31, i32* %141, align 4
  br label %146

142:                                              ; preds = %121
  %143 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %144 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  store i32 40, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %148 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  store i32 1, i32* %149, align 8
  %150 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %151 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 7
  store i32 4, i32* %152, align 4
  br label %570

153:                                              ; preds = %35, %35
  %154 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 4
  %157 = call i32 @nv_ro16(%struct.nouveau_bios* %154, i32 %156)
  %158 = mul nsw i32 %157, 1000
  %159 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %160 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  %162 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 6
  %165 = call i32 @nv_ro16(%struct.nouveau_bios* %162, i32 %164)
  %166 = mul nsw i32 %165, 1000
  %167 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %168 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 8
  %173 = call i32 @nv_ro16(%struct.nouveau_bios* %170, i32 %172)
  %174 = mul nsw i32 %173, 1000
  %175 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %176 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %175, i32 0, i32 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 10
  %181 = call i32 @nv_ro16(%struct.nouveau_bios* %178, i32 %180)
  %182 = mul nsw i32 %181, 1000
  %183 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %184 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 4
  %186 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 12
  %189 = call i32 @nv_ro16(%struct.nouveau_bios* %186, i32 %188)
  %190 = mul nsw i32 %189, 1000
  %191 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %192 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 4
  %194 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 14
  %197 = call i32 @nv_ro16(%struct.nouveau_bios* %194, i32 %196)
  %198 = mul nsw i32 %197, 1000
  %199 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %200 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  store i32 %198, i32* %201, align 8
  %202 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 16
  %205 = call i32 @nv_ro16(%struct.nouveau_bios* %202, i32 %204)
  %206 = mul nsw i32 %205, 1000
  %207 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %208 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  store i32 %206, i32* %209, align 4
  %210 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 18
  %213 = call i32 @nv_ro16(%struct.nouveau_bios* %210, i32 %212)
  %214 = mul nsw i32 %213, 1000
  %215 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %216 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 3
  store i32 %214, i32* %217, align 4
  %218 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 20
  %221 = call i8* @nv_ro08(%struct.nouveau_bios* %218, i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %224 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 4
  store i32 %222, i32* %225, align 4
  %226 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 21
  %229 = call i8* @nv_ro08(%struct.nouveau_bios* %226, i32 %228)
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %232 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 5
  store i32 %230, i32* %233, align 4
  %234 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 22
  %237 = call i8* @nv_ro08(%struct.nouveau_bios* %234, i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %240 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 6
  store i32 %238, i32* %241, align 4
  %242 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 23
  %245 = call i8* @nv_ro08(%struct.nouveau_bios* %242, i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %248 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 7
  store i32 %246, i32* %249, align 4
  %250 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 24
  %253 = call i8* @nv_ro08(%struct.nouveau_bios* %250, i32 %252)
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %256 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %255, i32 0, i32 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 4
  store i32 %254, i32* %257, align 8
  %258 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 25
  %261 = call i8* @nv_ro08(%struct.nouveau_bios* %258, i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %264 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 5
  store i32 %262, i32* %265, align 4
  %266 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %267 = load i32, i32* %11, align 4
  %268 = add nsw i32 %267, 26
  %269 = call i8* @nv_ro08(%struct.nouveau_bios* %266, i32 %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %272 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %271, i32 0, i32 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 6
  store i32 %270, i32* %273, align 8
  %274 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 27
  %277 = call i8* @nv_ro08(%struct.nouveau_bios* %274, i32 %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %280 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %279, i32 0, i32 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 7
  store i32 %278, i32* %281, align 4
  %282 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 29
  %285 = call i8* @nv_ro08(%struct.nouveau_bios* %282, i32 %284)
  %286 = ptrtoint i8* %285 to i32
  %287 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %288 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 8
  %289 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %290 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %293 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  %294 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %295 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp slt i32 %297, 96
  br i1 %298, label %299, label %302

299:                                              ; preds = %153
  %300 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %301 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %300, i32 0, i32 3
  store i32 6, i32* %301, align 4
  br label %302

302:                                              ; preds = %299, %153
  %303 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, 30
  %306 = call i8* @nv_ro08(%struct.nouveau_bios* %303, i32 %305)
  %307 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %308 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %307, i32 0, i32 7
  store i8* %306, i8** %308, align 8
  %309 = load i32, i32* %9, align 4
  %310 = icmp sgt i32 %309, 34
  br i1 %310, label %311, label %319

311:                                              ; preds = %302
  %312 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 31
  %315 = call i8* @nv_ro32(%struct.nouveau_bios* %312, i32 %314)
  %316 = ptrtoint i8* %315 to i32
  %317 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %318 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %317, i32 0, i32 4
  store i32 %316, i32* %318, align 8
  br label %319

319:                                              ; preds = %311, %302
  br label %570

320:                                              ; preds = %35
  %321 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  %324 = call i32 @nv_ro16(%struct.nouveau_bios* %321, i32 %323)
  store i32 %324, i32* %11, align 4
  %325 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %326 = load i32, i32* %11, align 4
  %327 = add nsw i32 %326, 0
  %328 = call i32 @nv_ro16(%struct.nouveau_bios* %325, i32 %327)
  %329 = mul nsw i32 %328, 1000
  %330 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %331 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  store i32 %329, i32* %332, align 4
  %333 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %334 = load i32, i32* %11, align 4
  %335 = add nsw i32 %334, 2
  %336 = call i32 @nv_ro16(%struct.nouveau_bios* %333, i32 %335)
  %337 = mul nsw i32 %336, 1000
  %338 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %339 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  store i32 %337, i32* %340, align 4
  %341 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %342 = load i32, i32* %11, align 4
  %343 = add nsw i32 %342, 4
  %344 = call i32 @nv_ro16(%struct.nouveau_bios* %341, i32 %343)
  %345 = mul nsw i32 %344, 1000
  %346 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %347 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %346, i32 0, i32 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  store i32 %345, i32* %348, align 8
  %349 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %350 = load i32, i32* %11, align 4
  %351 = add nsw i32 %350, 6
  %352 = call i32 @nv_ro16(%struct.nouveau_bios* %349, i32 %351)
  %353 = mul nsw i32 %352, 1000
  %354 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %355 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %354, i32 0, i32 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 1
  store i32 %353, i32* %356, align 4
  %357 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %358 = load i32, i32* %11, align 4
  %359 = add nsw i32 %358, 8
  %360 = call i32 @nv_ro16(%struct.nouveau_bios* %357, i32 %359)
  %361 = mul nsw i32 %360, 1000
  %362 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %363 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 2
  store i32 %361, i32* %364, align 4
  %365 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 10
  %368 = call i32 @nv_ro16(%struct.nouveau_bios* %365, i32 %367)
  %369 = mul nsw i32 %368, 1000
  %370 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %371 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %370, i32 0, i32 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 2
  store i32 %369, i32* %372, align 8
  %373 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %374 = load i32, i32* %11, align 4
  %375 = add nsw i32 %374, 12
  %376 = call i32 @nv_ro16(%struct.nouveau_bios* %373, i32 %375)
  %377 = mul nsw i32 %376, 1000
  %378 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %379 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 3
  store i32 %377, i32* %380, align 4
  %381 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %382 = load i32, i32* %11, align 4
  %383 = add nsw i32 %382, 14
  %384 = call i32 @nv_ro16(%struct.nouveau_bios* %381, i32 %383)
  %385 = mul nsw i32 %384, 1000
  %386 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %387 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %386, i32 0, i32 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 3
  store i32 %385, i32* %388, align 4
  %389 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, 16
  %392 = call i8* @nv_ro08(%struct.nouveau_bios* %389, i32 %391)
  %393 = ptrtoint i8* %392 to i32
  %394 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %395 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 4
  store i32 %393, i32* %396, align 4
  %397 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %398 = load i32, i32* %11, align 4
  %399 = add nsw i32 %398, 17
  %400 = call i8* @nv_ro08(%struct.nouveau_bios* %397, i32 %399)
  %401 = ptrtoint i8* %400 to i32
  %402 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %403 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %402, i32 0, i32 5
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 5
  store i32 %401, i32* %404, align 4
  %405 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %406 = load i32, i32* %11, align 4
  %407 = add nsw i32 %406, 18
  %408 = call i8* @nv_ro08(%struct.nouveau_bios* %405, i32 %407)
  %409 = ptrtoint i8* %408 to i32
  %410 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %411 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 6
  store i32 %409, i32* %412, align 4
  %413 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %414 = load i32, i32* %11, align 4
  %415 = add nsw i32 %414, 19
  %416 = call i8* @nv_ro08(%struct.nouveau_bios* %413, i32 %415)
  %417 = ptrtoint i8* %416 to i32
  %418 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %419 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 7
  store i32 %417, i32* %420, align 4
  %421 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %422 = load i32, i32* %11, align 4
  %423 = add nsw i32 %422, 20
  %424 = call i8* @nv_ro08(%struct.nouveau_bios* %421, i32 %423)
  %425 = ptrtoint i8* %424 to i32
  %426 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %427 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %426, i32 0, i32 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 4
  store i32 %425, i32* %428, align 8
  %429 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %430 = load i32, i32* %11, align 4
  %431 = add nsw i32 %430, 21
  %432 = call i8* @nv_ro08(%struct.nouveau_bios* %429, i32 %431)
  %433 = ptrtoint i8* %432 to i32
  %434 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %435 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %434, i32 0, i32 8
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 5
  store i32 %433, i32* %436, align 4
  %437 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %438 = load i32, i32* %11, align 4
  %439 = add nsw i32 %438, 22
  %440 = call i8* @nv_ro08(%struct.nouveau_bios* %437, i32 %439)
  %441 = ptrtoint i8* %440 to i32
  %442 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %443 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %442, i32 0, i32 8
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 6
  store i32 %441, i32* %444, align 8
  %445 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %446 = load i32, i32* %11, align 4
  %447 = add nsw i32 %446, 23
  %448 = call i8* @nv_ro08(%struct.nouveau_bios* %445, i32 %447)
  %449 = ptrtoint i8* %448 to i32
  %450 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %451 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %450, i32 0, i32 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 7
  store i32 %449, i32* %452, align 4
  %453 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %454 = load i32, i32* %11, align 4
  %455 = add nsw i32 %454, 25
  %456 = call i8* @nv_ro08(%struct.nouveau_bios* %453, i32 %455)
  %457 = ptrtoint i8* %456 to i32
  %458 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %459 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %458, i32 0, i32 2
  store i32 %457, i32* %459, align 8
  %460 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %461 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %460, i32 0, i32 3
  store i32 %457, i32* %461, align 4
  %462 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %463 = load i32, i32* %11, align 4
  %464 = add nsw i32 %463, 27
  %465 = call i8* @nv_ro08(%struct.nouveau_bios* %462, i32 %464)
  %466 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %467 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %466, i32 0, i32 7
  store i8* %465, i8** %467, align 8
  %468 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 %469, 28
  %471 = call i8* @nv_ro32(%struct.nouveau_bios* %468, i32 %470)
  %472 = ptrtoint i8* %471 to i32
  %473 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %474 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %473, i32 0, i32 4
  store i32 %472, i32* %474, align 8
  br label %570

475:                                              ; preds = %35
  %476 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %477 = load i32, i32* %11, align 4
  %478 = add nsw i32 %477, 9
  %479 = call i32 @nv_ro16(%struct.nouveau_bios* %476, i32 %478)
  %480 = mul nsw i32 %479, 1000
  %481 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %482 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %481, i32 0, i32 4
  store i32 %480, i32* %482, align 8
  %483 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %484 = load i32, i32* %11, align 4
  %485 = add nsw i32 %484, 1
  %486 = call i32 @nv_ro16(%struct.nouveau_bios* %483, i32 %485)
  store i32 %486, i32* %11, align 4
  %487 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %488 = load i32, i32* %11, align 4
  %489 = add nsw i32 %488, 0
  %490 = call i32 @nv_ro16(%struct.nouveau_bios* %487, i32 %489)
  %491 = mul nsw i32 %490, 1000
  %492 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %493 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %492, i32 0, i32 5
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 0
  store i32 %491, i32* %494, align 4
  %495 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %496 = load i32, i32* %11, align 4
  %497 = add nsw i32 %496, 2
  %498 = call i32 @nv_ro16(%struct.nouveau_bios* %495, i32 %497)
  %499 = mul nsw i32 %498, 1000
  %500 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %501 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 1
  store i32 %499, i32* %502, align 4
  %503 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %504 = load i32, i32* %11, align 4
  %505 = add nsw i32 %504, 4
  %506 = call i32 @nv_ro16(%struct.nouveau_bios* %503, i32 %505)
  %507 = mul nsw i32 %506, 1000
  %508 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %509 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %508, i32 0, i32 5
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 2
  store i32 %507, i32* %510, align 4
  %511 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %512 = load i32, i32* %11, align 4
  %513 = add nsw i32 %512, 6
  %514 = call i32 @nv_ro16(%struct.nouveau_bios* %511, i32 %513)
  %515 = mul nsw i32 %514, 1000
  %516 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %517 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 3
  store i32 %515, i32* %518, align 4
  %519 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %520 = load i32, i32* %11, align 4
  %521 = add nsw i32 %520, 8
  %522 = call i8* @nv_ro08(%struct.nouveau_bios* %519, i32 %521)
  %523 = ptrtoint i8* %522 to i32
  %524 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %525 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %524, i32 0, i32 5
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 6
  store i32 %523, i32* %526, align 4
  %527 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %528 = load i32, i32* %11, align 4
  %529 = add nsw i32 %528, 9
  %530 = call i8* @nv_ro08(%struct.nouveau_bios* %527, i32 %529)
  %531 = ptrtoint i8* %530 to i32
  %532 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %533 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 7
  store i32 %531, i32* %534, align 4
  %535 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %536 = load i32, i32* %11, align 4
  %537 = add nsw i32 %536, 10
  %538 = call i8* @nv_ro08(%struct.nouveau_bios* %535, i32 %537)
  %539 = ptrtoint i8* %538 to i32
  %540 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %541 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %540, i32 0, i32 5
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 4
  store i32 %539, i32* %542, align 4
  %543 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %544 = load i32, i32* %11, align 4
  %545 = add nsw i32 %544, 11
  %546 = call i8* @nv_ro08(%struct.nouveau_bios* %543, i32 %545)
  %547 = ptrtoint i8* %546 to i32
  %548 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %549 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %548, i32 0, i32 5
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 5
  store i32 %547, i32* %550, align 4
  %551 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %552 = load i32, i32* %11, align 4
  %553 = add nsw i32 %552, 12
  %554 = call i8* @nv_ro08(%struct.nouveau_bios* %551, i32 %553)
  %555 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %556 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %555, i32 0, i32 6
  store i8* %554, i8** %556, align 8
  %557 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %558 = load i32, i32* %11, align 4
  %559 = add nsw i32 %558, 13
  %560 = call i8* @nv_ro08(%struct.nouveau_bios* %557, i32 %559)
  %561 = ptrtoint i8* %560 to i32
  %562 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %563 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %562, i32 0, i32 2
  store i32 %561, i32* %563, align 8
  br label %570

564:                                              ; preds = %35
  %565 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %566 = load i32, i32* %8, align 4
  %567 = call i32 @nv_error(%struct.nouveau_bios* %565, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %566)
  %568 = load i32, i32* @EINVAL, align 4
  %569 = sub nsw i32 0, %568
  store i32 %569, i32* %4, align 4
  br label %739

570:                                              ; preds = %475, %320, %319, %146, %45
  %571 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %572 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %571, i32 0, i32 4
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %620, label %575

575:                                              ; preds = %570
  %576 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %577 = call %struct.TYPE_8__* @nv_device(%struct.nouveau_bios* %576)
  %578 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %581 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %580, i32 0, i32 4
  store i32 %579, i32* %581, align 8
  %582 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %583 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = icmp eq i32 %585, 81
  br i1 %586, label %587, label %619

587:                                              ; preds = %575
  %588 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %589 = call i32 @nv_rd32(%struct.nouveau_bios* %588, i32 6817060)
  store i32 %589, i32* %12, align 4
  %590 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %591 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = icmp eq i32 %592, 6817032
  br i1 %593, label %594, label %598

594:                                              ; preds = %587
  %595 = load i32, i32* %12, align 4
  %596 = and i32 %595, 32
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %607, label %598

598:                                              ; preds = %594, %587
  %599 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %600 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, 6817056
  br i1 %602, label %603, label %618

603:                                              ; preds = %598
  %604 = load i32, i32* %12, align 4
  %605 = and i32 %604, 128
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %618

607:                                              ; preds = %603, %594
  %608 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %609 = call i32 @nv_rdvgac(%struct.nouveau_bios* %608, i32 0, i32 39)
  %610 = icmp slt i32 %609, 163
  br i1 %610, label %611, label %614

611:                                              ; preds = %607
  %612 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %613 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %612, i32 0, i32 4
  store i32 200000, i32* %613, align 8
  br label %617

614:                                              ; preds = %607
  %615 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %616 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %615, i32 0, i32 4
  store i32 25000, i32* %616, align 8
  br label %617

617:                                              ; preds = %614, %611
  br label %618

618:                                              ; preds = %617, %603, %598
  br label %619

619:                                              ; preds = %618, %575
  br label %620

620:                                              ; preds = %619, %570
  %621 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %622 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %621, i32 0, i32 5
  %623 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %738, label %626

626:                                              ; preds = %620
  %627 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %628 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %629 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = add nsw i32 %630, 67
  %632 = call i8* @nv_ro32(%struct.nouveau_bios* %627, i32 %631)
  %633 = ptrtoint i8* %632 to i32
  %634 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %635 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %634, i32 0, i32 5
  %636 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %635, i32 0, i32 1
  store i32 %633, i32* %636, align 4
  %637 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %638 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %639 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = add nsw i32 %640, 71
  %642 = call i8* @nv_ro32(%struct.nouveau_bios* %637, i32 %641)
  %643 = ptrtoint i8* %642 to i32
  %644 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %645 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %644, i32 0, i32 5
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %645, i32 0, i32 0
  store i32 %643, i32* %646, align 4
  %647 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %648 = call i32 @bmp_version(%struct.nouveau_bios* %647)
  %649 = icmp slt i32 %648, 1286
  br i1 %649, label %650, label %657

650:                                              ; preds = %626
  %651 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %652 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %651, i32 0, i32 5
  %653 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %652, i32 0, i32 1
  store i32 256000, i32* %653, align 4
  %654 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %655 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %654, i32 0, i32 5
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 0
  store i32 128000, i32* %656, align 4
  br label %657

657:                                              ; preds = %650, %626
  %658 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %659 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %658, i32 0, i32 5
  %660 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %659, i32 0, i32 2
  store i32 0, i32* %660, align 4
  %661 = load i8*, i8** @INT_MAX, align 8
  %662 = ptrtoint i8* %661 to i32
  %663 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %664 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %663, i32 0, i32 5
  %665 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %664, i32 0, i32 3
  store i32 %662, i32* %665, align 4
  %666 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %667 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %666, i32 0, i32 5
  %668 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %667, i32 0, i32 4
  store i32 1, i32* %668, align 4
  %669 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %670 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %669, i32 0, i32 5
  %671 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %670, i32 0, i32 5
  store i32 255, i32* %671, align 4
  %672 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %673 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %672, i32 0, i32 5
  %674 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %673, i32 0, i32 6
  store i32 1, i32* %674, align 4
  %675 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %676 = call %struct.TYPE_8__* @nv_device(%struct.nouveau_bios* %675)
  %677 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 4
  %679 = icmp eq i32 %678, 13500
  br i1 %679, label %680, label %694

680:                                              ; preds = %657
  %681 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %682 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 4
  %685 = icmp slt i32 %684, 17
  br i1 %685, label %686, label %690

686:                                              ; preds = %680
  %687 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %688 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %687, i32 0, i32 5
  %689 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %688, i32 0, i32 6
  store i32 7, i32* %689, align 4
  br label %690

690:                                              ; preds = %686, %680
  %691 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %692 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %692, i32 0, i32 7
  store i32 13, i32* %693, align 4
  br label %708

694:                                              ; preds = %657
  %695 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %696 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %695, i32 0, i32 1
  %697 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = icmp slt i32 %698, 17
  br i1 %699, label %700, label %704

700:                                              ; preds = %694
  %701 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %702 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %701, i32 0, i32 5
  %703 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %702, i32 0, i32 6
  store i32 8, i32* %703, align 4
  br label %704

704:                                              ; preds = %700, %694
  %705 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %706 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %705, i32 0, i32 5
  %707 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %706, i32 0, i32 7
  store i32 14, i32* %707, align 4
  br label %708

708:                                              ; preds = %704, %690
  %709 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %710 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %709, i32 0, i32 1
  %711 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 4
  %713 = icmp slt i32 %712, 23
  br i1 %713, label %726, label %714

714:                                              ; preds = %708
  %715 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %716 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 4
  %719 = icmp eq i32 %718, 26
  br i1 %719, label %726, label %720

720:                                              ; preds = %714
  %721 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %722 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 4
  %725 = icmp eq i32 %724, 32
  br i1 %725, label %726, label %729

726:                                              ; preds = %720, %714, %708
  %727 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %728 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %727, i32 0, i32 2
  store i32 4, i32* %728, align 8
  br label %732

729:                                              ; preds = %720
  %730 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %731 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %730, i32 0, i32 2
  store i32 5, i32* %731, align 8
  br label %732

732:                                              ; preds = %729, %726
  %733 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %734 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %733, i32 0, i32 2
  %735 = load i32, i32* %734, align 8
  %736 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %737 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %736, i32 0, i32 3
  store i32 %735, i32* %737, align 4
  br label %738

738:                                              ; preds = %732, %620
  store i32 0, i32* %4, align 4
  br label %739

739:                                              ; preds = %738, %564, %32
  %740 = load i32, i32* %4, align 4
  ret i32 %740
}

declare dso_local i32 @pll_map_reg(%struct.nouveau_bios*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pll_map_type(%struct.nouveau_bios*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_pll*, i32, i32) #1

declare dso_local i8* @nv_ro32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i8* @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_bios*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @nv_device(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_rdvgac(%struct.nouveau_bios*, i32, i32) #1

declare dso_local i32 @bmp_version(%struct.nouveau_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
