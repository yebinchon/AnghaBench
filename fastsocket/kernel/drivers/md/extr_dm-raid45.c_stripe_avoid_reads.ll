; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_avoid_reads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_avoid_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.stripe_chunk = type { i32 }

@S_PROHIBITCHUNKIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_avoid_reads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_avoid_reads(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_chunk*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %7 = load %struct.stripe*, %struct.stripe** %2, align 8
  %8 = getelementptr inbounds %struct.stripe, %struct.stripe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.raid_set* @RS(i32 %9)
  store %struct.raid_set* %10, %struct.raid_set** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %12 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %25, %1
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load %struct.stripe*, %struct.stripe** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.stripe_chunk* @stripe_chunk_check(%struct.stripe* %20, i32 %21, i32* %4)
  store %struct.stripe_chunk* %22, %struct.stripe_chunk** %6, align 8
  %23 = load %struct.stripe_chunk*, %struct.stripe_chunk** %6, align 8
  %24 = icmp ne %struct.stripe_chunk* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %15

26:                                               ; preds = %19
  %27 = load %struct.stripe_chunk*, %struct.stripe_chunk** %6, align 8
  %28 = call i64 @chunk_ref(%struct.stripe_chunk* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.stripe*, %struct.stripe** %2, align 8
  %33 = getelementptr inbounds %struct.stripe, %struct.stripe* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %26
  %38 = load %struct.stripe_chunk*, %struct.stripe_chunk** %6, align 8
  %39 = call i32 @SetChunkIo(%struct.stripe_chunk* %38)
  br label %52

40:                                               ; preds = %30
  %41 = load %struct.stripe_chunk*, %struct.stripe_chunk** %6, align 8
  %42 = call i32 @ClearChunkIo(%struct.stripe_chunk* %41)
  %43 = load %struct.stripe*, %struct.stripe** %2, align 8
  %44 = getelementptr inbounds %struct.stripe, %struct.stripe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.raid_set* @RS(i32 %45)
  %47 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @S_PROHIBITCHUNKIO, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @atomic_inc(i64 %50)
  br label %52

52:                                               ; preds = %40, %37
  br label %15

53:                                               ; preds = %15
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local %struct.stripe_chunk* @stripe_chunk_check(%struct.stripe*, i32, i32*) #1

declare dso_local i64 @chunk_ref(%struct.stripe_chunk*) #1

declare dso_local i32 @SetChunkIo(%struct.stripe_chunk*) #1

declare dso_local i32 @ClearChunkIo(%struct.stripe_chunk*) #1

declare dso_local i32 @atomic_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
