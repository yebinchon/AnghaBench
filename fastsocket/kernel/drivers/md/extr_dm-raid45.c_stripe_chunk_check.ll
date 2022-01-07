; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_chunk_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_chunk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_chunk = type { i32 }
%struct.stripe = type { i32 }
%struct.raid_set = type { i32, i64 }

@S_CHUNK_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stripe_chunk* (%struct.stripe*, i32, i32*)* @stripe_chunk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stripe_chunk* @stripe_chunk_check(%struct.stripe* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.stripe_chunk*, align 8
  %5 = alloca %struct.stripe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.raid_set*, align 8
  %9 = alloca %struct.stripe_chunk*, align 8
  store %struct.stripe* %0, %struct.stripe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.stripe*, %struct.stripe** %5, align 8
  %11 = getelementptr inbounds %struct.stripe, %struct.stripe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.raid_set* @RS(i32 %12)
  store %struct.raid_set* %13, %struct.raid_set** %8, align 8
  %14 = load %struct.stripe*, %struct.stripe** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %14, i32 %15)
  store %struct.stripe_chunk* %16, %struct.stripe_chunk** %9, align 8
  %17 = load %struct.stripe_chunk*, %struct.stripe_chunk** %9, align 8
  %18 = call i64 @ChunkLocked(%struct.stripe_chunk* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %22 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S_CHUNK_LOCKED, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @atomic_inc(i64 %25)
  store %struct.stripe_chunk* null, %struct.stripe_chunk** %4, align 8
  br label %50

27:                                               ; preds = %3
  %28 = load %struct.stripe_chunk*, %struct.stripe_chunk** %9, align 8
  %29 = call i64 @ChunkError(%struct.stripe_chunk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %33 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %34, %35
  %37 = call i64 @DevFailed(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %27
  store %struct.stripe_chunk* null, %struct.stripe_chunk** %4, align 8
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.stripe_chunk*, %struct.stripe_chunk** %9, align 8
  %42 = call i64 @ChunkUptodate(%struct.stripe_chunk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %45, align 4
  store %struct.stripe_chunk* null, %struct.stripe_chunk** %4, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load %struct.stripe_chunk*, %struct.stripe_chunk** %9, align 8
  store %struct.stripe_chunk* %49, %struct.stripe_chunk** %4, align 8
  br label %50

50:                                               ; preds = %48, %44, %39, %20
  %51 = load %struct.stripe_chunk*, %struct.stripe_chunk** %4, align 8
  ret %struct.stripe_chunk* %51
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local i64 @ChunkLocked(%struct.stripe_chunk*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i64 @ChunkError(%struct.stripe_chunk*) #1

declare dso_local i64 @DevFailed(i32) #1

declare dso_local i64 @ChunkUptodate(%struct.stripe_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
