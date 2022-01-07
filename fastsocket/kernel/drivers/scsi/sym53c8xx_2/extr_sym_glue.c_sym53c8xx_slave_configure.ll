; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.scsi_device = type { i64, i32, i32, i64, i32 }
%struct.sym_hcb = type { %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_lcb = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@sym_driver_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SYM_CONF_MAX_TAG = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @sym53c8xx_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c8xx_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_tcb*, align 8
  %5 = alloca %struct.sym_lcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.sym_hcb* @sym_get_hcb(i32 %10)
  store %struct.sym_hcb* %11, %struct.sym_hcb** %3, align 8
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 0
  %14 = load %struct.sym_tcb*, %struct.sym_tcb** %13, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %14, i64 %17
  store %struct.sym_tcb* %18, %struct.sym_tcb** %4, align 8
  %19 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %19, i32 %22)
  store %struct.sym_lcb* %23, %struct.sym_lcb** %5, align 8
  %24 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %25 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %28 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sym_driver_setup, i32 0, i32 0), align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %32 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %37 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SYM_CONF_MAX_TAG, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @SYM_CONF_MAX_TAG, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  br label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 1, %56 ]
  store i32 %58, i32* %7, align 4
  %59 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %59, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %73 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %76 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %77 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @sym_tune_dev_queuing(%struct.sym_tcb* %75, i32 %78, i32 %79)
  %81 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %82 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @spi_initial_dv(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %67
  %87 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %88 = call i32 @spi_dv_device(%struct.scsi_device* %87)
  br label %89

89:                                               ; preds = %86, %67
  ret i32 0
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(i32) #1

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @sym_tune_dev_queuing(%struct.sym_tcb*, i32, i32) #1

declare dso_local i32 @spi_initial_dv(i32) #1

declare dso_local i32 @spi_dv_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
