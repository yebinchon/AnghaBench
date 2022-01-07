; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32* }
%struct.pppol2tp_session = type { %struct.sock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pppol2tp_tunnel = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@PPPOX_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i64)* @pppol2tp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_ioctl(%struct.socket* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pppol2tp_session*, align 8
  %10 = alloca %struct.pppol2tp_tunnel*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %8, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load i32, i32* @EBADF, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = load i32, i32* @SOCK_DEAD, align 4
  %23 = call i64 @sock_flag(%struct.sock* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %90

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOTCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PPPOX_CONNECTED, align 4
  %38 = load i32, i32* @PPPOX_BOUND, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33, %26
  br label %90

43:                                               ; preds = %33
  %44 = load i32, i32* @EBADF, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = call %struct.pppol2tp_session* @pppol2tp_sock_to_session(%struct.sock* %46)
  store %struct.pppol2tp_session* %47, %struct.pppol2tp_session** %9, align 8
  %48 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %9, align 8
  %49 = icmp eq %struct.pppol2tp_session* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %90

51:                                               ; preds = %43
  %52 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %9, align 8
  %53 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %9, align 8
  %59 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load i32, i32* @EBADF, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %9, align 8
  %67 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %66, i32 0, i32 0
  %68 = load %struct.sock*, %struct.sock** %67, align 8
  %69 = call %struct.pppol2tp_tunnel* @pppol2tp_sock_to_tunnel(%struct.sock* %68)
  store %struct.pppol2tp_tunnel* %69, %struct.pppol2tp_tunnel** %10, align 8
  %70 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %10, align 8
  %71 = icmp eq %struct.pppol2tp_tunnel* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %87

73:                                               ; preds = %63
  %74 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @pppol2tp_tunnel_ioctl(%struct.pppol2tp_tunnel* %74, i32 %75, i64 %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %9, align 8
  %79 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %78, i32 0, i32 0
  %80 = load %struct.sock*, %struct.sock** %79, align 8
  %81 = call i32 @sock_put(%struct.sock* %80)
  br label %87

82:                                               ; preds = %57, %51
  %83 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %9, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @pppol2tp_session_ioctl(%struct.pppol2tp_session* %83, i32 %84, i64 %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %73, %72
  %88 = load %struct.sock*, %struct.sock** %8, align 8
  %89 = call i32 @sock_put(%struct.sock* %88)
  br label %90

90:                                               ; preds = %87, %50, %42, %25
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %17
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.pppol2tp_session* @pppol2tp_sock_to_session(%struct.sock*) #1

declare dso_local %struct.pppol2tp_tunnel* @pppol2tp_sock_to_tunnel(%struct.sock*) #1

declare dso_local i32 @pppol2tp_tunnel_ioctl(%struct.pppol2tp_tunnel*, i32, i64) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @pppol2tp_session_ioctl(%struct.pppol2tp_session*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
