; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_idc_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_idc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mbox_params = type { i32, i32, i64*, i32* }

@MB_CMD_IDC_ACK = common dso_local global i32 0, align 4
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed IDC ACK send.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_mb_idc_ack(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.mbox_params, align 8
  %5 = alloca %struct.mbox_params*, align 8
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.mbox_params* %4, %struct.mbox_params** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %8 = call i32 @memset(%struct.mbox_params* %7, i32 0, i32 24)
  %9 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %10 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %9, i32 0, i32 0
  store i32 5, i32* %10, align 8
  %11 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %12 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @MB_CMD_IDC_ACK, align 4
  %14 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %15 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %25 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %35 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %45 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %43, i32* %47, align 4
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %55 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %59 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %60 = call i32 @ql_mailbox_command(%struct.ql_adapter* %58, %struct.mbox_params* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %1
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %1
  %66 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %67 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %75 = load i32, i32* @drv, align 4
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netif_err(%struct.ql_adapter* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %73, %65
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %63
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.mbox_params*, i32, i32) #1

declare dso_local i32 @ql_mailbox_command(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
