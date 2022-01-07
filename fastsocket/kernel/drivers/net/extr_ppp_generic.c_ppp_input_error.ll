; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_input_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_input_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { i32, i64 }
%struct.sk_buff = type { i32*, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppp_input_error(%struct.ppp_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ppp_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ppp_channel*, %struct.ppp_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %7, i32 0, i32 0
  %9 = load %struct.channel*, %struct.channel** %8, align 8
  store %struct.channel* %9, %struct.channel** %5, align 8
  %10 = load %struct.channel*, %struct.channel** %5, align 8
  %11 = icmp ne %struct.channel* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.channel*, %struct.channel** %5, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 0
  %16 = call i32 @read_lock_bh(i32* %15)
  %17 = load %struct.channel*, %struct.channel** %5, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %13
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.channel*, %struct.channel** %5, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.channel*, %struct.channel** %5, align 8
  %39 = call i32 @ppp_do_recv(i64 %36, %struct.sk_buff* %37, %struct.channel* %38)
  br label %40

40:                                               ; preds = %26, %21
  br label %41

41:                                               ; preds = %40, %13
  %42 = load %struct.channel*, %struct.channel** %5, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 0
  %44 = call i32 @read_unlock_bh(i32* %43)
  br label %45

45:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @ppp_do_recv(i64, %struct.sk_buff*, %struct.channel*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
