; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_iboe_set_mgid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_iboe_set_mgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%union.ib_gid = type { i32* }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, %union.ib_gid*)* @cma_iboe_set_mgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_iboe_set_mgid(%struct.sockaddr* %0, %union.ib_gid* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %union.ib_gid*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store %union.ib_gid* %1, %union.ib_gid** %4, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %8 = bitcast %struct.sockaddr* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %8, %struct.sockaddr_in** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %12 = call i64 @cma_any_addr(%struct.sockaddr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %16 = call i32 @memset(%union.ib_gid* %15, i32 0, i32 8)
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %25 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  %27 = call i32 @memcpy(%union.ib_gid* %24, i32* %26, i32 8)
  br label %85

28:                                               ; preds = %17
  %29 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %30 = bitcast %union.ib_gid* %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 255, i32* %32, align 4
  %33 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %34 = bitcast %union.ib_gid* %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 14, i32* %36, align 4
  %37 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %38 = bitcast %union.ib_gid* %37 to i32**
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 0, i32* %40, align 4
  %41 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %42 = bitcast %union.ib_gid* %41 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 0, i32* %44, align 4
  %45 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %46 = bitcast %union.ib_gid* %45 to i32**
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 0, i32* %48, align 4
  %49 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %50 = bitcast %union.ib_gid* %49 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 0, i32* %52, align 4
  %53 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %54 = bitcast %union.ib_gid* %53 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 0, i32* %56, align 4
  %57 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %58 = bitcast %union.ib_gid* %57 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  store i32 0, i32* %60, align 4
  %61 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %62 = bitcast %union.ib_gid* %61 to i32**
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  store i32 0, i32* %64, align 4
  %65 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %66 = bitcast %union.ib_gid* %65 to i32**
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 9
  store i32 0, i32* %68, align 4
  %69 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %70 = bitcast %union.ib_gid* %69 to i32**
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 10
  store i32 255, i32* %72, align 4
  %73 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %74 = bitcast %union.ib_gid* %73 to i32**
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 11
  store i32 255, i32* %76, align 4
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %82 = bitcast %union.ib_gid* %81 to i32**
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 12
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %28, %23
  br label %86

86:                                               ; preds = %85, %14
  ret void
}

declare dso_local i64 @cma_any_addr(%struct.sockaddr*) #1

declare dso_local i32 @memset(%union.ib_gid*, i32, i32) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
