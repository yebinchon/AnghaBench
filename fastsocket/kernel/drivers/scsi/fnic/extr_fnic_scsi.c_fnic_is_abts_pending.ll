; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_is_abts_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_is_abts_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.fnic_io_req = type { i32 }

@FNIC_MAX_IO_REQ = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Found IO in %s on lun\0A\00", align 1
@FNIC_IOREQ_ABTS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_is_abts_pending(%struct.fnic* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fnic_io_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  store i32 0, i32* %9, align 4
  store %struct.scsi_device* null, %struct.scsi_device** %11, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = icmp ne %struct.scsi_cmnd* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %11, align 8
  br label %18

18:                                               ; preds = %14, %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %89, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FNIC_MAX_IO_REQ, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %19
  %24 = load %struct.fnic*, %struct.fnic** %3, align 8
  %25 = getelementptr inbounds %struct.fnic, %struct.fnic* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.scsi_cmnd* @scsi_host_find_tag(i32 %28, i32 %29)
  store %struct.scsi_cmnd* %30, %struct.scsi_cmnd** %10, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %32 = icmp ne %struct.scsi_cmnd* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %23
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = icmp ne %struct.scsi_cmnd* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load %struct.scsi_device*, %struct.scsi_device** %38, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %41 = icmp ne %struct.scsi_device* %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = icmp eq %struct.scsi_cmnd* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %36, %23
  br label %89

47:                                               ; preds = %42, %33
  %48 = load %struct.fnic*, %struct.fnic** %3, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %50 = call i32* @fnic_io_lock_hash(%struct.fnic* %48, %struct.scsi_cmnd* %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %55 = call i64 @CMD_SP(%struct.scsi_cmnd* %54)
  %56 = inttoptr i64 %55 to %struct.fnic_io_req*
  store %struct.fnic_io_req* %56, %struct.fnic_io_req** %6, align 8
  %57 = load %struct.fnic_io_req*, %struct.fnic_io_req** %6, align 8
  %58 = icmp ne %struct.fnic_io_req* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load %struct.scsi_device*, %struct.scsi_device** %61, align 8
  %63 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %64 = icmp ne %struct.scsi_device* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %47
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %89

69:                                               ; preds = %59
  %70 = load i32, i32* @KERN_INFO, align 4
  %71 = load %struct.fnic*, %struct.fnic** %3, align 8
  %72 = getelementptr inbounds %struct.fnic, %struct.fnic* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %77 = call i64 @CMD_STATE(%struct.scsi_cmnd* %76)
  %78 = call i32 @fnic_ioreq_state_to_str(i64 %77)
  %79 = call i32 @FNIC_SCSI_DBG(i32 %70, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %81 = call i64 @CMD_STATE(%struct.scsi_cmnd* %80)
  %82 = load i64, i64* @FNIC_IOREQ_ABTS_PENDING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %85, %65, %46
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %19

92:                                               ; preds = %19
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(i32, i32) #1

declare dso_local i32* @fnic_io_lock_hash(%struct.fnic*, %struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, i32) #1

declare dso_local i32 @fnic_ioreq_state_to_str(i64) #1

declare dso_local i64 @CMD_STATE(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
