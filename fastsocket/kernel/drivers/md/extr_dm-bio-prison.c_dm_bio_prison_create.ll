; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_bio_prison_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_bio_prison_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i32, i32, %struct.hlist_head*, i32, i32 }
%struct.hlist_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@_cell_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_bio_prison* @dm_bio_prison_create(i32 %0) #0 {
  %2 = alloca %struct.dm_bio_prison*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dm_bio_prison*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @calc_nr_buckets(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = add i64 24, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dm_bio_prison* @kmalloc(i64 %14, i32 %15)
  store %struct.dm_bio_prison* %16, %struct.dm_bio_prison** %7, align 8
  %17 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %18 = icmp ne %struct.dm_bio_prison* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.dm_bio_prison* null, %struct.dm_bio_prison** %2, align 8
  br label %66

20:                                               ; preds = %1
  %21 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %22 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @_cell_cache, align 4
  %26 = call i32 @mempool_create_slab_pool(i32 %24, i32 %25)
  %27 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %28 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %30 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %35 = call i32 @kfree(%struct.dm_bio_prison* %34)
  store %struct.dm_bio_prison* null, %struct.dm_bio_prison** %2, align 8
  br label %66

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %39 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %43 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %45 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %44, i64 1
  %46 = bitcast %struct.dm_bio_prison* %45 to %struct.hlist_head*
  %47 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %48 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %47, i32 0, i32 2
  store %struct.hlist_head* %46, %struct.hlist_head** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %61, %36
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %55 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %54, i32 0, i32 2
  %56 = load %struct.hlist_head*, %struct.hlist_head** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %56, i64 %58
  %60 = call i32 @INIT_HLIST_HEAD(%struct.hlist_head* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  store %struct.dm_bio_prison* %65, %struct.dm_bio_prison** %2, align 8
  br label %66

66:                                               ; preds = %64, %33, %19
  %67 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  ret %struct.dm_bio_prison* %67
}

declare dso_local i32 @calc_nr_buckets(i32) #1

declare dso_local %struct.dm_bio_prison* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @kfree(%struct.dm_bio_prison*) #1

declare dso_local i32 @INIT_HLIST_HEAD(%struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
