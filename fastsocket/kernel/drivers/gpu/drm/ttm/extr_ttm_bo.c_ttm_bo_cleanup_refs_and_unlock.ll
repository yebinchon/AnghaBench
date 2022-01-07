; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_and_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, i32, i32, %struct.ttm_bo_global*, %struct.ttm_bo_device* }
%struct.ttm_bo_global = type { i32 }
%struct.ttm_bo_device = type { i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 (i8*, i32, i32)*, i32 (i8**)*, i8* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32)* @ttm_bo_cleanup_refs_and_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_cleanup_refs_and_unlock(%struct.ttm_buffer_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_bo_device*, align 8
  %9 = alloca %struct.ttm_bo_driver*, align 8
  %10 = alloca %struct.ttm_bo_global*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 5
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %15, align 8
  store %struct.ttm_bo_device* %16, %struct.ttm_bo_device** %8, align 8
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %18 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %17, i32 0, i32 1
  %19 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %18, align 8
  store %struct.ttm_bo_driver* %19, %struct.ttm_bo_driver** %9, align 8
  %20 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %20, i32 0, i32 4
  %22 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %21, align 8
  store %struct.ttm_bo_global* %22, %struct.ttm_bo_global** %10, align 8
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %24 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %27 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %26, i32 0, i32 0, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %95, label %33

33:                                               ; preds = %30
  %34 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %34, i32 0, i32 2
  %36 = load i8* (i32)*, i8* (i32)** %35, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* %36(i32 %39)
  store i8* %40, i8** %13, align 8
  %41 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %42 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 2
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %48 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %47, i32 0, i32 1
  %49 = call i32 @wake_up_all(i32* %48)
  %50 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %51 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %54 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %53, i32 0, i32 0
  %55 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %54, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 %55(i8* %56, i32 0, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %60 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %59, i32 0, i32 1
  %61 = load i32 (i8**)*, i32 (i8**)** %60, align 8
  %62 = call i32 %61(i8** %13)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %33
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %135

67:                                               ; preds = %33
  %68 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %69 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %68, i32 0, i32 0
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %72 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %71, i32 0, i32 0, i32 1)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %76 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %135

82:                                               ; preds = %67
  %83 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %84 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %87 = call i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object* %86, i32 0, i32 1, i32 0, i32 0)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %92 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  store i32 0, i32* %4, align 4
  br label %135

94:                                               ; preds = %82
  br label %99

95:                                               ; preds = %30, %3
  %96 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %97 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95, %94
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %104 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %103, i32 0, i32 0
  %105 = call i32 @list_empty(i32* %104)
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102, %99
  %109 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %110 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %109, i32 0, i32 2
  %111 = call i32 @atomic_set(i32* %110, i32 0)
  %112 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %113 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %112, i32 0, i32 1
  %114 = call i32 @wake_up_all(i32* %113)
  %115 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %116 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %4, align 4
  br label %135

119:                                              ; preds = %102
  %120 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %121 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %120)
  store i32 %121, i32* %11, align 4
  %122 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %123 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %122, i32 0, i32 0
  %124 = call i32 @list_del_init(i32* %123)
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  %127 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %128 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %131 = call i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object* %130)
  %132 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object* %132, i32 %133, i32 1)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %119, %108, %90, %80, %65
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
