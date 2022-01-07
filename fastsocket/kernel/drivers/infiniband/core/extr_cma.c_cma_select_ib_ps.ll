; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_select_ib_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_select_ib_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.rdma_id_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_ib = type { i8*, i8* }
%struct.sockaddr = type { i32 }

@RDMA_IB_IP_PS_MASK = common dso_local global i32 0, align 4
@RDMA_PS_IB = common dso_local global i64 0, align 8
@RDMA_IB_IP_PS_IB = common dso_local global i32 0, align 4
@ib_ps = common dso_local global %struct.idr zeroinitializer, align 4
@RDMA_PS_TCP = common dso_local global i64 0, align 8
@RDMA_IB_IP_PS_TCP = common dso_local global i32 0, align 4
@tcp_ps = common dso_local global %struct.idr zeroinitializer, align 4
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@RDMA_IB_IP_PS_UDP = common dso_local global i32 0, align 4
@udp_ps = common dso_local global %struct.idr zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idr* (%struct.rdma_id_private*)* @cma_select_ib_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idr* @cma_select_ib_ps(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  %3 = alloca %struct.idr*, align 8
  %4 = alloca %struct.sockaddr_ib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  store %struct.idr* null, %struct.idr** %3, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %9 = call i64 @cma_src_addr(%struct.rdma_id_private* %8)
  %10 = inttoptr i64 %9 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %10, %struct.sockaddr_ib** %4, align 8
  %11 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @be64_to_cpu(i8* %13)
  %15 = load i32, i32* @RDMA_IB_IP_PS_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @be64_to_cpu(i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RDMA_PS_IB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RDMA_IB_IP_PS_IB, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @RDMA_IB_IP_PS_IB, align 4
  store i32 %36, i32* %5, align 4
  store %struct.idr* @ib_ps, %struct.idr** %3, align 8
  br label %83

37:                                               ; preds = %29, %1
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %39 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RDMA_PS_IB, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %46 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RDMA_PS_TCP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RDMA_IB_IP_PS_TCP, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @RDMA_IB_IP_PS_TCP, align 4
  store i32 %58, i32* %5, align 4
  store %struct.idr* @tcp_ps, %struct.idr** %3, align 8
  br label %82

59:                                               ; preds = %51, %44
  %60 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %61 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RDMA_PS_IB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %68 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RDMA_PS_UDP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66, %59
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @RDMA_IB_IP_PS_UDP, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @RDMA_IB_IP_PS_UDP, align 4
  store i32 %80, i32* %5, align 4
  store %struct.idr* @udp_ps, %struct.idr** %3, align 8
  br label %81

81:                                               ; preds = %79, %73, %66
  br label %82

82:                                               ; preds = %81, %57
  br label %83

83:                                               ; preds = %82, %35
  %84 = load %struct.idr*, %struct.idr** %3, align 8
  %85 = icmp ne %struct.idr* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %89 = bitcast %struct.sockaddr_ib* %88 to %struct.sockaddr*
  %90 = call i32 @cma_port(%struct.sockaddr* %89)
  %91 = call i32 @ntohs(i32 %90)
  %92 = or i32 %87, %91
  %93 = call i8* @cpu_to_be64(i32 %92)
  %94 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %95 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @RDMA_IB_IP_PS_MASK, align 4
  %97 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %98 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @be64_to_cpu(i8* %99)
  %101 = or i32 %96, %100
  %102 = call i8* @cpu_to_be64(i32 %101)
  %103 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %104 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %86, %83
  %106 = load %struct.idr*, %struct.idr** %3, align 8
  ret %struct.idr* %106
}

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @cma_port(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
