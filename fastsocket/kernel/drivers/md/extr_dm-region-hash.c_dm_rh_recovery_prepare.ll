; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_recovery_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_recovery_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32 (i32)*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_recovery_prepare(%struct.dm_region_hash* %0) #0 {
  %2 = alloca %struct.dm_region_hash*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %2, align 8
  %3 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %4 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %3, i32 0, i32 2
  %5 = call i32 @atomic_inc(i32* %4)
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %8 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %7, i32 0, i32 3
  %9 = call i32 @down_trylock(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %14 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %13, i32 0, i32 2
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %17 = call i64 @__rh_recovery_prepare(%struct.dm_region_hash* %16)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %21 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %20, i32 0, i32 2
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %24 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %23, i32 0, i32 3
  %25 = call i32 @up(i32* %24)
  br label %27

26:                                               ; preds = %12
  br label %6

27:                                               ; preds = %19, %6
  %28 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %29 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %28, i32 0, i32 2
  %30 = call i64 @atomic_dec_and_test(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %34 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %33, i32 0, i32 1
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.dm_region_hash*, %struct.dm_region_hash** %2, align 8
  %37 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38)
  br label %40

40:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @down_trylock(i32*) #1

declare dso_local i64 @__rh_recovery_prepare(%struct.dm_region_hash*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
