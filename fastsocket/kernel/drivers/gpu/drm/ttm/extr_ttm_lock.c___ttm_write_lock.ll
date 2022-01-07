; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c___ttm_write_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c___ttm_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32, i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@TTM_WRITE_LOCK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*)* @__ttm_write_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_write_lock(%struct.ttm_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %6 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %15 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @send_sig(i32 %16, i32 %17, i32 0)
  %19 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %20 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %19, i32 0, i32 2
  %21 = call i32 @spin_unlock(i32* %20)
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %24 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %29 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %37 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %41 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  store i32 1, i32* %4, align 4
  br label %50

44:                                               ; preds = %27, %22
  %45 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %46 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %47 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %35
  %51 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %52 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
