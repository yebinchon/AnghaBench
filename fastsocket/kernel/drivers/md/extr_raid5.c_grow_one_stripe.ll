; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_grow_one_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_grow_one_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32 }
%struct.stripe_head = type { i32, i32, i32, i32, %struct.r5conf* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*)* @grow_one_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_one_stripe(%struct.r5conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %5 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %6 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.stripe_head* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.stripe_head* %9, %struct.stripe_head** %4, align 8
  %10 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %11 = icmp ne %struct.stripe_head* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %15 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 4
  store %struct.r5conf* %14, %struct.r5conf** %16, align 8
  %17 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %24 = call i64 @grow_buffers(%struct.stripe_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %28 = call i32 @shrink_buffers(%struct.stripe_head* %27)
  %29 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %30 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %33 = call i32 @kmem_cache_free(i32 %31, %struct.stripe_head* %32)
  store i32 0, i32* %2, align 4
  br label %46

34:                                               ; preds = %13
  %35 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 1
  %37 = call i32 @atomic_set(i32* %36, i32 1)
  %38 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %39 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %38, i32 0, i32 0
  %40 = call i32 @atomic_inc(i32* %39)
  %41 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %42 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %45 = call i32 @release_stripe(%struct.stripe_head* %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %26, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.stripe_head* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @grow_buffers(%struct.stripe_head*) #1

declare dso_local i32 @shrink_buffers(%struct.stripe_head*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.stripe_head*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
