; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32 (i32)*, i32, i32, i32, i32, i32 }
%struct.dm_region = type { i64, i32, i32 }

@DM_RH_NOSYNC = common dso_local global i64 0, align 8
@DM_RH_RECOVERING = common dso_local global i64 0, align 8
@DM_RH_DIRTY = common dso_local global i64 0, align 8
@DM_RH_CLEAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_dec(%struct.dm_region_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dm_region*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %9 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %8, i32 0, i32 6
  %10 = call i32 @read_lock(i32* %9)
  %11 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.dm_region* @__rh_lookup(%struct.dm_region_hash* %11, i32 %12)
  store %struct.dm_region* %13, %struct.dm_region** %6, align 8
  %14 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %15 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %14, i32 0, i32 6
  %16 = call i32 @read_unlock(i32* %15)
  %17 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %18 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %22 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %21, i32 0, i32 2
  %23 = call i64 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %2
  %26 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %27 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @DM_RH_NOSYNC, align 8
  %33 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %34 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %64

35:                                               ; preds = %25
  %36 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %37 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DM_RH_RECOVERING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %43 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %42, i32 0, i32 1
  %44 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %45 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %44, i32 0, i32 4
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %63

47:                                               ; preds = %35
  %48 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %49 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DM_RH_DIRTY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i64, i64* @DM_RH_CLEAN, align 8
  %55 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %56 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %58 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %57, i32 0, i32 1
  %59 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %60 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %59, i32 0, i32 3
  %61 = call i32 @list_add(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %31
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %67 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %66, i32 0, i32 2
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %74 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %73, i32 0, i32 1
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %77 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %75(i32 %78)
  br label %80

80:                                               ; preds = %72, %65
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dm_region* @__rh_lookup(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
