; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_set_av_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_set_av_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_ah = type { %struct.TYPE_8__*, i32, %struct.ocrdma_dev* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ocrdma_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ocrdma_grh* }
%struct.ocrdma_grh = type { i32*, i8*, i8*, i32*, i32*, i32*, i8*, i8*, i8* }
%struct.ib_ah_attr = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.ocrdma_grh* }
%struct.ocrdma_eth_vlan = type { i32*, i8*, i8*, i32*, i32*, i32*, i8*, i8*, i8* }
%union.ib_gid = type { i32 }

@OCRDMA_ROCE_ETH_TYPE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@OCRDMA_AV_VLAN_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_ah*, %struct.ib_ah_attr*, i32)* @set_av_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_av_attr(%struct.ocrdma_ah* %0, %struct.ib_ah_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_ah*, align 8
  %6 = alloca %struct.ib_ah_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_dev*, align 8
  %12 = alloca %struct.ocrdma_eth_vlan, align 8
  %13 = alloca %struct.ocrdma_grh, align 8
  %14 = alloca i32, align 4
  store %struct.ocrdma_ah* %0, %struct.ocrdma_ah** %5, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %16 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %15, i32 0, i32 2
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %16, align 8
  store %struct.ocrdma_dev* %17, %struct.ocrdma_dev** %11, align 8
  %18 = bitcast %struct.ocrdma_eth_vlan* %12 to %struct.ocrdma_grh*
  %19 = call i32 @memset(%struct.ocrdma_grh* %18, i32 0, i32 72)
  %20 = call i32 @memset(%struct.ocrdma_grh* %13, i32 0, i32 72)
  %21 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %26 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %28 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = call i32 @rdma_get_vlan_id(%struct.TYPE_9__* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 4096
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = call i8* @cpu_to_be16(i32 33024)
  %38 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %12, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @OCRDMA_ROCE_ETH_TYPE, align 4
  %40 = call i8* @cpu_to_be16(i32 %39)
  %41 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %12, i32 0, i32 8
  store i8* %40, i8** %41, align 8
  %42 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 7
  %46 = shl i32 %45, 13
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %12, i32 0, i32 7
  store i8* %50, i8** %51, align 8
  store i32 72, i32* %14, align 4
  store i32 1, i32* %10, align 4
  br label %56

52:                                               ; preds = %33, %3
  %53 = load i32, i32* @OCRDMA_ROCE_ETH_TYPE, align 4
  %54 = call i8* @cpu_to_be16(i32 %53)
  %55 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %12, i32 0, i32 6
  store i8* %54, i8** %55, align 8
  store i32 4, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %36
  %57 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %12, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %62, align 8
  %64 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %63, i64 0
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32* %59, %struct.ocrdma_grh* %64, i32 %65)
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %68 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %12, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 @ocrdma_resolve_dgid(%struct.ocrdma_dev* %67, %struct.TYPE_9__* %70, i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %56
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %155

79:                                               ; preds = %56
  %80 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %81 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %80, i32 0, i32 0
  %82 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %13, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = bitcast i32* %88 to %union.ib_gid*
  %90 = call i32 @ocrdma_query_gid(i32* %81, i32 1, i32 %85, %union.ib_gid* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %155

95:                                               ; preds = %79
  %96 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 24
  %101 = or i32 1610612736, %100
  %102 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %103 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %101, %105
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %13, i32 0, i32 2
  store i8* %107, i8** %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %110, 6912
  %112 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %113 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %111, %115
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %13, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %13, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %123 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %125, align 8
  %127 = call i32 @memcpy(i32* %121, %struct.ocrdma_grh* %126, i32 8)
  %128 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %129 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = bitcast %struct.ocrdma_eth_vlan* %12 to %struct.ocrdma_grh*
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @memcpy(i32* %131, %struct.ocrdma_grh* %132, i32 %133)
  %135 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %136 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = bitcast %struct.TYPE_8__* %137 to i32*
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = call i32 @memcpy(i32* %141, %struct.ocrdma_grh* %13, i32 72)
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %95
  %146 = load i32, i32* @OCRDMA_AV_VLAN_VALID, align 4
  %147 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %148 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %145, %95
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %93, %77
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @memset(%struct.ocrdma_grh*, i32, i32) #1

declare dso_local i32 @rdma_get_vlan_id(%struct.TYPE_9__*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ocrdma_grh*, i32) #1

declare dso_local i32 @ocrdma_resolve_dgid(%struct.ocrdma_dev*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ocrdma_query_gid(i32*, i32, i32, %union.ib_gid*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
