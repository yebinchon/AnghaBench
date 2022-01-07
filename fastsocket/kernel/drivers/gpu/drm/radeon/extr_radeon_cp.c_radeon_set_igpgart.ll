; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_set_igpgart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_set_igpgart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"programming igp gart %08X %08lX %08X\0A\00", align 1
@RS480_MC_MISC_CNTL = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i32 0, align 4
@CHIP_RS740 = common dso_local global i32 0, align 4
@RS480_GART_INDEX_REG_EN = common dso_local global i32 0, align 4
@RS690_BLOCK_GFX_D3_EN = common dso_local global i32 0, align 4
@RS480_AGP_ADDRESS_SPACE_SIZE = common dso_local global i32 0, align 4
@RS480_GART_EN = common dso_local global i32 0, align 4
@RS480_VA_SIZE_32MB = common dso_local global i32 0, align 4
@RS480_GART_FEATURE_ID = common dso_local global i32 0, align 4
@RS480_HANG_EN = common dso_local global i32 0, align 4
@RS480_TLB_ENABLE = common dso_local global i32 0, align 4
@RS480_GTW_LAC_EN = common dso_local global i32 0, align 4
@RS480_1LEVEL_GART = common dso_local global i32 0, align 4
@RS480_GART_BASE = common dso_local global i32 0, align 4
@RS480_AGP_MODE_CNTL = common dso_local global i32 0, align 4
@RS480_REQ_TYPE_SNOOP_SHIFT = common dso_local global i32 0, align 4
@RS480_REQ_TYPE_SNOOP_DIS = common dso_local global i32 0, align 4
@RS480_GART_CACHE_CNTRL = common dso_local global i32 0, align 4
@RS480_GART_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @radeon_set_igpgart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_igpgart(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %156

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %16, i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %23 = call i32 @IGP_READ_MCIND(%struct.TYPE_8__* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CHIP_RS690, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @CHIP_RS740, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31, %8
  %40 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %41 = load i32, i32* @RS480_GART_INDEX_REG_EN, align 4
  %42 = load i32, i32* @RS690_BLOCK_GFX_D3_EN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @IGP_WRITE_MCIND(i32 %40, i32 %43)
  br label %49

45:                                               ; preds = %31
  %46 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %47 = load i32, i32* @RS480_GART_INDEX_REG_EN, align 4
  %48 = call i32 @IGP_WRITE_MCIND(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* @RS480_AGP_ADDRESS_SPACE_SIZE, align 4
  %51 = load i32, i32* @RS480_GART_EN, align 4
  %52 = load i32, i32* @RS480_VA_SIZE_32MB, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @IGP_WRITE_MCIND(i32 %50, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = load i32, i32* @RS480_GART_FEATURE_ID, align 4
  %57 = call i32 @IGP_READ_MCIND(%struct.TYPE_8__* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @RS480_GART_FEATURE_ID, align 4
  %59 = load i32, i32* @RS480_HANG_EN, align 4
  %60 = load i32, i32* @RS480_TLB_ENABLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RS480_GTW_LAC_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RS480_1LEVEL_GART, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @IGP_WRITE_MCIND(i32 %58, i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -4096
  store i32 %71, i32* %5, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @upper_32_bits(i32 %75)
  %77 = and i32 %76, 255
  %78 = shl i32 %77, 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @RS480_GART_BASE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @IGP_WRITE_MCIND(i32 %81, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i32, i32* @RS480_AGP_MODE_CNTL, align 4
  %86 = call i32 @IGP_READ_MCIND(%struct.TYPE_8__* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @RS480_AGP_MODE_CNTL, align 4
  %88 = load i32, i32* @RS480_REQ_TYPE_SNOOP_SHIFT, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* @RS480_REQ_TYPE_SNOOP_DIS, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @IGP_WRITE_MCIND(i32 %87, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @radeon_write_agp_base(%struct.TYPE_8__* %93, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 33554432, i32* %99, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = and i32 %107, -65536
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 16
  %113 = or i32 %108, %112
  store i32 %113, i32* %5, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @radeon_write_agp_location(%struct.TYPE_8__* %114, i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = load i32, i32* @RS480_AGP_ADDRESS_SPACE_SIZE, align 4
  %119 = call i32 @IGP_READ_MCIND(%struct.TYPE_8__* %117, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* @RS480_AGP_ADDRESS_SPACE_SIZE, align 4
  %121 = load i32, i32* @RS480_GART_EN, align 4
  %122 = load i32, i32* @RS480_VA_SIZE_32MB, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @IGP_WRITE_MCIND(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %136, %49
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = load i32, i32* @RS480_GART_CACHE_CNTRL, align 4
  %128 = call i32 @IGP_READ_MCIND(%struct.TYPE_8__* %126, i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @RS480_GART_CACHE_INVALIDATE, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %137

134:                                              ; preds = %125
  %135 = call i32 @DRM_UDELAY(i32 1)
  br label %136

136:                                              ; preds = %134
  br i1 true, label %125, label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* @RS480_GART_CACHE_CNTRL, align 4
  %139 = load i32, i32* @RS480_GART_CACHE_INVALIDATE, align 4
  %140 = call i32 @IGP_WRITE_MCIND(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %152, %137
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = load i32, i32* @RS480_GART_CACHE_CNTRL, align 4
  %144 = call i32 @IGP_READ_MCIND(%struct.TYPE_8__* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @RS480_GART_CACHE_INVALIDATE, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %153

150:                                              ; preds = %141
  %151 = call i32 @DRM_UDELAY(i32 1)
  br label %152

152:                                              ; preds = %150
  br i1 true, label %141, label %153

153:                                              ; preds = %152, %149
  %154 = load i32, i32* @RS480_GART_CACHE_CNTRL, align 4
  %155 = call i32 @IGP_WRITE_MCIND(i32 %154, i32 0)
  br label %159

156:                                              ; preds = %2
  %157 = load i32, i32* @RS480_AGP_ADDRESS_SPACE_SIZE, align 4
  %158 = call i32 @IGP_WRITE_MCIND(i32 %157, i32 0)
  br label %159

159:                                              ; preds = %156, %153
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32) #1

declare dso_local i32 @IGP_READ_MCIND(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @IGP_WRITE_MCIND(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_write_agp_base(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @radeon_write_agp_location(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
