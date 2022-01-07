; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c___ttm_read_trylock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c___ttm_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i64, i64, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*, i32*)* @__ttm_read_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_read_trylock(%struct.ttm_lock* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_lock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %18 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @send_sig(i32 %19, i32 %20, i32 0)
  %22 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %23 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  store i32 0, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %27 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %32 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %37 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  store i32 0, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 1, i32* %40, align 4
  br label %48

41:                                               ; preds = %30, %25
  %42 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %43 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %50 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
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
