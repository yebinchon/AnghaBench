; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_abort_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_abort_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32 }

@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@CTPF_ABORT_RPL_RCVD = common dso_local global i32 0, align 4
@CTPF_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"csk 0x%p,%u,0x%lx,%u,ABT_RPL_RSS.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_rcv_abort_rpl(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %3 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %4 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %3)
  %5 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %6 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %9 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %10 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %14 = load i32, i32* @CTPF_ABORT_RPL_RCVD, align 4
  %15 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %19 = load i32, i32* @CTPF_ABORT_RPL_RCVD, align 4
  %20 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %18, i32 %19)
  br label %47

21:                                               ; preds = %12
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %23 = load i32, i32* @CTPF_ABORT_RPL_RCVD, align 4
  %24 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %22, i32 %23)
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %26 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %27 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %25, i32 %26)
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %29 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %30 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %35 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %38 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %33, i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %32, %21
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %46 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %45)
  br label %47

47:                                               ; preds = %44, %17
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %50 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %53 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %52)
  ret void
}

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
