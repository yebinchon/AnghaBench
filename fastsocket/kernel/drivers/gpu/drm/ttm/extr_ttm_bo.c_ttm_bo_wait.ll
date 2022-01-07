; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i8*, i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 (i8*, i32, i32)*, i32 (i8**)*, i8* (i8*)*, i64 (i8*)* }

@TTM_BO_PRIV_FLAG_MOVING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_bo_driver*, align 8
  %11 = alloca %struct.ttm_bo_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 2
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %17, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %18, i32 0, i32 1
  %20 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %19, align 8
  store %struct.ttm_bo_driver* %20, %struct.ttm_bo_driver** %10, align 8
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 2
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %22, align 8
  store %struct.ttm_bo_device* %23, %struct.ttm_bo_device** %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %154

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %152, %47, %32
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %35 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %153

38:                                               ; preds = %33
  %39 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %40 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %39, i32 0, i32 3
  %41 = load i64 (i8*)*, i64 (i8*)** %40, align 8
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 %41(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %38
  %48 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %49 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %14, align 8
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %52 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %51, i32 0, i32 0
  store i8* null, i8** %52, align 8
  %53 = load i32, i32* @TTM_BO_PRIV_FLAG_MOVING, align 4
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 1
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %58 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %61 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %60, i32 0, i32 1
  %62 = load i32 (i8**)*, i32 (i8**)** %61, align 8
  %63 = call i32 %62(i8** %14)
  %64 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %65 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  br label %33

67:                                               ; preds = %38
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %154

73:                                               ; preds = %67
  %74 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %75 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %74, i32 0, i32 2
  %76 = load i8* (i8*)*, i8* (i8*)** %75, align 8
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* %76(i8* %79)
  store i8* %80, i8** %12, align 8
  %81 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %82 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %85 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %84, i32 0, i32 0
  %86 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %85, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 %86(i8* %87, i32 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %73
  %97 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %98 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %97, i32 0, i32 1
  %99 = load i32 (i8**)*, i32 (i8**)** %98, align 8
  %100 = call i32 %99(i8** %12)
  %101 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %102 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %101, i32 0, i32 0
  %103 = call i32 @spin_lock(i32* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %154

105:                                              ; preds = %73
  %106 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %107 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %106, i32 0, i32 0
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %110 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = icmp eq i8* %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %105
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %119 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %15, align 8
  %121 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %122 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %121, i32 0, i32 0
  store i8* null, i8** %122, align 8
  %123 = load i32, i32* @TTM_BO_PRIV_FLAG_MOVING, align 4
  %124 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %125 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %124, i32 0, i32 1
  %126 = call i32 @clear_bit(i32 %123, i32* %125)
  %127 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %128 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %131 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %130, i32 0, i32 1
  %132 = load i32 (i8**)*, i32 (i8**)** %131, align 8
  %133 = call i32 %132(i8** %12)
  %134 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %135 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %134, i32 0, i32 1
  %136 = load i32 (i8**)*, i32 (i8**)** %135, align 8
  %137 = call i32 %136(i8** %15)
  %138 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %139 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %138, i32 0, i32 0
  %140 = call i32 @spin_lock(i32* %139)
  br label %152

141:                                              ; preds = %105
  %142 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %143 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %10, align 8
  %146 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %145, i32 0, i32 1
  %147 = load i32 (i8**)*, i32 (i8**)** %146, align 8
  %148 = call i32 %147(i8** %12)
  %149 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  %150 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %149, i32 0, i32 0
  %151 = call i32 @spin_lock(i32* %150)
  br label %152

152:                                              ; preds = %141, %117
  br label %33

153:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %96, %70, %31
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
