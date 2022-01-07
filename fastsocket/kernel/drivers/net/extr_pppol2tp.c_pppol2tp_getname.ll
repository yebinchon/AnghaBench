; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_pppol2tp = type { %struct.sockaddr, i32, i32 }
%struct.pppol2tp_session = type { %struct.sockaddr_pppol2tp }

@ENOTCONN = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@AF_PPPOX = common dso_local global i32 0, align 4
@PX_PROTO_OL2TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @pppol2tp_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_pppol2tp, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pppol2tp_session*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 12, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @ENOTCONN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PPPOX_CONNECTED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %51

23:                                               ; preds = %4
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call %struct.pppol2tp_session* @pppol2tp_sock_to_session(%struct.TYPE_3__* %26)
  store %struct.pppol2tp_session* %27, %struct.pppol2tp_session** %12, align 8
  %28 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %12, align 8
  %29 = icmp eq %struct.pppol2tp_session* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EBADF, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %51

33:                                               ; preds = %23
  %34 = load i32, i32* @AF_PPPOX, align 4
  %35 = getelementptr inbounds %struct.sockaddr_pppol2tp, %struct.sockaddr_pppol2tp* %10, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @PX_PROTO_OL2TP, align 4
  %37 = getelementptr inbounds %struct.sockaddr_pppol2tp, %struct.sockaddr_pppol2tp* %10, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.sockaddr_pppol2tp, %struct.sockaddr_pppol2tp* %10, i32 0, i32 0
  %39 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %12, align 8
  %40 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %39, i32 0, i32 0
  %41 = call i32 @memcpy(%struct.sockaddr* %38, %struct.sockaddr_pppol2tp* %40, i32 4)
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @memcpy(%struct.sockaddr* %42, %struct.sockaddr_pppol2tp* %10, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %11, align 4
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @sock_put(%struct.TYPE_3__* %49)
  br label %51

51:                                               ; preds = %33, %30, %22
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local %struct.pppol2tp_session* @pppol2tp_sock_to_session(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_pppol2tp*, i32) #1

declare dso_local i32 @sock_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
