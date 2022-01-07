; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32*, i32 }
%struct.sock = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PF_PPPOX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pppol2tp_sk_proto = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@pppol2tp_ops = common dso_local global i32 0, align 4
@pppol2tp_recv_core = common dso_local global i32 0, align 4
@PX_PROTO_OL2TP = common dso_local global i32 0, align 4
@PPPOX_NONE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@pppol2tp_session_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*)* @pppol2tp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_create(%struct.net* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load i32, i32* @PF_PPPOX, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sock* @sk_alloc(%struct.net* %9, i32 %10, i32 %11, i32* @pppol2tp_sk_proto)
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call i32 @sock_init_data(%struct.socket* %17, %struct.sock* %18)
  %20 = load i32, i32* @SS_UNCONNECTED, align 4
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.socket*, %struct.socket** %4, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  store i32* @pppol2tp_ops, i32** %24, align 8
  %25 = load i32, i32* @pppol2tp_recv_core, align 4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @PX_PROTO_OL2TP, align 4
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PF_PPPOX, align 4
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @PPPOX_NONE, align 4
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @pppol2tp_session_destruct, align 4
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %16, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
