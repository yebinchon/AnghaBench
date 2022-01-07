; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_cache = type { i32, i32 }
%struct.stripe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_cache*, i32, i32)* @sc_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_grow(%struct.stripe_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stripe_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stripe*, align 8
  store %struct.stripe_cache* %0, %struct.stripe_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %15 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %16 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.stripe* @stripe_alloc(%struct.stripe_cache* %14, i32 %17, i32 %18)
  store %struct.stripe* %19, %struct.stripe** %8, align 8
  %20 = load %struct.stripe*, %struct.stripe** %8, align 8
  %21 = call i64 @likely(%struct.stripe* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.stripe*, %struct.stripe** %8, align 8
  %25 = call i32 @stripe_lru_add(%struct.stripe* %24)
  %26 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %27 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %26, i32 0, i32 0
  %28 = call i32 @atomic_inc(i32* %27)
  br label %32

29:                                               ; preds = %13
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %23
  br label %9

33:                                               ; preds = %29, %9
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  br label %41

38:                                               ; preds = %33
  %39 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %40 = call i32 @sc_hash_resize(%struct.stripe_cache* %39)
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %40, %38 ]
  ret i32 %42
}

declare dso_local %struct.stripe* @stripe_alloc(%struct.stripe_cache*, i32, i32) #1

declare dso_local i64 @likely(%struct.stripe*) #1

declare dso_local i32 @stripe_lru_add(%struct.stripe*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @sc_hash_resize(%struct.stripe_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
