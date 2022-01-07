; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_addr4_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_addr4_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.rdma_dev_addr = type { i32, i32, i32 }
%struct.flowi = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.rtable = type { %struct.TYPE_14__, %struct.TYPE_12__*, i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.neighbour = type { i32, i32*, %struct.TYPE_15__* }
%struct.sockaddr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.rdma_dev_addr*)* @addr4_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr4_resolve(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1, %struct.rdma_dev_addr* %2) #0 {
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.rdma_dev_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.flowi, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %6, align 8
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = call i32 @memset(%struct.flowi* %9, i32 0, i32 24)
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %31 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = call i32 @ip_route_output_key(i32* @init_net, %struct.rtable** %10, %struct.flowi* %9)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %140

38:                                               ; preds = %3
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rtable*, %struct.rtable** %10, align 8
  %43 = getelementptr inbounds %struct.rtable, %struct.rtable* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.rtable*, %struct.rtable** %10, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_LOOPBACK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %38
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %60 = bitcast %struct.sockaddr_in* %59 to %struct.sockaddr*
  %61 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %62 = call i32 @rdma_translate_ip(%struct.sockaddr* %60, %struct.rdma_dev_addr* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %67 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %70 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX_ADDR_LEN, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %58
  br label %137

75:                                               ; preds = %38
  %76 = load %struct.rtable*, %struct.rtable** %10, align 8
  %77 = getelementptr inbounds %struct.rtable, %struct.rtable* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IFF_NOARP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %88 = load %struct.rtable*, %struct.rtable** %10, align 8
  %89 = getelementptr inbounds %struct.rtable, %struct.rtable* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = call i32 @rdma_copy_addr(%struct.rdma_dev_addr* %87, %struct.TYPE_15__* %92, i32* null)
  br label %137

94:                                               ; preds = %75
  %95 = load %struct.rtable*, %struct.rtable** %10, align 8
  %96 = getelementptr inbounds %struct.rtable, %struct.rtable* %95, i32 0, i32 2
  %97 = load %struct.rtable*, %struct.rtable** %10, align 8
  %98 = getelementptr inbounds %struct.rtable, %struct.rtable* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %96, %struct.TYPE_15__* %101)
  store %struct.neighbour* %102, %struct.neighbour** %11, align 8
  %103 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %104 = icmp ne %struct.neighbour* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %107 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NUD_VALID, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %105, %94
  %113 = load %struct.rtable*, %struct.rtable** %10, align 8
  %114 = getelementptr inbounds %struct.rtable, %struct.rtable* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @neigh_event_send(i32 %117, i32* null)
  %119 = load i32, i32* @ENODATA, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %12, align 4
  %121 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %122 = icmp ne %struct.neighbour* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %134

124:                                              ; preds = %112
  br label %137

125:                                              ; preds = %105
  %126 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %127 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %128 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %127, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %131 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @rdma_copy_addr(%struct.rdma_dev_addr* %126, %struct.TYPE_15__* %129, i32* %132)
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %125, %123
  %135 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %136 = call i32 @neigh_release(%struct.neighbour* %135)
  br label %137

137:                                              ; preds = %134, %124, %86, %74
  %138 = load %struct.rtable*, %struct.rtable** %10, align 8
  %139 = call i32 @ip_rt_put(%struct.rtable* %138)
  br label %140

140:                                              ; preds = %137, %37
  %141 = load i32, i32* %12, align 4
  ret i32 %141
}

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ip_route_output_key(i32*, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @rdma_translate_ip(%struct.sockaddr*, %struct.rdma_dev_addr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rdma_copy_addr(%struct.rdma_dev_addr*, %struct.TYPE_15__*, i32*) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @neigh_event_send(i32, i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
