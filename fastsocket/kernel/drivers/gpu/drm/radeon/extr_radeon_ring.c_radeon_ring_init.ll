; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%d) ring create failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"(%d) ring pin failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(%d) ring map failed\0A\00", align 1
@RADEON_WB_RING0_NEXT_RPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to register debugfs file for rings !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_init(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_device*, align 8
  %12 = alloca %struct.radeon_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %11, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %27 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %33 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %18, align 4
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %39 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %42 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %44 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %43, i32 0, i32 12
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %121

47:                                               ; preds = %9
  %48 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %50 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %55 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %54, i32 0, i32 12
  %56 = call i32 @radeon_bo_create(%struct.radeon_device* %48, i32 %51, i32 %52, i32 1, i32 %53, i32* null, i32** %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %20, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %10, align 4
  br label %176

66:                                               ; preds = %47
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %68 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %67, i32 0, i32 12
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @radeon_bo_reserve(i32* %69, i32 0)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %20, align 4
  store i32 %77, i32* %10, align 4
  br label %176

78:                                               ; preds = %66
  %79 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %80 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %79, i32 0, i32 12
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %84 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %83, i32 0, i32 14
  %85 = call i32 @radeon_bo_pin(i32* %81, i32 %82, i32* %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %90 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %89, i32 0, i32 12
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @radeon_bo_unreserve(i32* %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %20, align 4
  store i32 %98, i32* %10, align 4
  br label %176

99:                                               ; preds = %78
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %101 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %100, i32 0, i32 12
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %104 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %103, i32 0, i32 13
  %105 = bitcast i32* %104 to i8**
  %106 = call i32 @radeon_bo_kmap(i32* %102, i8** %105)
  store i32 %106, i32* %20, align 4
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %108 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %107, i32 0, i32 12
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @radeon_bo_unreserve(i32* %109)
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %99
  %114 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %20, align 4
  store i32 %119, i32* %10, align 4
  br label %176

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %9
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %123 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = udiv i32 %124, 4
  %126 = sub i32 %125, 1
  %127 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %128 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %130 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = udiv i32 %131, 4
  %133 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %134 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %133, i32 0, i32 8
  store i32 %132, i32* %134, align 8
  %135 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %166

140:                                              ; preds = %121
  %141 = load i32, i32* @RADEON_WB_RING0_NEXT_RPTR, align 4
  %142 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %143 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %144, 4
  %146 = add nsw i32 %141, %145
  store i32 %146, i32* %21, align 4
  %147 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %155 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %154, i32 0, i32 11
  store i64 %153, i64* %155, align 8
  %156 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sdiv i32 %160, 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %165 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %164, i32 0, i32 10
  store i32* %163, i32** %165, align 8
  br label %166

166:                                              ; preds = %140, %121
  %167 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %168 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %169 = call i64 @radeon_debugfs_ring_init(%struct.radeon_device* %167, %struct.radeon_ring* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %166
  %174 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %175 = call i32 @radeon_ring_lockup_update(%struct.radeon_ring* %174)
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %173, %113, %88, %76, %59
  %177 = load i32, i32* %10, align 4
  ret i32 %177
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i8**) #1

declare dso_local i64 @radeon_debugfs_ring_init(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
