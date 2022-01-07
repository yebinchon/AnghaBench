; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_reconstruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_reconstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@S_RECONSTRUCT_EI = common dso_local global i64 0, align 8
@S_RECONSTRUCT_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_reconstruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_reconstruct(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %6 = load %struct.stripe*, %struct.stripe** %2, align 8
  %7 = getelementptr inbounds %struct.stripe, %struct.stripe* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.raid_set* @RS(i32 %8)
  store %struct.raid_set* %9, %struct.raid_set** %3, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.stripe*, %struct.stripe** %2, align 8
  %15 = getelementptr inbounds %struct.stripe, %struct.stripe* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.stripe*, %struct.stripe** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CHUNK(%struct.stripe* %31, i32 %32)
  %34 = call i32 @ChunkUptodate(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i1 [ false, %26 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %43 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %46 = call i64 @RSDegraded(%struct.raid_set* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @S_RECONSTRUCT_EI, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @S_RECONSTRUCT_DEV, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  %54 = add nsw i64 %44, %53
  %55 = call i32 @atomic_inc(i64 %54)
  %56 = load %struct.stripe*, %struct.stripe** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @stripe_zero_chunk(%struct.stripe* %56, i32 %57)
  %59 = load %struct.stripe*, %struct.stripe** %2, align 8
  %60 = load %struct.stripe*, %struct.stripe** %2, align 8
  %61 = getelementptr inbounds %struct.stripe, %struct.stripe* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @common_xor(%struct.stripe* %59, i32 %63, i32 0, i32 %64)
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ChunkUptodate(i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i64 @RSDegraded(%struct.raid_set*) #1

declare dso_local i32 @stripe_zero_chunk(%struct.stripe*, i32) #1

declare dso_local i32 @common_xor(%struct.stripe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
