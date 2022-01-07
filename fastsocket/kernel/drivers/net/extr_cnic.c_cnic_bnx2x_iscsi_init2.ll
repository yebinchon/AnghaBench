; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_init2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.kwqe = type { i32 }
%struct.iscsi_kwqe_init2 = type { i32, i32* }
%struct.bnx2x = type { i32 }
%struct.iscsi_kcqe = type { i32, i32 }
%struct.kcqe = type { i32 }

@ISCSI_KCQE_COMPLETION_STATUS_ISCSI_NOT_SUPPORTED = common dso_local global i32 0, align 4
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@ISCSI_KCQE_COMPLETION_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ISCSI_KCQE_OPCODE_INIT = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_iscsi_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_iscsi_init2(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.iscsi_kwqe_init2*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_kcqe, align 4
  %10 = alloca [1 x %struct.kcqe*], align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %11 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %12 = bitcast %struct.kwqe* %11 to %struct.iscsi_kwqe_init2*
  store %struct.iscsi_kwqe_init2* %12, %struct.iscsi_kwqe_init2** %5, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 2
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %6, align 8
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %17 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.bnx2x* @netdev_priv(i32 %18)
  store %struct.bnx2x* %19, %struct.bnx2x** %7, align 8
  %20 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %21 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = call i32 @memset(%struct.iscsi_kcqe* %9, i32 0, i32 8)
  %24 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %25 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_ISCSI_NOT_SUPPORTED, align 4
  %30 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %98

31:                                               ; preds = %2
  %32 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %33 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @TSTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %38 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CNIC_WR(%struct.cnic_dev* %32, i64 %36, i32 %41)
  %43 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %44 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @TSTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = add nsw i64 %47, 4
  %49 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CNIC_WR(%struct.cnic_dev* %43, i64 %48, i32 %53)
  %55 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %56 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @USTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32 %57)
  %59 = add nsw i64 %56, %58
  %60 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @CNIC_WR16(%struct.cnic_dev* %55, i64 %59, i32 %62)
  %64 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %65 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @USTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %70 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CNIC_WR(%struct.cnic_dev* %64, i64 %68, i32 %73)
  %75 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %76 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @USTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = add nsw i64 %79, 4
  %81 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @CNIC_WR(%struct.cnic_dev* %75, i64 %80, i32 %85)
  %87 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %88 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @CSTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32 %89)
  %91 = add nsw i64 %88, %90
  %92 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %93 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @CNIC_WR16(%struct.cnic_dev* %87, i64 %91, i32 %94)
  %96 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_SUCCESS, align 4
  %97 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %9, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %31, %28
  %99 = load i32, i32* @ISCSI_KCQE_OPCODE_INIT, align 4
  %100 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %9, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = bitcast %struct.iscsi_kcqe* %9 to %struct.kcqe*
  %102 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %10, i64 0, i64 0
  store %struct.kcqe* %101, %struct.kcqe** %102, align 8
  %103 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %104 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %105 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %10, i64 0, i64 0
  %106 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %103, i32 %104, %struct.kcqe** %105, i32 1)
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @memset(%struct.iscsi_kcqe*, i32, i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @TSTORM_ISCSI_ERROR_BITMAP_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @USTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_ERROR_BITMAP_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
