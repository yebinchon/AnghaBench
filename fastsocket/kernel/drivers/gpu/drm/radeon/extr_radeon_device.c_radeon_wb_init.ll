; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_wb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_wb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32*, i32 }

@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(%d) create WB bo failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"(%d) pin WB bo failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"(%d) map WB bo failed\0A\00", align 1
@radeon_no_wb = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R600 = common dso_local global i64 0, align 8
@CHIP_PALM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"WB %sabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_wb_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = call i32 @radeon_bo_create(%struct.radeon_device* %11, i32 %12, i32 %13, i32 1, i32 %14, i32* null, i32** %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %10
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %175

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @radeon_bo_reserve(i32* %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i32 @radeon_wb_fini(%struct.radeon_device* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %175

44:                                               ; preds = %29
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = call i32 @radeon_bo_pin(i32* %48, i32 %49, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @radeon_bo_unreserve(i32* %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @radeon_wb_fini(%struct.radeon_device* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %175

70:                                               ; preds = %44
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = bitcast i64* %77 to i8**
  %79 = call i32 @radeon_bo_kmap(i32* %74, i8** %78)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @radeon_bo_unreserve(i32* %83)
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %70
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @dev_warn(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i32 @radeon_wb_fini(%struct.radeon_device* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %175

96:                                               ; preds = %70
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %103 = call i32 @memset(i8* %101, i32 0, i32 %102)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* @radeon_no_wb, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %150

113:                                              ; preds = %96
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RADEON_IS_AGP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  br label %149

124:                                              ; preds = %113
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CHIP_R300, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  br label %148

134:                                              ; preds = %124
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHIP_R600, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %134
  br label %148

148:                                              ; preds = %147, %130
  br label %149

149:                                              ; preds = %148, %120
  br label %150

150:                                              ; preds = %149, %109
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CHIP_PALM, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %156, %150
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %174 = call i32 @dev_info(i32 %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %163, %87, %56, %40, %21
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
