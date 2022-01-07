; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_sock_to_tunnel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_sock_to_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppol2tp_tunnel = type { i64 }
%struct.sock = type { i64 }

@L2TP_TUNNEL_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pppol2tp_tunnel* (%struct.sock*)* @pppol2tp_sock_to_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pppol2tp_tunnel* @pppol2tp_sock_to_tunnel(%struct.sock* %0) #0 {
  %2 = alloca %struct.pppol2tp_tunnel*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.pppol2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = icmp eq %struct.sock* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.pppol2tp_tunnel* null, %struct.pppol2tp_tunnel** %2, align 8
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @sock_hold(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.pppol2tp_tunnel*
  store %struct.pppol2tp_tunnel* %14, %struct.pppol2tp_tunnel** %4, align 8
  %15 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %16 = icmp eq %struct.pppol2tp_tunnel* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @sock_put(%struct.sock* %18)
  br label %28

20:                                               ; preds = %8
  %21 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %22 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @L2TP_TUNNEL_MAGIC, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  br label %28

28:                                               ; preds = %20, %17
  %29 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  store %struct.pppol2tp_tunnel* %29, %struct.pppol2tp_tunnel** %2, align 8
  br label %30

30:                                               ; preds = %28, %7
  %31 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %2, align 8
  ret %struct.pppol2tp_tunnel* %31
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
