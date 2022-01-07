; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r420.c_r420_pm_init_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r420.c_r420_pm_init_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@PM_PROFILE_DEFAULT_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_MID_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r420_pm_init_profile(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %6, i32* %13, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %17, i32* %24, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %105, i32* %112, align 4
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32 %137, i32* %144, align 4
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i32 %169, i32* %176, align 4
  %177 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store i64 0, i64* %190, align 8
  %191 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i32 %201, i32* %208, align 4
  %209 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %210 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  store i64 0, i64* %215, align 8
  %216 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
