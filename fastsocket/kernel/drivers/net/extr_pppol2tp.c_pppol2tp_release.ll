; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32 }
%struct.pppol2tp_session = type { i32 }
%struct.sk_buff = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @pppol2tp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.pppol2tp_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load i32, i32* @EBADF, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = load i32, i32* @SOCK_DEAD, align 4
  %21 = call i64 @sock_flag(%struct.sock* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %63

24:                                               ; preds = %14
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @pppox_unbind_sock(%struct.sock* %25)
  %27 = load i32, i32* @PPPOX_DEAD, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 @sock_orphan(%struct.sock* %30)
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %33, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call %struct.pppol2tp_session* @pppol2tp_sock_to_session(%struct.sock* %34)
  store %struct.pppol2tp_session* %35, %struct.pppol2tp_session** %5, align 8
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = call i32 @skb_queue_purge(i32* %37)
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = call i32 @skb_queue_purge(i32* %40)
  %42 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %5, align 8
  %43 = icmp ne %struct.pppol2tp_session* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %50, %44
  %46 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %5, align 8
  %47 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %46, i32 0, i32 0
  %48 = call %struct.sk_buff* @skb_dequeue(i32* %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %7, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i32 @sock_put(%struct.sock* %53)
  br label %45

55:                                               ; preds = %45
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call i32 @sock_put(%struct.sock* %56)
  br label %58

58:                                               ; preds = %55, %24
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 @release_sock(%struct.sock* %59)
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = call i32 @sock_put(%struct.sock* %61)
  store i32 0, i32* %2, align 4
  br label %67

63:                                               ; preds = %23
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @release_sock(%struct.sock* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %58, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local %struct.pppol2tp_session* @pppol2tp_sock_to_session(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
