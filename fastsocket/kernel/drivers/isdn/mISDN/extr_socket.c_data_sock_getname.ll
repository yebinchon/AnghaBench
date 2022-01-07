; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_socket.c_data_sock_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_socket.c_data_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_mISDN = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EBADFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @data_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_mISDN*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_mISDN*
  store %struct.sockaddr_mISDN* %13, %struct.sockaddr_mISDN** %10, align 8
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %11, align 8
  %18 = call %struct.TYPE_6__* @_pms(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EBADFD, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %63

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = call i32 @lock_sock(%struct.sock* %26)
  %28 = load i32*, i32** %8, align 8
  store i32 16, i32* %28, align 4
  %29 = load %struct.sock*, %struct.sock** %11, align 8
  %30 = call %struct.TYPE_6__* @_pms(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr_mISDN, %struct.sockaddr_mISDN* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sock*, %struct.sock** %11, align 8
  %38 = call %struct.TYPE_6__* @_pms(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_mISDN, %struct.sockaddr_mISDN* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sock*, %struct.sock** %11, align 8
  %45 = call %struct.TYPE_6__* @_pms(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  %50 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %10, align 8
  %51 = getelementptr inbounds %struct.sockaddr_mISDN, %struct.sockaddr_mISDN* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sock*, %struct.sock** %11, align 8
  %53 = call %struct.TYPE_6__* @_pms(%struct.sock* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_mISDN, %struct.sockaddr_mISDN* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sock*, %struct.sock** %11, align 8
  %62 = call i32 @release_sock(%struct.sock* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %25, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_6__* @_pms(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
