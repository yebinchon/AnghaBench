; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_port_user.c_port_listen_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_port_user.c_port_listen_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @port_listen_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @PF_INET, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SOL_SOCKET, align 4
  %19 = load i32, i32* @SO_REUSEADDR, align 4
  %20 = call i64 @setsockopt(i32 %17, i32 %18, i32 %19, i32* %7, i32 4)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %57

25:                                               ; preds = %16
  %26 = load i32, i32* @AF_INET, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @INADDR_ANY, align 4
  %32 = call i32 @htonl(i32 %31)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %37 = call i64 @bind(i32 %35, %struct.sockaddr* %36, i32 12)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %57

42:                                               ; preds = %25
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @listen(i32 %43, i32 1)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @os_set_fd_block(i32 %50, i32 0)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %54, %46, %39, %22
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %55, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @os_set_fd_block(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
