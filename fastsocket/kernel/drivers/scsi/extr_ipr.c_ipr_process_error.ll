; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_process_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_process_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_20__*, i32, %struct.TYPE_15__, %struct.TYPE_12__, %struct.ipr_ioa_cfg* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.ipr_hostrcb* }
%struct.ipr_hostrcb = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }

@IPR_IOASC_NR_IOA_RESET_REQUIRED = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_ABBREV = common dso_local global i32 0, align 4
@IPR_IOASC_IOA_WAS_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Host RCB failed with IOASC: 0x%08X\0A\00", align 1
@IPR_HCAM_CDB_OP_CODE_LOG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_process_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_process_error(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_hostrcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %3, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %12, align 8
  store %struct.ipr_hostrcb* %13, %struct.ipr_hostrcb** %4, align 8
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be32_to_cpu(i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %27 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be32_to_cpu(i32 %31)
  store i64 %32, i64* %6, align 8
  br label %41

33:                                               ; preds = %1
  %34 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %35 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be32_to_cpu(i32 %39)
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %43 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %42, i32 0, i32 0
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %46 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %45, i32 0, i32 1
  %47 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %48 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %46, i32* %50)
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %41
  %55 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %56 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %57 = call i32 @ipr_handle_log_data(%struct.ipr_ioa_cfg* %55, %struct.ipr_hostrcb* %56)
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @IPR_IOASC_NR_IOA_RESET_REQUIRED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %63 = load i32, i32* @IPR_SHUTDOWN_ABBREV, align 4
  %64 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %54
  br label %78

66:                                               ; preds = %41
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @IPR_IOASC_IOA_WAS_RESET, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %72 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %70, %66
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %80 = load i32, i32* @IPR_HCAM_CDB_OP_CODE_LOG_DATA, align 4
  %81 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %82 = call i32 @ipr_send_hcam(%struct.ipr_ioa_cfg* %79, i32 %80, %struct.ipr_hostrcb* %81)
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ipr_handle_log_data(%struct.ipr_ioa_cfg*, %struct.ipr_hostrcb*) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ipr_send_hcam(%struct.ipr_ioa_cfg*, i32, %struct.ipr_hostrcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
