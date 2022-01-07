; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, i32 }
%struct.stripe_head_state = type { i32 }

@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, %struct.stripe_head_state*, i32)* @handle_stripe_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe_fill(%struct.stripe_head* %0, %struct.stripe_head_state* %1, i32 %2) #0 {
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.stripe_head_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %4, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %9 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %10 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %13
  %19 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %37, %23
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %31 = load %struct.stripe_head_state*, %struct.stripe_head_state** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @fetch_block(%struct.stripe_head* %30, %struct.stripe_head_state* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %38

37:                                               ; preds = %29
  br label %25

38:                                               ; preds = %36, %25
  br label %39

39:                                               ; preds = %38, %18, %13, %3
  %40 = load i32, i32* @STRIPE_HANDLE, align 4
  %41 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %42 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @fetch_block(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
