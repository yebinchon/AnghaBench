; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_syncing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_syncing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Testing syncing between rings %d and %d...\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Testing syncing between rings %d, %d and %d...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_test_syncing(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_ring*, align 8
  %8 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %136, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %139

13:                                               ; preds = %9
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %16, i64 %18
  store %struct.radeon_ring* %19, %struct.radeon_ring** %6, align 8
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %136

25:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %132, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %135

30:                                               ; preds = %26
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %33, i64 %35
  store %struct.radeon_ring* %36, %struct.radeon_ring** %7, align 8
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %132

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %49 = call i32 @radeon_test_ring_sync(%struct.radeon_device* %46, %struct.radeon_ring* %47, %struct.radeon_ring* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %56 = call i32 @radeon_test_ring_sync(%struct.radeon_device* %53, %struct.radeon_ring* %54, %struct.radeon_ring* %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %128, %42
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %131

61:                                               ; preds = %57
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %64, i64 %66
  store %struct.radeon_ring* %67, %struct.radeon_ring** %8, align 8
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %69 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %128

73:                                               ; preds = %61
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %82 = call i32 @radeon_test_ring_sync2(%struct.radeon_device* %78, %struct.radeon_ring* %79, %struct.radeon_ring* %80, %struct.radeon_ring* %81)
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %91 = call i32 @radeon_test_ring_sync2(%struct.radeon_device* %87, %struct.radeon_ring* %88, %struct.radeon_ring* %89, %struct.radeon_ring* %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %100 = call i32 @radeon_test_ring_sync2(%struct.radeon_device* %96, %struct.radeon_ring* %97, %struct.radeon_ring* %98, %struct.radeon_ring* %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102, i32 %103)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %109 = call i32 @radeon_test_ring_sync2(%struct.radeon_device* %105, %struct.radeon_ring* %106, %struct.radeon_ring* %107, %struct.radeon_ring* %108)
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %115 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %118 = call i32 @radeon_test_ring_sync2(%struct.radeon_device* %114, %struct.radeon_ring* %115, %struct.radeon_ring* %116, %struct.radeon_ring* %117)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i8*, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120, i32 %121)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %124 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %125 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %126 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %127 = call i32 @radeon_test_ring_sync2(%struct.radeon_device* %123, %struct.radeon_ring* %124, %struct.radeon_ring* %125, %struct.radeon_ring* %126)
  br label %128

128:                                              ; preds = %73, %72
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %57

131:                                              ; preds = %57
  br label %132

132:                                              ; preds = %131, %41
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %26

135:                                              ; preds = %26
  br label %136

136:                                              ; preds = %135, %24
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %9

139:                                              ; preds = %9
  ret void
}

declare dso_local i32 @DRM_INFO(i8*, i32, i32, ...) #1

declare dso_local i32 @radeon_test_ring_sync(%struct.radeon_device*, %struct.radeon_ring*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_test_ring_sync2(%struct.radeon_device*, %struct.radeon_ring*, %struct.radeon_ring*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
