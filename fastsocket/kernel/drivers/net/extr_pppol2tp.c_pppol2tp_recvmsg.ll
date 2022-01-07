; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.sk_buff = type { i64 }

@EIO = common dso_local global i32 0, align 4
@PPPOX_BOUND = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @pppol2tp_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sock*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %13, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.sock*, %struct.sock** %13, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PPPOX_BOUND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %82

26:                                               ; preds = %5
  %27 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  store i32 0, i32* %11, align 4
  %29 = load %struct.sock*, %struct.sock** %13, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MSG_DONTWAIT, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MSG_DONTWAIT, align 4
  %36 = and i32 %34, %35
  %37 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %29, i32 %33, i32 %36, i32* %11)
  store %struct.sk_buff* %37, %struct.sk_buff** %12, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  br label %82

41:                                               ; preds = %26
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  br label %64

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @MSG_TRUNC, align 4
  %59 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %67 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %65, i32 0, i32 %68, i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %79, %40, %25
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
