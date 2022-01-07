; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_mgid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_mgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.sockaddr = type { i64 }
%union.ib_gid = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.sockaddr_ib = type { %struct.TYPE_11__ }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_IB = common dso_local global i64 0, align 8
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*, %struct.sockaddr*, %union.ib_gid*)* @cma_set_mgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_set_mgid(%struct.rdma_id_private* %0, %struct.sockaddr* %1, %union.ib_gid* %2) #0 {
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rdma_dev_addr*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %union.ib_gid* %2, %union.ib_gid** %6, align 8
  %12 = load i32, i32* @MAX_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.rdma_dev_addr* %20, %struct.rdma_dev_addr** %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %10, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %24 = bitcast %struct.sockaddr* %23 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %24, %struct.sockaddr_in6** %11, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = call i64 @cma_any_addr(%struct.sockaddr* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %30 = call i32 @memset(%union.ib_gid* %29, i32 0, i32 4)
  br label %117

31:                                               ; preds = %3
  %32 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = and i32 %44, -983041
  %46 = icmp eq i32 %45, -15687653
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 0
  %51 = call i32 @memcpy(%union.ib_gid* %48, %struct.TYPE_11__* %50, i32 4)
  br label %116

52:                                               ; preds = %37, %31
  %53 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_IB, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %61 = bitcast %struct.sockaddr* %60 to %struct.sockaddr_ib*
  %62 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %61, i32 0, i32 0
  %63 = call i32 @memcpy(%union.ib_gid* %59, %struct.TYPE_11__* %62, i32 4)
  br label %115

64:                                               ; preds = %52
  %65 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AF_INET6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %74 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ipv6_ib_mc_map(%struct.TYPE_11__* %72, i32 %75, i8* %15)
  %77 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %78 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RDMA_PS_UDP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = getelementptr inbounds i8, i8* %15, i64 7
  store i8 1, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %70
  %86 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %87 = getelementptr inbounds i8, i8* %15, i64 4
  %88 = bitcast i8* %87 to %union.ib_gid*
  %89 = bitcast %union.ib_gid* %86 to i8*
  %90 = bitcast %union.ib_gid* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  br label %114

91:                                               ; preds = %64
  %92 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %97 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ip_ib_mc_map(i32 %95, i32 %98, i8* %15)
  %100 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %101 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RDMA_PS_UDP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = getelementptr inbounds i8, i8* %15, i64 7
  store i8 1, i8* %107, align 1
  br label %108

108:                                              ; preds = %106, %91
  %109 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %110 = getelementptr inbounds i8, i8* %15, i64 4
  %111 = bitcast i8* %110 to %union.ib_gid*
  %112 = bitcast %union.ib_gid* %109 to i8*
  %113 = bitcast %union.ib_gid* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  br label %114

114:                                              ; preds = %108, %85
  br label %115

115:                                              ; preds = %114, %58
  br label %116

116:                                              ; preds = %115, %47
  br label %117

117:                                              ; preds = %116, %28
  %118 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @cma_any_addr(%struct.sockaddr*) #2

declare dso_local i32 @memset(%union.ib_gid*, i32, i32) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @memcpy(%union.ib_gid*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @ipv6_ib_mc_map(%struct.TYPE_11__*, i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ip_ib_mc_map(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
