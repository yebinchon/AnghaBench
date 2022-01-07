; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_drop_one_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_drop_one_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32 }
%struct.stripe_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*)* @drop_one_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_one_stripe(%struct.r5conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %5 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %6 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %9 = call %struct.stripe_head* @get_free_stripe(%struct.r5conf* %8)
  store %struct.stripe_head* %9, %struct.stripe_head** %4, align 8
  %10 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %11 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %10, i32 0, i32 2
  %12 = call i32 @spin_unlock_irq(i32* %11)
  %13 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %14 = icmp ne %struct.stripe_head* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 0
  %19 = call i32 @atomic_read(i32* %18)
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %22 = call i32 @shrink_buffers(%struct.stripe_head* %21)
  %23 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %27 = call i32 @kmem_cache_free(i32 %25, %struct.stripe_head* %26)
  %28 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %29 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec(i32* %29)
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %16, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.stripe_head* @get_free_stripe(%struct.r5conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @shrink_buffers(%struct.stripe_head*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.stripe_head*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
