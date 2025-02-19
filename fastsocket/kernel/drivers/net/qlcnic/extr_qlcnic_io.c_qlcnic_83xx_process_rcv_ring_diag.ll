; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv_ring_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv_ring_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_host_sds_ring = type { i64, i32, i32, %struct.status_desc*, %struct.qlcnic_adapter* }
%struct.status_desc = type { i32* }
%struct.qlcnic_adapter = type { i32 }

@STATUS_OWNER_PHANTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring* %0) #0 {
  %2 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.status_desc*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.qlcnic_host_sds_ring* %0, %struct.qlcnic_host_sds_ring** %2, align 8
  %9 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %10 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %9, i32 0, i32 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %3, align 8
  %12 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %16 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %15, i32 0, i32 3
  %17 = load %struct.status_desc*, %struct.status_desc** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %17, i64 %18
  store %struct.status_desc* %19, %struct.status_desc** %4, align 8
  %20 = load %struct.status_desc*, %struct.status_desc** %4, align 8
  %21 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le64_to_cpu(i32 %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.status_desc*, %struct.status_desc** %4, align 8
  %28 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qlcnic_83xx_opcode(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  br label %73

40:                                               ; preds = %1
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @qlcnic_83xx_hndl(i32 %42)
  %44 = call i32 @QLCNIC_FETCH_RING_ID(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %48 = call i32 @qlcnic_83xx_process_rcv_diag(%struct.qlcnic_adapter* %45, i32 %46, i32* %47)
  %49 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %50 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %49, i32 0, i32 3
  %51 = load %struct.status_desc*, %struct.status_desc** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %51, i64 %52
  store %struct.status_desc* %53, %struct.status_desc** %4, align 8
  %54 = load i32, i32* @STATUS_OWNER_PHANTOM, align 4
  %55 = call i32 @cpu_to_le64(i32 %54)
  %56 = load %struct.status_desc*, %struct.status_desc** %4, align 8
  %57 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %62 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @get_next_index(i64 %60, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %67 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %70 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @writel(i64 %68, i32 %71)
  br label %73

73:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @qlcnic_83xx_opcode(i32) #1

declare dso_local i32 @QLCNIC_FETCH_RING_ID(i32) #1

declare dso_local i32 @qlcnic_83xx_hndl(i32) #1

declare dso_local i32 @qlcnic_83xx_process_rcv_diag(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
