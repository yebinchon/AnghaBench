; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_3__, %struct.stripe_cache }
%struct.TYPE_3__ = type { i32 }
%struct.stripe_cache = type { i32 }
%struct.raid_address = type { i32, i32 }

@S_HITS_1ST = common dso_local global i64 0, align 8
@S_INSCACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stripe* (%struct.raid_set*, %struct.raid_address*)* @stripe_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stripe* @stripe_find(%struct.raid_set* %0, %struct.raid_address* %1) #0 {
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.raid_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stripe_cache*, align 8
  %8 = alloca %struct.stripe*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store %struct.raid_address* %1, %struct.raid_address** %5, align 8
  %9 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %10 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %9, i32 0, i32 2
  store %struct.stripe_cache* %10, %struct.stripe_cache** %7, align 8
  %11 = load %struct.stripe_cache*, %struct.stripe_cache** %7, align 8
  %12 = load %struct.raid_address*, %struct.raid_address** %5, align 8
  %13 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.stripe* @stripe_lookup(%struct.stripe_cache* %11, i32 %14)
  store %struct.stripe* %15, %struct.stripe** %8, align 8
  %16 = load %struct.stripe*, %struct.stripe** %8, align 8
  %17 = icmp ne %struct.stripe* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.stripe*, %struct.stripe** %8, align 8
  %20 = call i32 @stripe_get(%struct.stripe* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %87

24:                                               ; preds = %18
  %25 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @S_HITS_1ST, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @atomic_inc(i64 %29)
  br label %85

31:                                               ; preds = %2
  %32 = load %struct.stripe_cache*, %struct.stripe_cache** %7, align 8
  %33 = call %struct.stripe* @stripe_lru_pop(%struct.stripe_cache* %32)
  store %struct.stripe* %33, %struct.stripe** %8, align 8
  %34 = load %struct.stripe*, %struct.stripe** %8, align 8
  %35 = icmp ne %struct.stripe* %34, null
  br i1 %35, label %36, label %84

36:                                               ; preds = %31
  %37 = load %struct.stripe*, %struct.stripe** %8, align 8
  %38 = call i32 @stripe_ref(%struct.stripe* %37)
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.stripe*, %struct.stripe** %8, align 8
  %41 = call i32 @stripe_io_ref(%struct.stripe* %40)
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.stripe*, %struct.stripe** %8, align 8
  %44 = call i32 @stripe_hash_del(%struct.stripe* %43)
  %45 = load %struct.stripe*, %struct.stripe** %8, align 8
  %46 = call i32 @stripe_invalidate(%struct.stripe* %45)
  %47 = load %struct.raid_address*, %struct.raid_address** %5, align 8
  %48 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.stripe*, %struct.stripe** %8, align 8
  %51 = getelementptr inbounds %struct.stripe, %struct.stripe* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %53 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.raid_address*, %struct.raid_address** %5, align 8
  %57 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dm_rh_sector_to_region(i32 %55, i32 %58)
  %60 = load %struct.stripe*, %struct.stripe** %8, align 8
  %61 = getelementptr inbounds %struct.stripe, %struct.stripe* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.raid_address*, %struct.raid_address** %5, align 8
  %63 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.stripe*, %struct.stripe** %8, align 8
  %66 = getelementptr inbounds %struct.stripe, %struct.stripe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.stripe*, %struct.stripe** %8, align 8
  %69 = call i32 @stripe_get(%struct.stripe* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %36
  br label %87

73:                                               ; preds = %36
  %74 = load %struct.stripe_cache*, %struct.stripe_cache** %7, align 8
  %75 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %74, i32 0, i32 0
  %76 = load %struct.stripe*, %struct.stripe** %8, align 8
  %77 = call i32 @stripe_insert(i32* %75, %struct.stripe* %76)
  %78 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %79 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @S_INSCACHE, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @atomic_inc(i64 %82)
  br label %84

84:                                               ; preds = %73, %31
  br label %85

85:                                               ; preds = %84, %24
  %86 = load %struct.stripe*, %struct.stripe** %8, align 8
  store %struct.stripe* %86, %struct.stripe** %3, align 8
  br label %90

87:                                               ; preds = %72, %23
  %88 = load %struct.stripe*, %struct.stripe** %8, align 8
  %89 = call i32 @stripe_put(%struct.stripe* %88)
  store %struct.stripe* null, %struct.stripe** %3, align 8
  br label %90

90:                                               ; preds = %87, %85
  %91 = load %struct.stripe*, %struct.stripe** %3, align 8
  ret %struct.stripe* %91
}

declare dso_local %struct.stripe* @stripe_lookup(%struct.stripe_cache*, i32) #1

declare dso_local i32 @stripe_get(%struct.stripe*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local %struct.stripe* @stripe_lru_pop(%struct.stripe_cache*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stripe_ref(%struct.stripe*) #1

declare dso_local i32 @stripe_io_ref(%struct.stripe*) #1

declare dso_local i32 @stripe_hash_del(%struct.stripe*) #1

declare dso_local i32 @stripe_invalidate(%struct.stripe*) #1

declare dso_local i32 @dm_rh_sector_to_region(i32, i32) #1

declare dso_local i32 @stripe_insert(i32*, %struct.stripe*) #1

declare dso_local i32 @stripe_put(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
