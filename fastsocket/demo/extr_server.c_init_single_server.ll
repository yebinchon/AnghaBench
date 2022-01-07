; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_single_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_single_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { %struct.in_addr, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to open socket\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to set socket reuseaddr option\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to bind socket\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot listen for client connections\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_single_server(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %4, align 4
  store i32 12, i32* %6, align 4
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @exit_cleanup()
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @F_GETFL, align 4
  %21 = call i32 @fcntl(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @F_SETFL, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @fcntl(i32 %25, i32 %26, i32 %27)
  store i32 1, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SOL_SOCKET, align 4
  %31 = load i32, i32* @SO_REUSEADDR, align 4
  %32 = call i32 @setsockopt(i32 %29, i32 %30, i32 %31, i32* %9, i32 4)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (...) @exit_cleanup()
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @memset(%struct.sockaddr_in* %5, i32 0, i32 %38)
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %46 = bitcast %struct.in_addr* %45 to i8*
  %47 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load i32, i32* %7, align 4
  %49 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @bind(i32 %48, %struct.sockaddr* %49, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (...) @exit_cleanup()
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @listen(i32 %57, i32 8192)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 (...) @exit_cleanup()
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @exit_cleanup(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
