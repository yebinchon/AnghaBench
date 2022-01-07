; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_populate_be_v1_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_populate_be_v1_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, %struct.be_drv_stats }
%struct.be_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_hw_stats_v1 = type { %struct.be_rxf_stats_v1, %struct.be_pmem_stats }
%struct.be_rxf_stats_v1 = type { i32, i32, i32, i32, i32, i32, %struct.be_port_rxf_stats_v1* }
%struct.be_port_rxf_stats_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_pmem_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @populate_be_v1_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_be_v1_stats(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_hw_stats_v1*, align 8
  %4 = alloca %struct.be_pmem_stats*, align 8
  %5 = alloca %struct.be_rxf_stats_v1*, align 8
  %6 = alloca %struct.be_port_rxf_stats_v1*, align 8
  %7 = alloca %struct.be_drv_stats*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %9 = call %struct.be_hw_stats_v1* @hw_stats_from_cmd(%struct.be_adapter* %8)
  store %struct.be_hw_stats_v1* %9, %struct.be_hw_stats_v1** %3, align 8
  %10 = load %struct.be_hw_stats_v1*, %struct.be_hw_stats_v1** %3, align 8
  %11 = getelementptr inbounds %struct.be_hw_stats_v1, %struct.be_hw_stats_v1* %10, i32 0, i32 1
  store %struct.be_pmem_stats* %11, %struct.be_pmem_stats** %4, align 8
  %12 = load %struct.be_hw_stats_v1*, %struct.be_hw_stats_v1** %3, align 8
  %13 = getelementptr inbounds %struct.be_hw_stats_v1, %struct.be_hw_stats_v1* %12, i32 0, i32 0
  store %struct.be_rxf_stats_v1* %13, %struct.be_rxf_stats_v1** %5, align 8
  %14 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %15 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %14, i32 0, i32 6
  %16 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %15, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %16, i64 %19
  store %struct.be_port_rxf_stats_v1* %20, %struct.be_port_rxf_stats_v1** %6, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 1
  store %struct.be_drv_stats* %22, %struct.be_drv_stats** %7, align 8
  %23 = load %struct.be_hw_stats_v1*, %struct.be_hw_stats_v1** %3, align 8
  %24 = call i32 @be_dws_le_to_cpu(%struct.be_hw_stats_v1* %23, i32 40)
  %25 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %26 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %25, i32 0, i32 23
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %29 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %28, i32 0, i32 30
  store i32 %27, i32* %29, align 4
  %30 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %31 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %30, i32 0, i32 22
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %34 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %33, i32 0, i32 29
  store i32 %32, i32* %34, align 4
  %35 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %36 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %35, i32 0, i32 21
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %39 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %38, i32 0, i32 28
  store i32 %37, i32* %39, align 4
  %40 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %41 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %40, i32 0, i32 20
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %44 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %43, i32 0, i32 27
  store i32 %42, i32* %44, align 4
  %45 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %46 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %45, i32 0, i32 19
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %49 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %48, i32 0, i32 26
  store i32 %47, i32* %49, align 4
  %50 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %51 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %50, i32 0, i32 18
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %54 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %53, i32 0, i32 25
  store i32 %52, i32* %54, align 4
  %55 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %56 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %55, i32 0, i32 17
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %59 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %58, i32 0, i32 24
  store i32 %57, i32* %59, align 4
  %60 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %61 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %60, i32 0, i32 16
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %64 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %63, i32 0, i32 23
  store i32 %62, i32* %64, align 4
  %65 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %66 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %65, i32 0, i32 15
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %69 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %68, i32 0, i32 22
  store i32 %67, i32* %69, align 4
  %70 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %71 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %74 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %73, i32 0, i32 21
  store i32 %72, i32* %74, align 4
  %75 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %76 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %75, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %79 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %78, i32 0, i32 20
  store i32 %77, i32* %79, align 4
  %80 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %81 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %84 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %83, i32 0, i32 19
  store i32 %82, i32* %84, align 4
  %85 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %86 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %89 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %88, i32 0, i32 18
  store i32 %87, i32* %89, align 4
  %90 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %91 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %94 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %93, i32 0, i32 17
  store i32 %92, i32* %94, align 4
  %95 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %96 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %99 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %98, i32 0, i32 16
  store i32 %97, i32* %99, align 4
  %100 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %101 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %104 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %103, i32 0, i32 15
  store i32 %102, i32* %104, align 4
  %105 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %106 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %109 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 4
  %110 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %111 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %114 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 4
  %115 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %116 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %119 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %118, i32 0, i32 12
  store i32 %117, i32* %119, align 4
  %120 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %121 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %124 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %123, i32 0, i32 11
  store i32 %122, i32* %124, align 4
  %125 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %126 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %129 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 4
  %130 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %131 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %134 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %133, i32 0, i32 9
  store i32 %132, i32* %134, align 4
  %135 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %136 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %139 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load %struct.be_port_rxf_stats_v1*, %struct.be_port_rxf_stats_v1** %6, align 8
  %141 = getelementptr inbounds %struct.be_port_rxf_stats_v1, %struct.be_port_rxf_stats_v1* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %144 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %146 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %149 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %151 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %154 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %156 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %159 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %161 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %164 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %166 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %169 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load %struct.be_rxf_stats_v1*, %struct.be_rxf_stats_v1** %5, align 8
  %171 = getelementptr inbounds %struct.be_rxf_stats_v1, %struct.be_rxf_stats_v1* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %174 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.be_pmem_stats*, %struct.be_pmem_stats** %4, align 8
  %176 = getelementptr inbounds %struct.be_pmem_stats, %struct.be_pmem_stats* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  ret void
}

declare dso_local %struct.be_hw_stats_v1* @hw_stats_from_cmd(%struct.be_adapter*) #1

declare dso_local i32 @be_dws_le_to_cpu(%struct.be_hw_stats_v1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
