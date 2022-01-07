; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_cache = type { i32, i32, i32 }
%struct.stripe = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_cache*, i32)* @sc_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_shrink(%struct.stripe_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stripe_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stripe*, align 8
  store %struct.stripe_cache* %0, %struct.stripe_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %14 = call %struct.stripe* @stripe_lru_pop(%struct.stripe_cache* %13)
  store %struct.stripe* %14, %struct.stripe** %7, align 8
  %15 = load %struct.stripe*, %struct.stripe** %7, align 8
  %16 = icmp ne %struct.stripe* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.stripe*, %struct.stripe** %7, align 8
  %19 = call i32 @stripe_io_ref(%struct.stripe* %18)
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.stripe*, %struct.stripe** %7, align 8
  %22 = call i32 @stripe_ref(%struct.stripe* %21)
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %25 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %24, i32 0, i32 0
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load %struct.stripe*, %struct.stripe** %7, align 8
  %28 = call i32 @stripe_hash_del(%struct.stripe* %27)
  %29 = load %struct.stripe*, %struct.stripe** %7, align 8
  %30 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %31 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @stripe_free(%struct.stripe* %29, i32 %32)
  br label %37

34:                                               ; preds = %12
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %38

37:                                               ; preds = %17
  br label %8

38:                                               ; preds = %34, %8
  %39 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %40 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %39, i32 0, i32 1
  %41 = call i64 @atomic_read(i32* %40)
  %42 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %43 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %42, i32 0, i32 0
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %48 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %47, i32 0, i32 1
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %50
  %56 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %57 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %56, i32 0, i32 0
  %58 = call i64 @atomic_read(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %62 = call i32 @sc_hash_resize(%struct.stripe_cache* %61)
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.stripe* @stripe_lru_pop(%struct.stripe_cache*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stripe_io_ref(%struct.stripe*) #1

declare dso_local i32 @stripe_ref(%struct.stripe*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @stripe_hash_del(%struct.stripe*) #1

declare dso_local i32 @stripe_free(%struct.stripe*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sc_hash_resize(%struct.stripe_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
