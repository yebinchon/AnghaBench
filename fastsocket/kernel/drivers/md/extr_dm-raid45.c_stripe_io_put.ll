; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_io_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_io_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_io_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_io_put(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %3 = load %struct.stripe*, %struct.stripe** %2, align 8
  %4 = getelementptr inbounds %struct.stripe, %struct.stripe* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.stripe*, %struct.stripe** %2, align 8
  %10 = call i32 @StripeRecover(%struct.stripe* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.stripe*, %struct.stripe** %2, align 8
  %15 = getelementptr inbounds %struct.stripe, %struct.stripe* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @RS(%struct.TYPE_4__* %16)
  %18 = call i32 @wake_do_raid(i32 %17)
  br label %22

19:                                               ; preds = %8
  %20 = load %struct.stripe*, %struct.stripe** %2, align 8
  %21 = call i32 @stripe_endio_push(%struct.stripe* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.stripe*, %struct.stripe** %2, align 8
  %24 = getelementptr inbounds %struct.stripe, %struct.stripe* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec(i32* %26)
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.stripe*, %struct.stripe** %2, align 8
  %30 = call i64 @stripe_io_ref(%struct.stripe* %29)
  %31 = icmp slt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @StripeRecover(%struct.stripe*) #1

declare dso_local i32 @wake_do_raid(i32) #1

declare dso_local i32 @RS(%struct.TYPE_4__*) #1

declare dso_local i32 @stripe_endio_push(%struct.stripe*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @stripe_io_ref(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
