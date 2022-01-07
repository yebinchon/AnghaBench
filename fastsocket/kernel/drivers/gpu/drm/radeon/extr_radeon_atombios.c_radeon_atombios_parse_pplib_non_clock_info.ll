; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_non_clock_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_non_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32, i32 }

@ATOM_PPLIB_PCIE_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i8* null, align 8
@POWER_STATE_TYPE_BALANCED = common dso_local global i8* null, align 8
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i8* null, align 8
@ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE = common dso_local global i32 0, align 4
@ATOM_PPLIB_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@RADEON_PM_STATE_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i8* null, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, %struct._ATOM_PPLIB_NONCLOCK_INFO*)* @radeon_atombios_parse_pplib_non_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device* %0, i32 %1, i32 %2, %struct._ATOM_PPLIB_NONCLOCK_INFO* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %3, %struct._ATOM_PPLIB_NONCLOCK_INFO** %8, align 8
  %14 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %8, align 8
  %15 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %8, align 8
  %19 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = call i32 @radeon_atombios_get_default_voltages(%struct.radeon_device* %22, i64* %12, i64* %13)
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %24, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %33, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %47, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %105 [
    i32 130, label %59
    i32 131, label %69
    i32 128, label %79
    i32 129, label %89
  ]

59:                                               ; preds = %4
  %60 = load i8*, i8** @POWER_STATE_TYPE_BATTERY, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  store i8* %60, i8** %68, align 8
  br label %105

69:                                               ; preds = %4
  %70 = load i8*, i8** @POWER_STATE_TYPE_BALANCED, align 8
  %71 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  store i8* %70, i8** %78, align 8
  br label %105

79:                                               ; preds = %4
  %80 = load i8*, i8** @POWER_STATE_TYPE_PERFORMANCE, align 8
  %81 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  store i8* %80, i8** %88, align 8
  br label %105

89:                                               ; preds = %4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8*, i8** @POWER_STATE_TYPE_PERFORMANCE, align 8
  %96 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 5
  store i8* %95, i8** %103, align 8
  br label %104

104:                                              ; preds = %94, %89
  br label %105

105:                                              ; preds = %4, %104, %79, %69, %59
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 6
  store i32 0, i32* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %105
  %119 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %120 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %119
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %118, %105
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %307

135:                                              ; preds = %130
  %136 = load i8*, i8** @POWER_STATE_TYPE_DEFAULT, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 5
  store i8* %136, i8** %144, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %160
  %162 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %169, align 8
  %170 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %171 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %243

173:                                              ; preds = %135
  %174 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @RADEON_IS_IGP, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %243, label %180

180:                                              ; preds = %173
  %181 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 5
  store i32 %192, i32* %195, align 4
  %196 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  store i32 %207, i32* %210, align 8
  %211 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  store i64 %223, i64* %226, align 8
  %227 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  store i32 %239, i32* %242, align 8
  br label %306

243:                                              ; preds = %173, %135
  store i32 0, i32* %9, align 4
  br label %244

244:                                              ; preds = %302, %243
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %305

248:                                              ; preds = %244
  %249 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %254 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 2
  store i32 %252, i32* %265, align 4
  %266 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %271 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  store i32 %269, i32* %282, align 8
  %283 = load i64, i64* %12, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %248
  %286 = load i64, i64* %12, align 8
  %287 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %288 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  store i64 %286, i64* %300, align 8
  br label %301

301:                                              ; preds = %285, %248
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  br label %244

305:                                              ; preds = %244
  br label %306

306:                                              ; preds = %305, %180
  br label %307

307:                                              ; preds = %306, %130
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_get_default_voltages(%struct.radeon_device*, i64*, i64*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
