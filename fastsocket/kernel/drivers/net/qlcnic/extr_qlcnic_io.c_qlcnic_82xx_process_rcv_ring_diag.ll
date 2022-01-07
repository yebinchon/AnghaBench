; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_process_rcv_ring_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_process_rcv_ring_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_host_sds_ring = type { i64, i32, i32, %struct.status_desc*, %struct.qlcnic_adapter* }
%struct.status_desc = type { i32* }
%struct.qlcnic_adapter = type { i32 }

@STATUS_OWNER_HOST = common dso_local global i32 0, align 4
@STATUS_OWNER_PHANTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring* %0) #0 {
  %2 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.status_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qlcnic_host_sds_ring* %0, %struct.qlcnic_host_sds_ring** %2, align 8
  %10 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %10, i32 0, i32 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %11, align 8
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %3, align 8
  %13 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %14 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %17 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %16, i32 0, i32 3
  %18 = load %struct.status_desc*, %struct.status_desc** %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %18, i64 %19
  store %struct.status_desc* %20, %struct.status_desc** %4, align 8
  %21 = load %struct.status_desc*, %struct.status_desc** %4, align 8
  %22 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le64_to_cpu(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @STATUS_OWNER_HOST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %83

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @qlcnic_get_sts_desc_cnt(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @qlcnic_get_sts_opcode(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %43 [
    i32 128, label %38
  ]

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %42 = call i32 @qlcnic_handle_fw_message(i32 %39, i64 %40, %struct.qlcnic_host_sds_ring* %41)
  br label %50

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @qlcnic_get_sts_type(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @qlcnic_process_rcv_diag(%struct.qlcnic_adapter* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %56 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %55, i32 0, i32 3
  %57 = load %struct.status_desc*, %struct.status_desc** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %57, i64 %58
  store %struct.status_desc* %59, %struct.status_desc** %4, align 8
  %60 = load i32, i32* @STATUS_OWNER_PHANTOM, align 4
  %61 = call i32 @cpu_to_le64(i32 %60)
  %62 = load %struct.status_desc*, %struct.status_desc** %4, align 8
  %63 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %68 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @get_next_index(i64 %66, i32 %69)
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %77 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %2, align 8
  %80 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @writel(i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %74, %31
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @qlcnic_get_sts_desc_cnt(i32) #1

declare dso_local i32 @qlcnic_get_sts_opcode(i32) #1

declare dso_local i32 @qlcnic_handle_fw_message(i32, i64, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_get_sts_type(i32) #1

declare dso_local i32 @qlcnic_process_rcv_diag(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
