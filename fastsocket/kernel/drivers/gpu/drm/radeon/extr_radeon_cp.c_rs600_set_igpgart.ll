; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_rs600_set_igpgart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_rs600_set_igpgart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"programming igp gart %08X %08lX %08X\0A\00", align 1
@RS600_MC_PT0_CNTL = common dso_local global i64 0, align 8
@RS600_MC_PT0_CLIENT0_CNTL = common dso_local global i64 0, align 8
@RS600_ENABLE_TRANSLATION_MODE_OVERRIDE = common dso_local global i32 0, align 4
@RS600_SYSTEM_ACCESS_MODE_IN_SYS = common dso_local global i32 0, align 4
@RS600_SYSTEM_APERTURE_UNMAPPED_ACCESS_PASSTHROUGH = common dso_local global i32 0, align 4
@RS600_ENABLE_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@RS600_MC_PT0_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@RS600_ENABLE_PAGE_TABLE = common dso_local global i32 0, align 4
@RS600_PAGE_TABLE_TYPE_FLAT = common dso_local global i32 0, align 4
@RS600_MC_PT0_CONTEXT0_FLAT_BASE_ADDR = common dso_local global i64 0, align 8
@RS600_MC_PT0_CONTEXT0_FLAT_START_ADDR = common dso_local global i64 0, align 8
@RS600_MC_PT0_CONTEXT0_FLAT_END_ADDR = common dso_local global i64 0, align 8
@RS600_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR = common dso_local global i64 0, align 8
@RS600_MC_PT0_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i64 0, align 8
@RS600_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i64 0, align 8
@RS600_ENABLE_PT = common dso_local global i32 0, align 4
@RS600_MC_CNTL1 = common dso_local global i64 0, align 8
@RS600_ENABLE_PAGE_TABLES = common dso_local global i32 0, align 4
@RS600_INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@RS600_INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @rs600_set_igpgart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs600_set_igpgart(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %161

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %17, i32 %20)
  %22 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %23 = call i32 @RS600_EFFECTIVE_L2_CACHE_SIZE(i32 6)
  %24 = call i32 @RS600_EFFECTIVE_L2_QUEUE_SIZE(i32 6)
  %25 = or i32 %23, %24
  %26 = call i32 @IGP_WRITE_MCIND(i64 %22, i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %47, %9
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 19
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i64, i64* @RS600_MC_PT0_CLIENT0_CNTL, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* @RS600_ENABLE_TRANSLATION_MODE_OVERRIDE, align 4
  %36 = load i32, i32* @RS600_SYSTEM_ACCESS_MODE_IN_SYS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RS600_SYSTEM_APERTURE_UNMAPPED_ACCESS_PASSTHROUGH, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @RS600_EFFECTIVE_L1_CACHE_SIZE(i32 3)
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RS600_ENABLE_FRAGMENT_PROCESSING, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @RS600_EFFECTIVE_L1_QUEUE_SIZE(i32 3)
  %45 = or i32 %43, %44
  %46 = call i32 @IGP_WRITE_MCIND(i64 %34, i32 %45)
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i64, i64* @RS600_MC_PT0_CONTEXT0_CNTL, align 8
  %52 = load i32, i32* @RS600_ENABLE_PAGE_TABLE, align 4
  %53 = load i32, i32* @RS600_PAGE_TABLE_TYPE_FLAT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @IGP_WRITE_MCIND(i64 %51, i32 %54)
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %65, %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64, i64* @RS600_MC_PT0_CONTEXT0_CNTL, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call i32 @IGP_WRITE_MCIND(i64 %63, i32 0)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %56

68:                                               ; preds = %56
  %69 = load i64, i64* @RS600_MC_PT0_CONTEXT0_FLAT_BASE_ADDR, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IGP_WRITE_MCIND(i64 %69, i32 %73)
  %75 = load i64, i64* @RS600_MC_PT0_CONTEXT0_FLAT_START_ADDR, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IGP_WRITE_MCIND(i64 %75, i32 %78)
  %80 = load i64, i64* @RS600_MC_PT0_CONTEXT0_FLAT_END_ADDR, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @IGP_WRITE_MCIND(i64 %80, i32 %88)
  %90 = load i64, i64* @RS600_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR, align 8
  %91 = call i32 @IGP_WRITE_MCIND(i64 %90, i32 0)
  %92 = load i64, i64* @RS600_MC_PT0_SYSTEM_APERTURE_LOW_ADDR, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @IGP_WRITE_MCIND(i64 %92, i32 %95)
  %97 = load i64, i64* @RS600_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @IGP_WRITE_MCIND(i64 %97, i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %109 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %107, i64 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @RS600_ENABLE_PT, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @IGP_WRITE_MCIND(i64 %110, i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = load i64, i64* @RS600_MC_CNTL1, align 8
  %117 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %115, i64 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i64, i64* @RS600_MC_CNTL1, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @RS600_ENABLE_PAGE_TABLES, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @IGP_WRITE_MCIND(i64 %118, i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %125 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %123, i64 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* @RS600_INVALIDATE_ALL_L1_TLBS, align 4
  %127 = load i32, i32* @RS600_INVALIDATE_L2_CACHE, align 4
  %128 = or i32 %126, %127
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @IGP_WRITE_MCIND(i64 %132, i32 %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %137 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %135, i64 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @RS600_INVALIDATE_ALL_L1_TLBS, align 4
  %139 = load i32, i32* @RS600_INVALIDATE_L2_CACHE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @IGP_WRITE_MCIND(i64 %143, i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %148 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %146, i64 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @RS600_INVALIDATE_ALL_L1_TLBS, align 4
  %150 = load i32, i32* @RS600_INVALIDATE_L2_CACHE, align 4
  %151 = or i32 %149, %150
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %5, align 4
  %155 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @IGP_WRITE_MCIND(i64 %155, i32 %156)
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %159 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %160 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %158, i64 %159)
  store i32 %160, i32* %5, align 4
  br label %174

161:                                              ; preds = %2
  %162 = load i64, i64* @RS600_MC_PT0_CNTL, align 8
  %163 = call i32 @IGP_WRITE_MCIND(i64 %162, i32 0)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = load i64, i64* @RS600_MC_CNTL1, align 8
  %166 = call i32 @IGP_READ_MCIND(%struct.TYPE_6__* %164, i64 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @RS600_ENABLE_PAGE_TABLES, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %5, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load i64, i64* @RS600_MC_CNTL1, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @IGP_WRITE_MCIND(i64 %171, i32 %172)
  br label %174

174:                                              ; preds = %161, %68
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32) #1

declare dso_local i32 @IGP_WRITE_MCIND(i64, i32) #1

declare dso_local i32 @RS600_EFFECTIVE_L2_CACHE_SIZE(i32) #1

declare dso_local i32 @RS600_EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @RS600_EFFECTIVE_L1_CACHE_SIZE(i32) #1

declare dso_local i32 @RS600_EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @IGP_READ_MCIND(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
