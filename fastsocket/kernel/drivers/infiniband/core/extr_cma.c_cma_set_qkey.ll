; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_qkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_qkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_UDP_QKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i64)* @cma_set_qkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_set_qkey(%struct.rdma_id_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %71

32:                                               ; preds = %25
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %68 [
    i32 128, label %37
    i32 130, label %37
    i32 129, label %41
  ]

37:                                               ; preds = %32, %32
  %38 = load i64, i64* @RDMA_UDP_QKEY, align 8
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %69

41:                                               ; preds = %32
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %43 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 1
  %48 = call i32 @ib_addr_get_mgid(i32* %46, i32* %47)
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %50 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %54 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 1
  %58 = call i32 @ib_sa_get_mcmember_rec(i32 %52, i32 %56, i32* %57, %struct.ib_sa_mcmember_rec* %6)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @be32_to_cpu(i32 %63)
  %65 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %66 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %41
  br label %69

68:                                               ; preds = %32
  br label %69

69:                                               ; preds = %68, %67, %37
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %28, %24, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ib_addr_get_mgid(i32*, i32*) #1

declare dso_local i32 @ib_sa_get_mcmember_rec(i32, i32, i32*, %struct.ib_sa_mcmember_rec*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
