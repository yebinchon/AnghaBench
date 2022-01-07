; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_offload_pg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_offload_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64, i32, i32*, i32, %struct.cnic_dev* }
%struct.cnic_dev = type { i32 (%struct.cnic_dev*, %struct.kwqe**, i32)*, i32* }
%struct.kwqe = type { i32 }
%struct.l4_kwq_offload_pg = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@L4_KWQE_OPCODE_VALUE_OFFLOAD_PG = common dso_local global i32 0, align 4
@L4_LAYER_CODE = common dso_local global i32 0, align 4
@L4_KWQ_OFFLOAD_PG_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@DEF_IPID_START = common dso_local global i32 0, align 4
@L4_KWQ_OFFLOAD_PG_VLAN_TAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_cm_offload_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_offload_pg(%struct.cnic_sock* %0) #0 {
  %2 = alloca %struct.cnic_sock*, align 8
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.l4_kwq_offload_pg*, align 8
  %5 = alloca [1 x %struct.kwqe*], align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %2, align 8
  %6 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %6, i32 0, i32 4
  %8 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  store %struct.cnic_dev* %8, %struct.cnic_dev** %3, align 8
  %9 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %9, i32 0, i32 3
  %11 = bitcast i32* %10 to %struct.l4_kwq_offload_pg*
  store %struct.l4_kwq_offload_pg* %11, %struct.l4_kwq_offload_pg** %4, align 8
  %12 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %13 = call i32 @memset(%struct.l4_kwq_offload_pg* %12, i32 0, i32 88)
  %14 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %15 = bitcast %struct.l4_kwq_offload_pg* %14 to %struct.kwqe*
  %16 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %5, i64 0, i64 0
  store %struct.kwqe* %15, %struct.kwqe** %16, align 8
  %17 = load i32, i32* @L4_KWQE_OPCODE_VALUE_OFFLOAD_PG, align 4
  %18 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %19 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %18, i32 0, i32 19
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @L4_LAYER_CODE, align 4
  %21 = load i32, i32* @L4_KWQ_OFFLOAD_PG_LAYER_CODE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %24 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @ETH_HLEN, align 4
  %26 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %27 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %29 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %34 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %33, i32 0, i32 18
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %36 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %41 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %40, i32 0, i32 17
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %43 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %48 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %47, i32 0, i32 16
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %50 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %55 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %57 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %62 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %61, i32 0, i32 14
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %64 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %69 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %71 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %76 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %78 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %83 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 8
  %84 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %85 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %90 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 4
  %91 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %92 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %97 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  %98 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %99 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %104 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %106 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %111 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @ETH_P_IP, align 4
  %113 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %114 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DEF_IPID_START, align 4
  %116 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %117 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %119 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %122 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %124 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %1
  %128 = load i32, i32* @L4_KWQ_OFFLOAD_PG_VLAN_TAGGING, align 4
  %129 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %130 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %134 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %137 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %4, align 8
  %139 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %127, %1
  %143 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %144 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %143, i32 0, i32 0
  %145 = load i32 (%struct.cnic_dev*, %struct.kwqe**, i32)*, i32 (%struct.cnic_dev*, %struct.kwqe**, i32)** %144, align 8
  %146 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %147 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %5, i64 0, i64 0
  %148 = call i32 %145(%struct.cnic_dev* %146, %struct.kwqe** %147, i32 1)
  ret i32 %148
}

declare dso_local i32 @memset(%struct.l4_kwq_offload_pg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
