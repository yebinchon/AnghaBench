; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_xfer_data_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_xfer_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, %struct.scsi_ctrl_blk* }
%struct.scsi_ctrl_blk = type { i32, i32, i32, i32, i64 }

@SCF_DIR = common dso_local global i32 0, align 4
@SCF_DIN = common dso_local global i32 0, align 4
@TUL_SCnt0 = common dso_local global i64 0, align 8
@TSC_XF_DMA_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@SCF_SG = common dso_local global i32 0, align 4
@TUL_XCntH = common dso_local global i64 0, align 8
@TUL_XAddH = common dso_local global i64 0, align 8
@TAX_SG_OUT = common dso_local global i32 0, align 4
@TUL_XCmd = common dso_local global i64 0, align 8
@TAX_X_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_xfer_data_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_xfer_data_out(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 1
  %7 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  store %struct.scsi_ctrl_blk* %7, %struct.scsi_ctrl_blk** %4, align 8
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SCF_DIR, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @SCF_DIN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %96

16:                                               ; preds = %1
  %17 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %21 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TUL_SCnt0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outl(i32 %19, i64 %24)
  %26 = load i32, i32* @TSC_XF_DMA_OUT, align 4
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TUL_SCmd, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  %33 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCF_SG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %16
  %40 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 3
  %45 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %46 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TUL_XCntH, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outl(i32 %44, i64 %49)
  %51 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %55 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TUL_XAddH, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outl(i32 %53, i64 %58)
  %60 = load i32, i32* @TAX_SG_OUT, align 4
  %61 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %62 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TUL_XCmd, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  br label %93

67:                                               ; preds = %16
  %68 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %72 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TUL_XCntH, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outl(i32 %70, i64 %75)
  %77 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %81 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TUL_XAddH, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outl(i32 %79, i64 %84)
  %86 = load i32, i32* @TAX_X_OUT, align 4
  %87 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %88 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TUL_XCmd, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outb(i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %67, %39
  %94 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %94, i32 0, i32 3
  store i32 5, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
