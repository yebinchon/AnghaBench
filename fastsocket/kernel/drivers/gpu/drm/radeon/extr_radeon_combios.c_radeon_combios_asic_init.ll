; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_asic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_asic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@COMBIOS_ASIC_INIT_1_TABLE = common dso_local global i32 0, align 4
@COMBIOS_PLL_INIT_TABLE = common dso_local global i32 0, align 4
@COMBIOS_ASIC_INIT_2_TABLE = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@COMBIOS_ASIC_INIT_4_TABLE = common dso_local global i32 0, align 4
@COMBIOS_RAM_RESET_TABLE = common dso_local global i32 0, align 4
@COMBIOS_ASIC_INIT_3_TABLE = common dso_local global i32 0, align 4
@CHIP_RS480 = common dso_local global i64 0, align 8
@COMBIOS_DYN_CLK_1_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_combios_asic_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  store %struct.radeon_device* %7, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %156

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = load i32, i32* @COMBIOS_ASIC_INIT_1_TABLE, align 4
  %16 = call i64 @combios_get_table_offset(%struct.drm_device* %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @combios_parse_mmio_table(%struct.drm_device* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = load i32, i32* @COMBIOS_PLL_INIT_TABLE, align 4
  %26 = call i64 @combios_get_table_offset(%struct.drm_device* %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @combios_parse_pll_table(%struct.drm_device* %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = load i32, i32* @COMBIOS_ASIC_INIT_2_TABLE, align 4
  %36 = call i64 @combios_get_table_offset(%struct.drm_device* %34, i32 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @combios_parse_mmio_table(%struct.drm_device* %40, i64 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RADEON_IS_IGP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %83, label %50

50:                                               ; preds = %43
  %51 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %52 = load i32, i32* @COMBIOS_ASIC_INIT_4_TABLE, align 4
  %53 = call i64 @combios_get_table_offset(%struct.drm_device* %51, i32 %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @combios_parse_mmio_table(%struct.drm_device* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %62 = load i32, i32* @COMBIOS_RAM_RESET_TABLE, align 4
  %63 = call i64 @combios_get_table_offset(%struct.drm_device* %61, i32 %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @combios_parse_ram_reset_table(%struct.drm_device* %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %72 = load i32, i32* @COMBIOS_ASIC_INIT_3_TABLE, align 4
  %73 = call i64 @combios_get_table_offset(%struct.drm_device* %71, i32 %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @combios_parse_mmio_table(%struct.drm_device* %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %82 = call i32 @combios_write_ram_size(%struct.drm_device* %81)
  br label %83

83:                                               ; preds = %80, %43
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHIP_RS480, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 4156
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 12427
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %156

104:                                              ; preds = %96, %89, %83
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CHIP_RS480, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 4156
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 12452
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %156

125:                                              ; preds = %117, %110, %104
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CHIP_RS480, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %125
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 4156
  br i1 %137, label %138, label %146

138:                                              ; preds = %131
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 12462
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %156

146:                                              ; preds = %138, %131, %125
  %147 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %148 = load i32, i32* @COMBIOS_DYN_CLK_1_TABLE, align 4
  %149 = call i64 @combios_get_table_offset(%struct.drm_device* %147, i32 %148)
  store i64 %149, i64* %4, align 8
  %150 = load i64, i64* %4, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %154 = load i64, i64* %4, align 8
  %155 = call i32 @combios_parse_pll_table(%struct.drm_device* %153, i64 %154)
  br label %156

156:                                              ; preds = %12, %103, %124, %145, %152, %146
  ret void
}

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @combios_parse_mmio_table(%struct.drm_device*, i64) #1

declare dso_local i32 @combios_parse_pll_table(%struct.drm_device*, i64) #1

declare dso_local i32 @combios_parse_ram_reset_table(%struct.drm_device*, i64) #1

declare dso_local i32 @combios_write_ram_size(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
