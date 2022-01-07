; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_gigaset.h_gigaset_rcv_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_gigaset.h_gigaset_rcv_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cardstate = type { i32 }
%struct.bc_state = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.cardstate*, %struct.bc_state*)* @gigaset_rcv_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_rcv_error(%struct.sk_buff* %0, %struct.cardstate* %1, %struct.bc_state* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca %struct.bc_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cardstate* %1, %struct.cardstate** %5, align 8
  store %struct.bc_state* %2, %struct.bc_state** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @dev_kfree_skb(%struct.sk_buff* %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %14 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  br label %29

22:                                               ; preds = %12
  %23 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %28 = call i32 @gigaset_isdn_rcv_err(%struct.bc_state* %27)
  br label %29

29:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @gigaset_isdn_rcv_err(%struct.bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
