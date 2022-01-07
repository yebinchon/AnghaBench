; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_asic.c_radeon_asic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_asic.c_radeon_asic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_22__ = type { i32* }
%struct.radeon_device = type { i32, i32, i32, %struct.TYPE_24__*, i32* }

@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@r100_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@r200_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@r300_asic_pcie = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@r300_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@r420_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@radeon_legacy_get_engine_clock = common dso_local global i32 0, align 4
@radeon_legacy_set_engine_clock = common dso_local global i32 0, align 4
@radeon_legacy_get_memory_clock = common dso_local global i32 0, align 4
@radeon_legacy_set_backlight_level = common dso_local global i32 0, align 4
@rs400_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@rs600_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@rs690_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@rv515_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@r520_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@r600_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@rs780_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@rv770_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@evergreen_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@sumo_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@btc_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@cayman_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@trinity_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@si_asic = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_asic_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %5 = call i32 @radeon_register_accessor_init(%struct.radeon_device* %4)
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  store i32 2, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %155 [
    i32 172, label %22
    i32 152, label %22
    i32 162, label %22
    i32 151, label %22
    i32 161, label %22
    i32 171, label %25
    i32 150, label %25
    i32 160, label %25
    i32 149, label %25
    i32 170, label %28
    i32 169, label %28
    i32 148, label %28
    i32 147, label %28
    i32 168, label %42
    i32 167, label %42
    i32 146, label %42
    i32 159, label %76
    i32 158, label %76
    i32 157, label %79
    i32 156, label %82
    i32 155, label %82
    i32 145, label %85
    i32 166, label %88
    i32 144, label %88
    i32 143, label %88
    i32 142, label %88
    i32 165, label %88
    i32 164, label %91
    i32 141, label %91
    i32 139, label %91
    i32 140, label %91
    i32 138, label %91
    i32 137, label %91
    i32 154, label %94
    i32 153, label %94
    i32 133, label %97
    i32 135, label %97
    i32 136, label %97
    i32 134, label %97
    i32 179, label %100
    i32 163, label %100
    i32 176, label %100
    i32 178, label %100
    i32 177, label %100
    i32 174, label %114
    i32 132, label %114
    i32 131, label %114
    i32 182, label %117
    i32 129, label %117
    i32 181, label %117
    i32 180, label %131
    i32 183, label %136
    i32 130, label %141
    i32 173, label %141
    i32 128, label %141
    i32 175, label %141
  ]

22:                                               ; preds = %18, %18, %18, %18, %18
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 3
  store %struct.TYPE_24__* @r100_asic, %struct.TYPE_24__** %24, align 8
  br label %158

25:                                               ; preds = %18, %18, %18, %18
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 3
  store %struct.TYPE_24__* @r200_asic, %struct.TYPE_24__** %27, align 8
  br label %158

28:                                               ; preds = %18, %18, %18, %18
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RADEON_IS_PCIE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 3
  store %struct.TYPE_24__* @r300_asic_pcie, %struct.TYPE_24__** %37, align 8
  br label %41

38:                                               ; preds = %28
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 3
  store %struct.TYPE_24__* @r300_asic, %struct.TYPE_24__** %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %158

42:                                               ; preds = %18, %18, %18
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 3
  store %struct.TYPE_24__* @r420_asic, %struct.TYPE_24__** %44, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  store i32* @radeon_legacy_get_engine_clock, i32** %54, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  store i32* @radeon_legacy_set_engine_clock, i32** %59, align 8
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 3
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  store i32* @radeon_legacy_get_memory_clock, i32** %64, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 3
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 3
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  store i32* @radeon_legacy_set_backlight_level, i32** %74, align 8
  br label %75

75:                                               ; preds = %49, %42
  br label %158

76:                                               ; preds = %18, %18
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 3
  store %struct.TYPE_24__* @rs400_asic, %struct.TYPE_24__** %78, align 8
  br label %158

79:                                               ; preds = %18
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 3
  store %struct.TYPE_24__* @rs600_asic, %struct.TYPE_24__** %81, align 8
  br label %158

82:                                               ; preds = %18, %18
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 3
  store %struct.TYPE_24__* @rs690_asic, %struct.TYPE_24__** %84, align 8
  br label %158

85:                                               ; preds = %18
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 3
  store %struct.TYPE_24__* @rv515_asic, %struct.TYPE_24__** %87, align 8
  br label %158

88:                                               ; preds = %18, %18, %18, %18, %18
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 3
  store %struct.TYPE_24__* @r520_asic, %struct.TYPE_24__** %90, align 8
  br label %158

91:                                               ; preds = %18, %18, %18, %18, %18, %18
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 3
  store %struct.TYPE_24__* @r600_asic, %struct.TYPE_24__** %93, align 8
  br label %158

94:                                               ; preds = %18, %18
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 3
  store %struct.TYPE_24__* @rs780_asic, %struct.TYPE_24__** %96, align 8
  br label %158

97:                                               ; preds = %18, %18, %18, %18
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 3
  store %struct.TYPE_24__* @rv770_asic, %struct.TYPE_24__** %99, align 8
  br label %158

100:                                              ; preds = %18, %18, %18, %18, %18
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 179
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  store i32 4, i32* %107, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  store i32 6, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 3
  store %struct.TYPE_24__* @evergreen_asic, %struct.TYPE_24__** %113, align 8
  br label %158

114:                                              ; preds = %18, %18, %18
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 3
  store %struct.TYPE_24__* @sumo_asic, %struct.TYPE_24__** %116, align 8
  br label %158

117:                                              ; preds = %18, %18, %18
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 181
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  store i32 4, i32* %124, align 4
  br label %128

125:                                              ; preds = %117
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 1
  store i32 6, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 3
  store %struct.TYPE_24__* @btc_asic, %struct.TYPE_24__** %130, align 8
  br label %158

131:                                              ; preds = %18
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 3
  store %struct.TYPE_24__* @cayman_asic, %struct.TYPE_24__** %133, align 8
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 1
  store i32 6, i32* %135, align 4
  br label %158

136:                                              ; preds = %18
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 3
  store %struct.TYPE_24__* @trinity_asic, %struct.TYPE_24__** %138, align 8
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 1
  store i32 4, i32* %140, align 4
  br label %158

141:                                              ; preds = %18, %18, %18, %18
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 3
  store %struct.TYPE_24__* @si_asic, %struct.TYPE_24__** %143, align 8
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 175
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 1
  store i32 2, i32* %150, align 4
  br label %154

151:                                              ; preds = %141
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  store i32 6, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %158

155:                                              ; preds = %18
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %177

158:                                              ; preds = %154, %136, %131, %128, %114, %111, %97, %94, %91, %88, %85, %82, %79, %76, %75, %41, %25, %22
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @RADEON_IS_IGP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %158
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 3
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  store i32* null, i32** %170, align 8
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 3
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %165, %158
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %155
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @radeon_register_accessor_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
