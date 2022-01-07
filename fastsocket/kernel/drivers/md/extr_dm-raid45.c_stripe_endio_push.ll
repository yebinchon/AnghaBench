; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_endio_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_endio_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.list_head*, %struct.stripe_cache* }
%struct.list_head = type { i32 }
%struct.stripe_cache = type { i32*, %struct.list_head* }

@LIST_ENDIO = common dso_local global i32 0, align 4
@LOCK_ENDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_endio_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_endio_push(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.stripe_cache*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %8 = load %struct.stripe*, %struct.stripe** %2, align 8
  %9 = getelementptr inbounds %struct.stripe, %struct.stripe* %8, i32 0, i32 1
  %10 = load %struct.stripe_cache*, %struct.stripe_cache** %9, align 8
  store %struct.stripe_cache* %10, %struct.stripe_cache** %4, align 8
  %11 = load %struct.stripe*, %struct.stripe** %2, align 8
  %12 = getelementptr inbounds %struct.stripe, %struct.stripe* %11, i32 0, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8
  %14 = load i32, i32* @LIST_ENDIO, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 %15
  store %struct.list_head* %16, %struct.list_head** %5, align 8
  %17 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %18 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %17, i32 0, i32 1
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  %20 = load i32, i32* @LIST_ENDIO, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 %21
  store %struct.list_head* %22, %struct.list_head** %6, align 8
  %23 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %24 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @LOCK_ENDIO, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.list_head*, %struct.list_head** %5, align 8
  %33 = call i64 @list_empty(%struct.list_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.list_head*, %struct.list_head** %5, align 8
  %37 = load %struct.list_head*, %struct.list_head** %6, align 8
  %38 = call i32 @list_add_tail(%struct.list_head* %36, %struct.list_head* %37)
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.stripe_cache*, %struct.stripe_cache** %4, align 8
  %44 = call i32 @RS(%struct.stripe_cache* %43)
  %45 = call i32 @wake_do_raid(i32 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_do_raid(i32) #1

declare dso_local i32 @RS(%struct.stripe_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
