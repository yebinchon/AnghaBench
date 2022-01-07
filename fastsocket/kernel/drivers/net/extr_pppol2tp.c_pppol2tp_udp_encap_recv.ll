; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pppol2tp_tunnel = type { i32, i32 }

@PPPOL2TP_MSG_DATA = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: received %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pppol2tp_udp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_udp_encap_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pppol2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.pppol2tp_tunnel* @pppol2tp_sock_to_tunnel(%struct.sock* %7)
  store %struct.pppol2tp_tunnel* %8, %struct.pppol2tp_tunnel** %6, align 8
  %9 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %10 = icmp eq %struct.pppol2tp_tunnel* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %14 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PPPOL2TP_MSG_DATA, align 4
  %17 = load i32, i32* @KERN_DEBUG, align 4
  %18 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %19 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PRINTK(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @pppol2tp_recv_core(%struct.sock* %25, %struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  br label %33

30:                                               ; preds = %12
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @sock_put(%struct.sock* %31)
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %29
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @sock_put(%struct.sock* %34)
  br label %36

36:                                               ; preds = %33, %11
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.pppol2tp_tunnel* @pppol2tp_sock_to_tunnel(%struct.sock*) #1

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @pppol2tp_recv_core(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
