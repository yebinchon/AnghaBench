; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_endios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_endios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.stripe_cache }
%struct.stripe_cache = type { i64 }
%struct.stripe = type { i32 }
%struct.list_head = type { i32 }

@LIST_FLUSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @do_endios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_endios(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca %struct.stripe_cache*, align 8
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca %struct.list_head, align 4
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %6 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 0
  store %struct.stripe_cache* %7, %struct.stripe_cache** %3, align 8
  %8 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.stripe_cache*, %struct.stripe_cache** %3, align 8
  %11 = call %struct.stripe* @stripe_endio_pop(%struct.stripe_cache* %10)
  store %struct.stripe* %11, %struct.stripe** %4, align 8
  %12 = icmp ne %struct.stripe* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.stripe*, %struct.stripe** %4, align 8
  %15 = call i32 @stripe_io_ref(%struct.stripe* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %19 = load %struct.stripe*, %struct.stripe** %4, align 8
  %20 = call i32 @_do_endios(%struct.raid_set* %18, %struct.stripe* %19, %struct.list_head* %5)
  br label %21

21:                                               ; preds = %17, %13
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.stripe_cache*, %struct.stripe_cache** %3, align 8
  %24 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LIST_FLUSH, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @list_splice(%struct.list_head* %5, i64 %27)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.stripe* @stripe_endio_pop(%struct.stripe_cache*) #1

declare dso_local i32 @stripe_io_ref(%struct.stripe*) #1

declare dso_local i32 @_do_endios(%struct.raid_set*, %struct.stripe*, %struct.list_head*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
