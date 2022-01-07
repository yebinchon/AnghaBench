; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_xpad_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_xpad_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64, %struct.target_control*, %struct.scsi_ctrl_blk* }
%struct.target_control = type { i32 }
%struct.scsi_ctrl_blk = type { i32, i32 }

@SCF_DIR = common dso_local global i32 0, align 4
@SCF_NO_DCHK = common dso_local global i32 0, align 4
@HOST_DO_DU = common dso_local global i32 0, align 4
@TSC_WIDE_SCSI = common dso_local global i32 0, align 4
@TUL_SCnt0 = common dso_local global i64 0, align 8
@TSC_XF_FIFO_IN = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@DATA_IN = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initio_xpad_in(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.target_control*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 3
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %8, %struct.scsi_ctrl_blk** %4, align 8
  %9 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 2
  %11 = load %struct.target_control*, %struct.target_control** %10, align 8
  store %struct.target_control* %11, %struct.target_control** %5, align 8
  %12 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SCF_DIR, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SCF_NO_DCHK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @HOST_DO_DU, align 4
  %21 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %1
  br label %24

24:                                               ; preds = %71, %23
  %25 = load %struct.target_control*, %struct.target_control** %5, align 8
  %26 = getelementptr inbounds %struct.target_control, %struct.target_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TSC_WIDE_SCSI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %33 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TUL_SCnt0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outl(i32 2, i64 %36)
  br label %45

38:                                               ; preds = %24
  %39 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %40 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TUL_SCnt0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outl(i32 1, i64 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @TSC_XF_FIFO_IN, align 4
  %47 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %48 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TUL_SCmd, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  %53 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %54 = call i32 @wait_tulip(%struct.initio_host* %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %78

57:                                               ; preds = %45
  %58 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %59 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DATA_IN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %65 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %66 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TUL_SCtrl0, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 %64, i64 %69)
  store i32 6, i32* %2, align 4
  br label %78

71:                                               ; preds = %57
  %72 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %73 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TUL_SFifo, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @inb(i64 %76)
  br label %24

78:                                               ; preds = %63, %56
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
