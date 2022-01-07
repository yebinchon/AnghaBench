; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_complete_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_complete_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i64, i32, i32, i32, i64, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32, i32 }
%struct.sym_lcb = type { i32, i32, i64 }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@DEBUG_RESULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CCB=%p STAT=%x/%x/%x\0A\00", align 1
@sym_verbose = common dso_local global i32 0, align 4
@HS_COMPLETE = common dso_local global i32 0, align 4
@HS_COMP_ERR = common dso_local global i32 0, align 4
@SYM_SETUP_RESIDUAL_SUPPORT = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@DID_SOFT_ERROR = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@S_ILLEGAL = common dso_local global i32 0, align 4
@S_QUEUE_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_complete_error(%struct.sym_hcb* %0, %struct.sym_ccb* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_ccb*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca %struct.sym_lcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %4, align 8
  %11 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %12 = icmp ne %struct.sym_ccb* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %15 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %14, i32 0, i32 7
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %17 = icmp ne %struct.scsi_cmnd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  br label %129

19:                                               ; preds = %13
  %20 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %21 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %20, i32 0, i32 7
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %21, align 8
  store %struct.scsi_cmnd* %22, %struct.scsi_cmnd** %6, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load %struct.scsi_device*, %struct.scsi_device** %24, align 8
  store %struct.scsi_device* %25, %struct.scsi_device** %5, align 8
  %26 = load i32, i32* @DEBUG_FLAGS, align 4
  %27 = load i32, i32* @DEBUG_TINY, align 4
  %28 = load i32, i32* @DEBUG_RESULT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %19
  %33 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 1
  %35 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %37 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %40 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %43 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.sym_ccb* %35, i32 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %32, %19
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %48 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %47, i32 0, i32 2
  %49 = load %struct.sym_tcb*, %struct.sym_tcb** %48, align 8
  %50 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %51 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %49, i64 %52
  store %struct.sym_tcb* %53, %struct.sym_tcb** %7, align 8
  %54 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %55 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %54, i32 %57)
  store %struct.sym_lcb* %58, %struct.sym_lcb** %8, align 8
  %59 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %60 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %46
  %64 = load i32, i32* @sym_verbose, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %68 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %69 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sym_print_xerr(%struct.scsi_cmnd* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %74 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HS_COMPLETE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @HS_COMP_ERR, align 4
  %80 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %81 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %72
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %85 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %86 = call i32 @sym_compute_residual(%struct.sym_hcb* %84, %struct.sym_ccb* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @SYM_SETUP_RESIDUAL_SUPPORT, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  %90 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %91 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %83
  %93 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %94 = load i32, i32* @nc_scratcha, align 4
  %95 = call i32 @INL(%struct.sym_hcb* %93, i32 %94)
  %96 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %97 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %95, %98
  %100 = sdiv i32 %99, 4
  store i32 %100, i32* %10, align 4
  %101 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %104 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sym_dequeue_from_squeue(%struct.sym_hcb* %101, i32 %102, i64 %105, i32 %108, i32 -1)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %111 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %112 = load i32, i32* @start, align 4
  %113 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %111, i32 %112)
  %114 = call i32 @OUTL_DSP(%struct.sym_hcb* %110, i32 %113)
  %115 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %116 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @sym_set_cam_result_error(%struct.sym_hcb* %115, %struct.sym_ccb* %116, i32 %117)
  %119 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %120 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %119, i32 0, i32 1
  %121 = call i32 @sym_remque(i32* %120)
  %122 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %123 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %122, i32 0, i32 1
  %124 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %125 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %124, i32 0, i32 1
  %126 = call i32 @sym_insque_head(i32* %123, i32* %125)
  %127 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %128 = call i32 @sym_flush_comp_queue(%struct.sym_hcb* %127, i32 0)
  br label %129

129:                                              ; preds = %92, %18
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, %struct.sym_ccb*, i32, i32, i32) #1

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local i32 @sym_print_xerr(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sym_compute_residual(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_dequeue_from_squeue(%struct.sym_hcb*, i32, i64, i32, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_set_cam_result_error(%struct.sym_hcb*, %struct.sym_ccb*, i32) #1

declare dso_local i32 @sym_remque(i32*) #1

declare dso_local i32 @sym_insque_head(i32*, i32*) #1

declare dso_local i32 @sym_flush_comp_queue(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
