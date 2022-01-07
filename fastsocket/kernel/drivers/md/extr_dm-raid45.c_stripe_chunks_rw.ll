; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_chunks_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_chunks_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.raid_set = type { i64, %struct.stripe_cache }
%struct.stripe_cache = type { i32 }

@stripe_get_references = common dso_local global i32 0, align 4
@stripe_chunk_rw = common dso_local global i32 0, align 4
@S_FLUSHS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @stripe_chunks_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_chunks_rw(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_cache*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %7 = load %struct.stripe*, %struct.stripe** %2, align 8
  %8 = getelementptr inbounds %struct.stripe, %struct.stripe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.raid_set* @RS(i32 %9)
  store %struct.raid_set* %10, %struct.raid_set** %4, align 8
  %11 = load %struct.stripe*, %struct.stripe** %2, align 8
  %12 = load i32, i32* @stripe_get_references, align 4
  %13 = call i32 @for_each_io_dev(%struct.stripe* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %18 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %17, i32 0, i32 1
  store %struct.stripe_cache* %18, %struct.stripe_cache** %6, align 8
  %19 = load %struct.stripe*, %struct.stripe** %2, align 8
  %20 = load i32, i32* @stripe_chunk_rw, align 4
  %21 = call i32 @for_each_io_dev(%struct.stripe* %19, i32 %20)
  %22 = load %struct.stripe_cache*, %struct.stripe_cache** %6, align 8
  %23 = call i32 @sc_active(%struct.stripe_cache* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.stripe_cache*, %struct.stripe_cache** %6, align 8
  %25 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.stripe_cache*, %struct.stripe_cache** %6, align 8
  %31 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @atomic_set(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %16
  %35 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %36 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S_FLUSHS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @atomic_inc(i64 %39)
  br label %41

41:                                               ; preds = %34, %1
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i32 @for_each_io_dev(%struct.stripe*, i32) #1

declare dso_local i32 @sc_active(%struct.stripe_cache*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
