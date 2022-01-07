; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_compare_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_compare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ib_cm_compare_data = type { i64, i64 }
%struct.cma_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.in6_addr, %struct.TYPE_5__ }
%struct.in6_addr = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, %struct.ib_cm_compare_data*)* @cma_set_compare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_set_compare_data(i32 %0, %struct.sockaddr* %1, %struct.ib_cm_compare_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.ib_cm_compare_data*, align 8
  %7 = alloca %struct.cma_hdr*, align 8
  %8 = alloca %struct.cma_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.ib_cm_compare_data* %2, %struct.ib_cm_compare_data** %6, align 8
  %11 = load %struct.ib_cm_compare_data*, %struct.ib_cm_compare_data** %6, align 8
  %12 = bitcast %struct.ib_cm_compare_data* %11 to %struct.in6_addr*
  %13 = call i32 @memset(%struct.in6_addr* %12, i32 0, i32 16)
  %14 = load %struct.ib_cm_compare_data*, %struct.ib_cm_compare_data** %6, align 8
  %15 = getelementptr inbounds %struct.ib_cm_compare_data, %struct.ib_cm_compare_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.cma_hdr*
  store %struct.cma_hdr* %18, %struct.cma_hdr** %7, align 8
  %19 = load %struct.ib_cm_compare_data*, %struct.ib_cm_compare_data** %6, align 8
  %20 = getelementptr inbounds %struct.ib_cm_compare_data, %struct.ib_cm_compare_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.cma_hdr*
  store %struct.cma_hdr* %23, %struct.cma_hdr** %8, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %76 [
    i32 129, label %27
    i32 128, label %52
  ]

27:                                               ; preds = %3
  %28 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_in*
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cma_hdr*, %struct.cma_hdr** %7, align 8
  %34 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %33, i32 4)
  %35 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %36 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %35, i32 15)
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = call i32 @cma_any_addr(%struct.sockaddr* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.cma_hdr*, %struct.cma_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = call i32 @htonl(i32 -1)
  %47 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %48 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %51

51:                                               ; preds = %40, %27
  br label %77

52:                                               ; preds = %3
  %53 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %54 = bitcast %struct.sockaddr* %53 to %struct.sockaddr_in6*
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 0
  %56 = bitcast %struct.in6_addr* %10 to i8*
  %57 = bitcast %struct.in6_addr* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load %struct.cma_hdr*, %struct.cma_hdr** %7, align 8
  %59 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %58, i32 6)
  %60 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %61 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %60, i32 15)
  %62 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %63 = call i32 @cma_any_addr(%struct.sockaddr* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %52
  %66 = load %struct.cma_hdr*, %struct.cma_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = bitcast %struct.in6_addr* %68 to i8*
  %70 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %72 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @memset(%struct.in6_addr* %73, i32 255, i32 16)
  br label %75

75:                                               ; preds = %65, %52
  br label %77

76:                                               ; preds = %3
  br label %77

77:                                               ; preds = %76, %75, %51
  ret void
}

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @cma_set_ip_ver(%struct.cma_hdr*, i32) #1

declare dso_local i32 @cma_any_addr(%struct.sockaddr*) #1

declare dso_local i32 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
