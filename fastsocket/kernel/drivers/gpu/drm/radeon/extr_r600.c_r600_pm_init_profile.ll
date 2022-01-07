; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pm_init_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pm_init_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@CHIP_R600 = common dso_local global i64 0, align 8
@PM_PROFILE_DEFAULT_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_MID_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i64 0, align 8
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_pm_init_profile(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CHIP_R600, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %262

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %13, i32* %20, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %24, i32* %31, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %96, i32* %103, align 4
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 %121, i32* %128, align 8
  %129 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 8
  %165 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  store i32 %168, i32* %175, align 4
  %176 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %177 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  store i64 0, i64* %182, align 8
  %183 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i32 0, i32* %189, align 8
  %190 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32 %193, i32* %200, align 8
  %201 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  store i32 %204, i32* %211, align 4
  %212 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  store i64 0, i64* %218, align 8
  %219 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  store i32 0, i32* %225, align 8
  %226 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  store i32 %229, i32* %236, align 8
  %237 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  store i32 %240, i32* %247, align 4
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %250, align 8
  %252 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 3
  store i64 0, i64* %254, align 8
  %255 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %256 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 2
  store i32 0, i32* %261, align 8
  br label %727

262:                                              ; preds = %1
  %263 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %266, 4
  br i1 %267, label %268, label %473

268:                                              ; preds = %262
  %269 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %270 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %274 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %275, align 8
  %277 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  store i32 %272, i32* %279, align 8
  %280 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %281 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %286, align 8
  %288 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  store i32 %283, i32* %290, align 4
  %291 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %292 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %293, align 8
  %295 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 3
  store i64 0, i64* %297, align 8
  %298 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %299 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %300, align 8
  %302 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 2
  store i32 2, i32* %304, align 8
  %305 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %307, align 8
  %309 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  store i32 1, i32* %311, align 8
  %312 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %313 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %314, align 8
  %316 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  store i32 1, i32* %318, align 4
  %319 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %320 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %321, align 8
  %323 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 3
  store i64 0, i64* %325, align 8
  %326 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %328, align 8
  %330 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 2
  store i32 0, i32* %332, align 8
  %333 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %335, align 8
  %337 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  %340 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %342, align 8
  %344 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 1
  store i32 1, i32* %346, align 4
  %347 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %348 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %349, align 8
  %351 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 3
  store i64 0, i64* %353, align 8
  %354 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %355 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %356, align 8
  %358 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 2
  store i32 1, i32* %360, align 8
  %361 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %362 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %363, align 8
  %365 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 0
  store i32 1, i32* %367, align 8
  %368 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %370, align 8
  %372 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 1
  store i32 1, i32* %374, align 4
  %375 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %376 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %377, align 8
  %379 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 3
  store i64 0, i64* %381, align 8
  %382 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %383 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 2
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %384, align 8
  %386 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 2
  store i32 2, i32* %388, align 8
  %389 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 2
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %391, align 8
  %393 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 0
  store i32 2, i32* %395, align 8
  %396 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %397 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %398, align 8
  %400 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 1
  store i32 2, i32* %402, align 4
  %403 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %404 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %405, align 8
  %407 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 3
  store i64 0, i64* %409, align 8
  %410 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %411 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 2
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %412, align 8
  %414 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 2
  store i32 0, i32* %416, align 8
  %417 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %418 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 2
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %419, align 8
  %421 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 0
  store i32 2, i32* %423, align 8
  %424 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %425 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %426, align 8
  %428 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 1
  store i32 2, i32* %430, align 4
  %431 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %432 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 2
  %434 = load %struct.TYPE_3__*, %struct.TYPE_3__** %433, align 8
  %435 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 3
  store i64 0, i64* %437, align 8
  %438 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %439 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 2
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %440, align 8
  %442 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 2
  store i32 1, i32* %444, align 8
  %445 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %446 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_3__*, %struct.TYPE_3__** %447, align 8
  %449 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  store i32 2, i32* %451, align 8
  %452 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %453 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 2
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %454, align 8
  %456 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 1
  store i32 2, i32* %458, align 4
  %459 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %460 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 2
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %461, align 8
  %463 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 3
  store i64 0, i64* %465, align 8
  %466 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %467 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 2
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %468, align 8
  %470 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 2
  store i32 2, i32* %472, align 8
  br label %726

473:                                              ; preds = %262
  %474 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %475 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %479 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %478, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %479, i32 0, i32 2
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** %480, align 8
  %482 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %483 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 0
  store i32 %477, i32* %484, align 8
  %485 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %486 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %490 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 2
  %492 = load %struct.TYPE_3__*, %struct.TYPE_3__** %491, align 8
  %493 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 1
  store i32 %488, i32* %495, align 4
  %496 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %497 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 2
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** %498, align 8
  %500 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 3
  store i64 0, i64* %502, align 8
  %503 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %504 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 2
  %506 = load %struct.TYPE_3__*, %struct.TYPE_3__** %505, align 8
  %507 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %508 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %508, i32 0, i32 2
  store i32 2, i32* %509, align 8
  %510 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %511 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %520

516:                                              ; preds = %473
  %517 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %518 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  %519 = call i32 @radeon_pm_get_type_index(%struct.radeon_device* %517, i32 %518, i32 0)
  store i32 %519, i32* %3, align 4
  br label %524

520:                                              ; preds = %473
  %521 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %522 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  %523 = call i32 @radeon_pm_get_type_index(%struct.radeon_device* %521, i32 %522, i32 0)
  store i32 %523, i32* %3, align 4
  br label %524

524:                                              ; preds = %520, %516
  %525 = load i32, i32* %3, align 4
  %526 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %527 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 2
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** %528, align 8
  %530 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %531 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %531, i32 0, i32 0
  store i32 %525, i32* %532, align 8
  %533 = load i32, i32* %3, align 4
  %534 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %535 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 2
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %536, align 8
  %538 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 1
  store i32 %533, i32* %540, align 4
  %541 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %542 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %541, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 2
  %544 = load %struct.TYPE_3__*, %struct.TYPE_3__** %543, align 8
  %545 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %546 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %544, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %546, i32 0, i32 3
  store i64 0, i64* %547, align 8
  %548 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %549 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 2
  %551 = load %struct.TYPE_3__*, %struct.TYPE_3__** %550, align 8
  %552 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %551, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %553, i32 0, i32 2
  store i32 0, i32* %554, align 8
  %555 = load i32, i32* %3, align 4
  %556 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %557 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 2
  %559 = load %struct.TYPE_3__*, %struct.TYPE_3__** %558, align 8
  %560 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %561 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %559, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %561, i32 0, i32 0
  store i32 %555, i32* %562, align 8
  %563 = load i32, i32* %3, align 4
  %564 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %565 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %564, i32 0, i32 2
  %566 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %565, i32 0, i32 2
  %567 = load %struct.TYPE_3__*, %struct.TYPE_3__** %566, align 8
  %568 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %569 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %567, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %569, i32 0, i32 1
  store i32 %563, i32* %570, align 4
  %571 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %572 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 2
  %574 = load %struct.TYPE_3__*, %struct.TYPE_3__** %573, align 8
  %575 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %576 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %574, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %576, i32 0, i32 3
  store i64 0, i64* %577, align 8
  %578 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %579 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %579, i32 0, i32 2
  %581 = load %struct.TYPE_3__*, %struct.TYPE_3__** %580, align 8
  %582 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %583 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %581, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %583, i32 0, i32 2
  store i32 1, i32* %584, align 8
  %585 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %586 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  %587 = call i32 @radeon_pm_get_type_index(%struct.radeon_device* %585, i32 %586, i32 0)
  store i32 %587, i32* %3, align 4
  %588 = load i32, i32* %3, align 4
  %589 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %590 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %589, i32 0, i32 2
  %591 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %590, i32 0, i32 2
  %592 = load %struct.TYPE_3__*, %struct.TYPE_3__** %591, align 8
  %593 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %594 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %592, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %594, i32 0, i32 0
  store i32 %588, i32* %595, align 8
  %596 = load i32, i32* %3, align 4
  %597 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %598 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %597, i32 0, i32 2
  %599 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %598, i32 0, i32 2
  %600 = load %struct.TYPE_3__*, %struct.TYPE_3__** %599, align 8
  %601 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %602 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %600, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %602, i32 0, i32 1
  store i32 %596, i32* %603, align 4
  %604 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %605 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %604, i32 0, i32 2
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 2
  %607 = load %struct.TYPE_3__*, %struct.TYPE_3__** %606, align 8
  %608 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %609 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %607, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %609, i32 0, i32 3
  store i64 0, i64* %610, align 8
  %611 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %612 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %611, i32 0, i32 2
  %613 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %612, i32 0, i32 2
  %614 = load %struct.TYPE_3__*, %struct.TYPE_3__** %613, align 8
  %615 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %616 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %614, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %616, i32 0, i32 2
  store i32 2, i32* %617, align 8
  %618 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %619 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %618, i32 0, i32 1
  %620 = load i32, i32* %619, align 8
  %621 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %622 = and i32 %620, %621
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %628

624:                                              ; preds = %524
  %625 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %626 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  %627 = call i32 @radeon_pm_get_type_index(%struct.radeon_device* %625, i32 %626, i32 1)
  store i32 %627, i32* %3, align 4
  br label %632

628:                                              ; preds = %524
  %629 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %630 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  %631 = call i32 @radeon_pm_get_type_index(%struct.radeon_device* %629, i32 %630, i32 1)
  store i32 %631, i32* %3, align 4
  br label %632

632:                                              ; preds = %628, %624
  %633 = load i32, i32* %3, align 4
  %634 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %635 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %634, i32 0, i32 2
  %636 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %635, i32 0, i32 2
  %637 = load %struct.TYPE_3__*, %struct.TYPE_3__** %636, align 8
  %638 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %639 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %637, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %639, i32 0, i32 0
  store i32 %633, i32* %640, align 8
  %641 = load i32, i32* %3, align 4
  %642 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %643 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %642, i32 0, i32 2
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %643, i32 0, i32 2
  %645 = load %struct.TYPE_3__*, %struct.TYPE_3__** %644, align 8
  %646 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %647 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %645, i64 %646
  %648 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %647, i32 0, i32 1
  store i32 %641, i32* %648, align 4
  %649 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %650 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %649, i32 0, i32 2
  %651 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %650, i32 0, i32 2
  %652 = load %struct.TYPE_3__*, %struct.TYPE_3__** %651, align 8
  %653 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %654 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %652, i64 %653
  %655 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %654, i32 0, i32 3
  store i64 0, i64* %655, align 8
  %656 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %657 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %656, i32 0, i32 2
  %658 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %657, i32 0, i32 2
  %659 = load %struct.TYPE_3__*, %struct.TYPE_3__** %658, align 8
  %660 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %661 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %659, i64 %660
  %662 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %661, i32 0, i32 2
  store i32 0, i32* %662, align 8
  %663 = load i32, i32* %3, align 4
  %664 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %665 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %665, i32 0, i32 2
  %667 = load %struct.TYPE_3__*, %struct.TYPE_3__** %666, align 8
  %668 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %669 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %667, i64 %668
  %670 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %669, i32 0, i32 0
  store i32 %663, i32* %670, align 8
  %671 = load i32, i32* %3, align 4
  %672 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %673 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %672, i32 0, i32 2
  %674 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %673, i32 0, i32 2
  %675 = load %struct.TYPE_3__*, %struct.TYPE_3__** %674, align 8
  %676 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %677 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %675, i64 %676
  %678 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %677, i32 0, i32 1
  store i32 %671, i32* %678, align 4
  %679 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %680 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %679, i32 0, i32 2
  %681 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %680, i32 0, i32 2
  %682 = load %struct.TYPE_3__*, %struct.TYPE_3__** %681, align 8
  %683 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %684 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %682, i64 %683
  %685 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %684, i32 0, i32 3
  store i64 0, i64* %685, align 8
  %686 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %687 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %686, i32 0, i32 2
  %688 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %687, i32 0, i32 2
  %689 = load %struct.TYPE_3__*, %struct.TYPE_3__** %688, align 8
  %690 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %691 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %689, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %691, i32 0, i32 2
  store i32 1, i32* %692, align 8
  %693 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %694 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  %695 = call i32 @radeon_pm_get_type_index(%struct.radeon_device* %693, i32 %694, i32 1)
  store i32 %695, i32* %3, align 4
  %696 = load i32, i32* %3, align 4
  %697 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %698 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %697, i32 0, i32 2
  %699 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %698, i32 0, i32 2
  %700 = load %struct.TYPE_3__*, %struct.TYPE_3__** %699, align 8
  %701 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %702 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %700, i64 %701
  %703 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %702, i32 0, i32 0
  store i32 %696, i32* %703, align 8
  %704 = load i32, i32* %3, align 4
  %705 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %706 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %705, i32 0, i32 2
  %707 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %706, i32 0, i32 2
  %708 = load %struct.TYPE_3__*, %struct.TYPE_3__** %707, align 8
  %709 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %710 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %708, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 1
  store i32 %704, i32* %711, align 4
  %712 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %713 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %712, i32 0, i32 2
  %714 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %713, i32 0, i32 2
  %715 = load %struct.TYPE_3__*, %struct.TYPE_3__** %714, align 8
  %716 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %717 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %715, i64 %716
  %718 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %717, i32 0, i32 3
  store i64 0, i64* %718, align 8
  %719 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %720 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %719, i32 0, i32 2
  %721 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %720, i32 0, i32 2
  %722 = load %struct.TYPE_3__*, %struct.TYPE_3__** %721, align 8
  %723 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %724 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %724, i32 0, i32 2
  store i32 2, i32* %725, align 8
  br label %726

726:                                              ; preds = %632, %268
  br label %727

727:                                              ; preds = %726, %9
  ret void
}

declare dso_local i32 @radeon_pm_get_type_index(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
