; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_socket.c_base_sock_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_socket.c_base_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.sock = type { i32, i32 }

@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_ISDN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mISDN_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@base_sock_ops = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@MISDN_OPEN = common dso_local global i32 0, align 4
@base_sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32)* @base_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.socket*, %struct.socket** %6, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SOCK_RAW, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = load i32, i32* @PF_ISDN, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sock* @sk_alloc(%struct.net* %18, i32 %19, i32 %20, i32* @mISDN_proto)
  store %struct.sock* %21, %struct.sock** %8, align 8
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %17
  %28 = load %struct.socket*, %struct.socket** %6, align 8
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = call i32 @sock_init_data(%struct.socket* %28, %struct.sock* %29)
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 2
  store i32* @base_sock_ops, i32** %32, align 8
  %33 = load i32, i32* @SS_UNCONNECTED, align 4
  %34 = load %struct.socket*, %struct.socket** %6, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = load i32, i32* @SOCK_ZAPPED, align 4
  %38 = call i32 @sock_reset_flag(%struct.sock* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MISDN_OPEN, align 4
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = call i32 @mISDN_sock_link(i32* @base_sockets, %struct.sock* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %27, %24, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @mISDN_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
