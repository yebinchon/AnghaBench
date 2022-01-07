; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_closed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.cxgbi_sock*)* }
%struct.TYPE_3__ = type { i64 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTPF_ACTIVE_CLOSE_NEEDED = common dso_local global i32 0, align 4
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@CTP_CLOSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_closed(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %3 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %6 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %5, i64 %8, i32 %11, i32 %14)
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = load i32, i32* @CTPF_ACTIVE_CLOSE_NEEDED, align 4
  %18 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %16, i32 %17)
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CTP_CLOSED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %1
  br label %65

31:                                               ; preds = %24
  %32 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %33 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %39 = call i32 @sock_put_port(%struct.cxgbi_sock* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %42 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dst_release(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)** %54, align 8
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %57 = call i32 %55(%struct.cxgbi_sock* %56)
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %59 = load i64, i64* @CTP_CLOSED, align 8
  %60 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %58, i64 %59)
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %62 = call i32 @cxgbi_inform_iscsi_conn_closing(%struct.cxgbi_sock* %61)
  %63 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %64 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %63)
  br label %65

65:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @sock_put_port(%struct.cxgbi_sock*) #1

declare dso_local i32 @dst_release(i64) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i64) #1

declare dso_local i32 @cxgbi_inform_iscsi_conn_closing(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
