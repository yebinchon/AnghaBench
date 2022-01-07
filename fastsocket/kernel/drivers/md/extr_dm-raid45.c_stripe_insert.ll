; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_hash = type { i32 }
%struct.stripe = type { i32, i64 }

@LIST_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_hash*, %struct.stripe*)* @stripe_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_insert(%struct.stripe_hash* %0, %struct.stripe* %1) #0 {
  %3 = alloca %struct.stripe_hash*, align 8
  %4 = alloca %struct.stripe*, align 8
  store %struct.stripe_hash* %0, %struct.stripe_hash** %3, align 8
  store %struct.stripe* %1, %struct.stripe** %4, align 8
  %5 = load %struct.stripe*, %struct.stripe** %4, align 8
  %6 = getelementptr inbounds %struct.stripe, %struct.stripe* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LIST_HASH, align 8
  %9 = add nsw i64 %7, %8
  %10 = load %struct.stripe_hash*, %struct.stripe_hash** %3, align 8
  %11 = load %struct.stripe*, %struct.stripe** %4, align 8
  %12 = getelementptr inbounds %struct.stripe, %struct.stripe* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @hash_bucket(%struct.stripe_hash* %10, i32 %13)
  %15 = call i32 @list_add(i64 %9, i32 %14)
  ret void
}

declare dso_local i32 @list_add(i64, i32) #1

declare dso_local i32 @hash_bucket(%struct.stripe_hash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
