; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_complete_logout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_complete_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_task = type { i64, %struct.beiscsi_io_task* }
%struct.beiscsi_io_task = type { i32 }
%struct.common_sol_cqe = type { i64, i64, i32, i32 }
%struct.iscsi_logout_rsp = type { i32, i32, i64, i64*, i8*, i8*, i32, i32, i64, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_OP_LOGOUT_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*)* @be_complete_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_complete_logout(%struct.beiscsi_conn* %0, %struct.iscsi_task* %1, %struct.common_sol_cqe* %2) #0 {
  %4 = alloca %struct.beiscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.common_sol_cqe*, align 8
  %7 = alloca %struct.iscsi_logout_rsp*, align 8
  %8 = alloca %struct.beiscsi_io_task*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  store %struct.common_sol_cqe* %2, %struct.common_sol_cqe** %6, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %10, i32 0, i32 1
  %12 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %11, align 8
  store %struct.beiscsi_io_task* %12, %struct.beiscsi_io_task** %8, align 8
  %13 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %14 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %9, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iscsi_logout_rsp*
  store %struct.iscsi_logout_rsp* %19, %struct.iscsi_logout_rsp** %7, align 8
  %20 = load i32, i32* @ISCSI_OP_LOGOUT_RSP, align 4
  %21 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %22 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %23, i32 0, i32 0
  store i32 5, i32* %24, align 8
  %25 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %26 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %28 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %31 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %33 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %36 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %38 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @cpu_to_be32(i64 %39)
  %41 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %44 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.common_sol_cqe*, %struct.common_sol_cqe** %6, align 8
  %47 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = sub nsw i64 %49, 1
  %51 = call i8* @cpu_to_be32(i64 %50)
  %52 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %53 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %55 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %59 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %67 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %8, align 8
  %69 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %72 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %74 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %7, align 8
  %75 = bitcast %struct.iscsi_logout_rsp* %74 to %struct.iscsi_hdr*
  %76 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %73, %struct.iscsi_hdr* %75, i32* null, i32 0)
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
