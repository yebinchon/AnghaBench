; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_vt_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_vt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { %struct.ttm_object_file*, i32, i32, i32, i32 }
%struct.ttm_object_file = type { i32 }

@TTM_VT_LOCK_PENDING = common dso_local global i32 0, align 4
@ttm_lock_type = common dso_local global i32 0, align 4
@ttm_vt_lock_remove = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_vt_lock(%struct.ttm_lock* %0, i32 %1, %struct.ttm_object_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_lock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_object_file*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ttm_object_file* %2, %struct.ttm_object_file** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %13 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %16 = call i32 @__ttm_vt_lock(%struct.ttm_lock* %15)
  %17 = call i32 @wait_event_interruptible(i32 %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %11
  %24 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %25 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @TTM_VT_LOCK_PENDING, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %30 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %34 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %33, i32 0, i32 2
  %35 = call i32 @wake_up_all(i32* %34)
  %36 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %37 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %36, i32 0, i32 3
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %65

40:                                               ; preds = %11
  br label %48

41:                                               ; preds = %3
  %42 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %43 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %46 = call i32 @__ttm_vt_lock(%struct.ttm_lock* %45)
  %47 = call i32 @wait_event(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %41, %40
  %49 = load %struct.ttm_object_file*, %struct.ttm_object_file** %7, align 8
  %50 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %51 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %50, i32 0, i32 1
  %52 = load i32, i32* @ttm_lock_type, align 4
  %53 = call i32 @ttm_base_object_init(%struct.ttm_object_file* %49, i32* %51, i32 0, i32 %52, i32* @ttm_vt_lock_remove, i32* null)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %58 = call i32 @__ttm_vt_unlock(%struct.ttm_lock* %57)
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.ttm_object_file*, %struct.ttm_object_file** %7, align 8
  %61 = load %struct.ttm_lock*, %struct.ttm_lock** %5, align 8
  %62 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %61, i32 0, i32 0
  store %struct.ttm_object_file* %60, %struct.ttm_object_file** %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %23
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__ttm_vt_lock(%struct.ttm_lock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ttm_base_object_init(%struct.ttm_object_file*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @__ttm_vt_unlock(%struct.ttm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
