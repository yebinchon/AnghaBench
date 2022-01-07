; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_peer_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_peer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@CTP_PASSIVE_CLOSE = common dso_local global i32 0, align 4
@CTP_CLOSE_WAIT_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"csk 0x%p,%u,0x%lx,%u, bad state.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_rcv_peer_close(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %3 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %6 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %5, i32 %8, i32 %11, i32 %14)
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %16)
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %22 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %23 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %57

26:                                               ; preds = %1
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %28 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %42 [
    i32 128, label %30
    i32 130, label %34
    i32 129, label %38
    i32 131, label %41
  ]

30:                                               ; preds = %26
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %32 = load i32, i32* @CTP_PASSIVE_CLOSE, align 4
  %33 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %31, i32 %32)
  br label %54

34:                                               ; preds = %26
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %36 = load i32, i32* @CTP_CLOSE_WAIT_2, align 4
  %37 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %35, i32 %36)
  br label %54

38:                                               ; preds = %26
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %40 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %39)
  br label %54

41:                                               ; preds = %26
  br label %54

42:                                               ; preds = %26
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %44 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %45 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %48 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %43, i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %42, %41, %38, %34, %30
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %56 = call i32 @cxgbi_inform_iscsi_conn_closing(%struct.cxgbi_sock* %55)
  br label %57

57:                                               ; preds = %54, %25
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %59 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %62 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %61)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_inform_iscsi_conn_closing(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
