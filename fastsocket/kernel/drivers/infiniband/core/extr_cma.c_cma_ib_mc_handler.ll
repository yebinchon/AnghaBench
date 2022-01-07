; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_ib_mc_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_ib_mc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { %struct.TYPE_9__, %struct.cma_multicast* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.cma_multicast = type { i32, %struct.rdma_id_private* }
%struct.rdma_id_private = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.rdma_cm_event*)*, i32, i32, i64 }
%struct.rdma_cm_event = type opaque
%struct.rdma_cm_event.0 = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@RDMA_CM_ADDR_BOUND = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_MULTICAST_JOIN = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_MULTICAST_ERROR = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @cma_ib_mc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_mc_handler(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_multicast*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.cma_multicast*, align 8
  %8 = alloca %struct.rdma_cm_event.0, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %5, align 8
  %10 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %11 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %10, i32 0, i32 1
  %12 = load %struct.cma_multicast*, %struct.cma_multicast** %11, align 8
  store %struct.cma_multicast* %12, %struct.cma_multicast** %7, align 8
  %13 = load %struct.cma_multicast*, %struct.cma_multicast** %7, align 8
  %14 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %13, i32 0, i32 1
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %14, align 8
  store %struct.rdma_id_private* %15, %struct.rdma_id_private** %6, align 8
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %17 = load i32, i32* @RDMA_CM_ADDR_BOUND, align 4
  %18 = call i64 @cma_disable_callback(%struct.rdma_id_private* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %22 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %23 = call i64 @cma_disable_callback(%struct.rdma_id_private* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %134

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %31 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = call i32 @cma_set_qkey(%struct.rdma_id_private* %30, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %39 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %38, i32 0, i32 2
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %37
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %45 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %51 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %55 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %58 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be16_to_cpu(i32 %60)
  %62 = call i32 @ib_attach_mcast(i64 %53, i32* %56, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %49, %43, %37
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %65 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = call i32 @memset(%struct.rdma_cm_event.0* %8, i32 0, i32 24)
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.cma_multicast*, %struct.cma_multicast** %7, align 8
  %71 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %63
  %79 = load i32, i32* @RDMA_CM_EVENT_MULTICAST_JOIN, align 4
  %80 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %82 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %86 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %90 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = call i32 @ib_init_ah_from_mcmember(i32 %84, i32 %88, %struct.TYPE_9__* %90, i32* %93)
  %95 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 16777215, i32* %97, align 4
  %98 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %99 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %109

106:                                              ; preds = %63
  %107 = load i32, i32* @RDMA_CM_EVENT_MULTICAST_ERROR, align 4
  %108 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %78
  %110 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %111 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_8__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_8__*, %struct.rdma_cm_event*)** %112, align 8
  %114 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %115 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %114, i32 0, i32 1
  %116 = bitcast %struct.rdma_cm_event.0* %8 to %struct.rdma_cm_event*
  %117 = call i32 %113(%struct.TYPE_8__* %115, %struct.rdma_cm_event* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %109
  %121 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %122 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %123 = call i32 @cma_exch(%struct.rdma_id_private* %121, i32 %122)
  %124 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %125 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %128 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %127, i32 0, i32 1
  %129 = call i32 @rdma_destroy_id(%struct.TYPE_8__* %128)
  store i32 0, i32* %3, align 4
  br label %134

130:                                              ; preds = %109
  %131 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %132 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %120, %25
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @cma_disable_callback(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_attach_mcast(i64, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local i32 @ib_init_ah_from_mcmember(i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
