; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_inform_iscsi_conn_closing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_inform_iscsi_conn_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i32, i64, i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"csk 0x%p, state %u, flags 0x%lx, conn 0x%p.\0A\00", align 1
@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @cxgbi_inform_iscsi_conn_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbi_inform_iscsi_conn_closing(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %3 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %6 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %5, i64 %8, i32 %11, i64 %14)
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CTP_ESTABLISHED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 1
  %24 = call i32 @read_lock_bh(i32* %23)
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %31 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %34 = call i32 @iscsi_conn_failure(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 1
  %38 = call i32 @read_unlock_bh(i32* %37)
  br label %39

39:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i64) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @iscsi_conn_failure(i64, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
