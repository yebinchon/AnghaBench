; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @stripe_recover_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_recover_rw(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.stripe*, %struct.stripe** %2, align 8
  %6 = call i64 @TestClearStripeRBW(%struct.stripe* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.stripe*, %struct.stripe** %2, align 8
  %10 = call i32 @SetStripeMerged(%struct.stripe* %9)
  %11 = load %struct.stripe*, %struct.stripe** %2, align 8
  %12 = getelementptr inbounds %struct.stripe, %struct.stripe* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.stripe*, %struct.stripe** %2, align 8
  %17 = getelementptr inbounds %struct.stripe, %struct.stripe* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.stripe*, %struct.stripe** %2, align 8
  %19 = load %struct.stripe*, %struct.stripe** %2, align 8
  %20 = call i32 @dev_for_parity(%struct.stripe* %19, i32* %4)
  %21 = call i32 @stripe_recover_read(%struct.stripe* %18, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.stripe*, %struct.stripe** %2, align 8
  %29 = call i64 @TestClearStripeMerged(%struct.stripe* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.stripe*, %struct.stripe** %2, align 8
  %33 = load %struct.stripe*, %struct.stripe** %2, align 8
  %34 = call i32 @dev_for_parity(%struct.stripe* %33, i32* %4)
  %35 = call i32 @stripe_recover_write(%struct.stripe* %32, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  br label %41

41:                                               ; preds = %31, %27
  br label %42

42:                                               ; preds = %41, %8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @TestClearStripeRBW(%struct.stripe*) #1

declare dso_local i32 @SetStripeMerged(%struct.stripe*) #1

declare dso_local i32 @stripe_recover_read(%struct.stripe*, i32) #1

declare dso_local i32 @dev_for_parity(%struct.stripe*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @TestClearStripeMerged(%struct.stripe*) #1

declare dso_local i32 @stripe_recover_write(%struct.stripe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
