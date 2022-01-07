; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_lru_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_lru_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_2__*, %struct.list_head* }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@LIST_LRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_lru_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_lru_add(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %4 = load %struct.stripe*, %struct.stripe** %2, align 8
  %5 = call i32 @StripeRecover(%struct.stripe* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load %struct.stripe*, %struct.stripe** %2, align 8
  %9 = getelementptr inbounds %struct.stripe, %struct.stripe* %8, i32 0, i32 1
  %10 = load %struct.list_head*, %struct.list_head** %9, align 8
  %11 = load i32, i32* @LIST_LRU, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i64 %12
  store %struct.list_head* %13, %struct.list_head** %3, align 8
  %14 = load %struct.list_head*, %struct.list_head** %3, align 8
  %15 = call i64 @list_empty(%struct.list_head* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = load %struct.list_head*, %struct.list_head** %3, align 8
  %19 = load %struct.stripe*, %struct.stripe** %2, align 8
  %20 = getelementptr inbounds %struct.stripe, %struct.stripe* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LIST_LRU, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @list_add_tail(%struct.list_head* %18, i32 %25)
  br label %27

27:                                               ; preds = %17, %7
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @StripeRecover(%struct.stripe*) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
