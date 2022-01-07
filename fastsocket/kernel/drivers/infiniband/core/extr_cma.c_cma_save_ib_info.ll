; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_save_ib_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_save_ib_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_sa_path_rec = type { i32, i32, i32, i32 }
%struct.sockaddr_ib = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, %struct.rdma_cm_id*, %struct.ib_sa_path_rec*)* @cma_save_ib_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_save_ib_info(%struct.rdma_cm_id* %0, %struct.rdma_cm_id* %1, %struct.ib_sa_path_rec* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.ib_sa_path_rec*, align 8
  %7 = alloca %struct.sockaddr_ib*, align 8
  %8 = alloca %struct.sockaddr_ib*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %5, align 8
  store %struct.ib_sa_path_rec* %2, %struct.ib_sa_path_rec** %6, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %13, %struct.sockaddr_ib** %7, align 8
  %14 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %18, %struct.sockaddr_ib** %8, align 8
  %19 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %25 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %30 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %34, i32 0, i32 0
  %36 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %37 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %36, i32 0, i32 3
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 16)
  %39 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = call i32 @cpu_to_be64(i32 -1)
  %45 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %53 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = bitcast i32* %55 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %56, %struct.sockaddr_ib** %8, align 8
  %57 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %58 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %63 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %66 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %68 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %71 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %8, align 8
  %73 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %72, i32 0, i32 0
  %74 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %6, align 8
  %75 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %74, i32 0, i32 0
  %76 = call i32 @memcpy(i32* %73, i32* %75, i32 16)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
