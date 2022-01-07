; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32, i32, %struct.list_head* }
%struct.list_head = type { i32 }

@LIST_LRU = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @stripe_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_get(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %5 = load %struct.stripe*, %struct.stripe** %2, align 8
  %6 = getelementptr inbounds %struct.stripe, %struct.stripe* %5, i32 0, i32 2
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8
  %8 = load i32, i32* @LIST_LRU, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i64 %9
  store %struct.list_head* %10, %struct.list_head** %4, align 8
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = call i32 @DEL_LIST(%struct.list_head* %11)
  %13 = load %struct.stripe*, %struct.stripe** %2, align 8
  %14 = call i64 @stripe_ref(%struct.stripe* %13)
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.stripe*, %struct.stripe** %2, align 8
  %19 = getelementptr inbounds %struct.stripe, %struct.stripe* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc_return(i32* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.stripe*, %struct.stripe** %2, align 8
  %24 = load i32, i32* @WRITE, align 4
  %25 = load %struct.stripe*, %struct.stripe** %2, align 8
  %26 = getelementptr inbounds %struct.stripe, %struct.stripe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @stripe_lock(%struct.stripe* %23, i32 %24, i32 %27)
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi i32 [ %28, %22 ], [ 0, %29 ]
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @DEL_LIST(%struct.list_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @stripe_ref(%struct.stripe*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @stripe_lock(%struct.stripe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
