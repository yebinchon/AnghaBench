; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_flush_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_flush_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.list_head*, %struct.stripe_cache* }
%struct.list_head = type { i32 }
%struct.stripe_cache = type { i32 }

@LIST_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_flush_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_flush_add(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.stripe_cache*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %5 = load %struct.stripe*, %struct.stripe** %2, align 8
  %6 = getelementptr inbounds %struct.stripe, %struct.stripe* %5, i32 0, i32 1
  %7 = load %struct.stripe_cache*, %struct.stripe_cache** %6, align 8
  store %struct.stripe_cache* %7, %struct.stripe_cache** %3, align 8
  %8 = load %struct.stripe*, %struct.stripe** %2, align 8
  %9 = getelementptr inbounds %struct.stripe, %struct.stripe* %8, i32 0, i32 0
  %10 = load %struct.list_head*, %struct.list_head** %9, align 8
  %11 = load i32, i32* @LIST_FLUSH, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i64 %12
  store %struct.list_head* %13, %struct.list_head** %4, align 8
  %14 = load %struct.stripe*, %struct.stripe** %2, align 8
  %15 = call i32 @StripeReconstruct(%struct.stripe* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call i64 @list_empty(%struct.list_head* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = load %struct.stripe_cache*, %struct.stripe_cache** %3, align 8
  %24 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LIST_FLUSH, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @list_add_tail(%struct.list_head* %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %17, %1
  ret void
}

declare dso_local i32 @StripeReconstruct(%struct.stripe*) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
