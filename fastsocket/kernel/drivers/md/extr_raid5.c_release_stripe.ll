; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_release_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_release_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.r5conf* }
%struct.r5conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @release_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_stripe(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i64, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %5 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %6 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %5, i32 0, i32 1
  %7 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  store %struct.r5conf* %7, %struct.r5conf** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %11 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %10, i32 0, i32 0
  %12 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %13 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %12, i32 0, i32 0
  %14 = call i64 @atomic_dec_and_lock(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %18 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %19 = call i32 @do_release_stripe(%struct.r5conf* %17, %struct.stripe_head* %18)
  %20 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @local_irq_restore(i64 %24)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @do_release_stripe(%struct.r5conf*, %struct.stripe_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
