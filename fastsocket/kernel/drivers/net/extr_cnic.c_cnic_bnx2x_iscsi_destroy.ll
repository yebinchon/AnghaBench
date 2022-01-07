; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, %struct.cnic_context* }
%struct.cnic_context = type { i64, i32 }
%struct.kwqe = type { i32 }
%struct.iscsi_kwqe_conn_destroy = type { i64, i32 }
%struct.iscsi_kcqe = type { i64, i32, i32, i32 }
%struct.kcqe = type { i32 }

@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CTX_FL_DELETE_WAIT = common dso_local global i32 0, align 4
@cnic_wq = common dso_local global i32 0, align 4
@ISCSI_KCQE_OPCODE_DESTROY_CONN = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_iscsi_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_iscsi_destroy(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.iscsi_kwqe_conn_destroy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cnic_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_kcqe, align 8
  %11 = alloca [1 x %struct.kcqe*], align 8
  %12 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %5, align 8
  %16 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %17 = bitcast %struct.kwqe* %16 to %struct.iscsi_kwqe_conn_destroy*
  store %struct.iscsi_kwqe_conn_destroy* %17, %struct.iscsi_kwqe_conn_destroy** %6, align 8
  %18 = load %struct.iscsi_kwqe_conn_destroy*, %struct.iscsi_kwqe_conn_destroy** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 2
  %23 = load %struct.cnic_context*, %struct.cnic_context** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %23, i64 %24
  store %struct.cnic_context* %25, %struct.cnic_context** %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %27 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %28 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %73

32:                                               ; preds = %2
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %35 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = add i64 %36, %39
  %41 = call i32 @time_after(i64 %33, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %32
  %44 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %45 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 2, %47
  %49 = sext i32 %48 to i64
  %50 = add i64 %46, %49
  %51 = load i64, i64* @jiffies, align 8
  %52 = sub i64 %50, %51
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32, i32* @CTX_FL_DELETE_WAIT, align 4
  %61 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %62 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = load i32, i32* @cnic_wq, align 4
  %65 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %66 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %65, i32 0, i32 1
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @queue_delayed_work(i32 %64, i32* %66, i64 %67)
  br label %88

69:                                               ; preds = %32
  %70 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @cnic_bnx2x_destroy_ramrod(%struct.cnic_dev* %70, i64 %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %31
  %74 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %74, i64 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %81 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %80, i32 0, i32 0
  %82 = call i32 @atomic_dec(i32* %81)
  %83 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %84 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %85 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %84, i32 0, i32 1
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %79, %73
  br label %88

88:                                               ; preds = %87, %59
  %89 = call i32 @memset(%struct.iscsi_kcqe* %10, i32 0, i32 24)
  %90 = load i32, i32* @ISCSI_KCQE_OPCODE_DESTROY_CONN, align 4
  %91 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %10, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %10, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  %94 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_SUCCESS, align 4
  %95 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %10, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = load %struct.iscsi_kwqe_conn_destroy*, %struct.iscsi_kwqe_conn_destroy** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %10, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = bitcast %struct.iscsi_kcqe* %10 to %struct.kcqe*
  %101 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %11, i64 0, i64 0
  store %struct.kcqe* %100, %struct.kcqe** %101, align 8
  %102 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %103 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %104 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %11, i64 0, i64 0
  %105 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %102, i32 %103, %struct.kcqe** %104, i32 1)
  ret i32 0
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @cnic_bnx2x_destroy_ramrod(%struct.cnic_dev*, i64) #1

declare dso_local i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.iscsi_kcqe*, i32, i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
