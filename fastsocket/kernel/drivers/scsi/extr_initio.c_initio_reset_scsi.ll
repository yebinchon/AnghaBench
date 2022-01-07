; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_reset_scsi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_reset_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64 }

@TSC_RST_BUS = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TUL_SInt = common dso_local global i64 0, align 8
@TSS_SCSIRST_INT = common dso_local global i32 0, align 4
@TUL_SSignal = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SCSI_RESET_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*, i32)* @initio_reset_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_reset_scsi(%struct.initio_host* %0, i32 %1) #0 {
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TSC_RST_BUS, align 4
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TUL_SCtrl0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i32 %5, i64 %10)
  br label %12

12:                                               ; preds = %25, %2
  %13 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %14 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TUL_SInt, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inb(i64 %17)
  %19 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %20 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @TSS_SCSIRST_INT, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = call i32 (...) @cpu_relax()
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %29 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TUL_SSignal, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i32 0, i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @initio_do_pause(i32 %36)
  %38 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %39 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TUL_SInt, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  %44 = load i32, i32* @SCSI_RESET_SUCCESS, align 4
  ret i32 %44
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @initio_do_pause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
