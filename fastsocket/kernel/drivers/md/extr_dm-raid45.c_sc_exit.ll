; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_cache = type { i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.raid_set = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_cache*)* @sc_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_exit(%struct.stripe_cache* %0) #0 {
  %2 = alloca %struct.stripe_cache*, align 8
  %3 = alloca %struct.raid_set*, align 8
  store %struct.stripe_cache* %0, %struct.stripe_cache** %2, align 8
  %4 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %5 = call %struct.raid_set* @RS(%struct.stripe_cache* %4)
  store %struct.raid_set* %5, %struct.raid_set** %3, align 8
  %6 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %7 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %63

11:                                               ; preds = %1
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = call i32 @stripe_recover_free(%struct.raid_set* %12)
  %14 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %15 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %16 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %15, i32 0, i32 4
  %17 = call i32 @atomic_read(i32* %16)
  %18 = call i32 @sc_shrink(%struct.stripe_cache* %14, i32 %17)
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %21 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kmem_cache_destroy(i32* %23)
  %25 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %26 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %29 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %11
  %33 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %34 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @IS_ERR(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %40 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dm_mem_cache_client_destroy(i64 %41)
  br label %43

43:                                               ; preds = %38, %32, %11
  %44 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %45 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %50 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IS_ERR(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %56 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dm_io_client_destroy(i64 %57)
  br label %59

59:                                               ; preds = %54, %48, %43
  %60 = load %struct.stripe_cache*, %struct.stripe_cache** %2, align 8
  %61 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %60, i32 0, i32 0
  %62 = call i32 @hash_exit(i32* %61)
  br label %63

63:                                               ; preds = %59, %1
  ret void
}

declare dso_local %struct.raid_set* @RS(%struct.stripe_cache*) #1

declare dso_local i32 @stripe_recover_free(%struct.raid_set*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sc_shrink(%struct.stripe_cache*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @dm_mem_cache_client_destroy(i64) #1

declare dso_local i32 @dm_io_client_destroy(i64) #1

declare dso_local i32 @hash_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
