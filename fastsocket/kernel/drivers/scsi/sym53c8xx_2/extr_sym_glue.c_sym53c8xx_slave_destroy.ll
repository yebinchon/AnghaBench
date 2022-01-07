; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32 }
%struct.sym_hcb = type { %struct.TYPE_8__, i32, %struct.sym_tcb* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sym_tcb = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.sym_lcb = type { i64, i64 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Removing busy LCB (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @sym53c8xx_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym53c8xx_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_tcb*, align 8
  %5 = alloca %struct.sym_lcb*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sym_hcb* @sym_get_hcb(i32 %9)
  store %struct.sym_hcb* %10, %struct.sym_hcb** %3, align 8
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %12 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %11, i32 0, i32 2
  %13 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %13, i64 %16
  store %struct.sym_tcb* %17, %struct.sym_tcb** %4, align 8
  %18 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %18, i32 %21)
  store %struct.sym_lcb* %22, %struct.sym_lcb** %5, align 8
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %24 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %32 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %37 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35, %1
  %41 = load i32, i32* @KERN_WARNING, align 4
  %42 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %43 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @starget_printk(i32 %41, i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %50 = call i32 @sym_reset_scsi_bus(%struct.sym_hcb* %49, i32 1)
  br label %51

51:                                               ; preds = %40, %35
  %52 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %53 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @sym_free_lcb(%struct.sym_hcb* %52, i64 %55, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %51
  %62 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %63 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %66 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %69 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %72 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %75 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %78 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %61, %51
  %80 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %81 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32 %85, i64 %86)
  ret void
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(i32) #1

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @starget_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @sym_reset_scsi_bus(%struct.sym_hcb*, i32) #1

declare dso_local i64 @sym_free_lcb(%struct.sym_hcb*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
