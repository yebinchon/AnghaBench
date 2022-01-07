; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_complete_nopin_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_complete_nopin_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_task = type { i64, %struct.beiscsi_io_task* }
%struct.beiscsi_io_task = type { i32 }
%struct.common_sol_cqe = type { i64, i64, i32 }
%struct.iscsi_nopin = type { i32, i32, i8*, i8*, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_OP_NOOP_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*)* @be_complete_nopin_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_complete_nopin_resp(%struct.beiscsi_conn* %0, %struct.iscsi_task* %1, %struct.common_sol_cqe* %2) #0 {
  %4 = alloca %struct.beiscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.common_sol_cqe*, align 8
  %7 = alloca %struct.iscsi_nopin*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.beiscsi_io_task*, align 8
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  store %struct.common_sol_cqe* %2, %struct.common_sol_cqe** %6, align 8
  %10 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %11 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %8, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 1
  %15 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %14, align 8
  store %struct.beiscsi_io_task* %15, %struct.beiscsi_io_task** %9, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iscsi_nopin*
  store %struct.iscsi_nopin* %19, %struct.iscsi_nopin** %7, align 8
  %20 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %21 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %26 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_be32(i64 %27)
  %29 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %30 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %32 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %35 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = sub nsw i64 %37, 1
  %39 = call i8* @cpu_to_be32(i64 %38)
  %40 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %41 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @ISCSI_OP_NOOP_IN, align 4
  %43 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %44 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %9, align 8
  %46 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %49 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %51 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %52 = bitcast %struct.iscsi_nopin* %51 to %struct.iscsi_hdr*
  %53 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %50, %struct.iscsi_hdr* %52, i32* null, i32 0)
  ret void
}

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
