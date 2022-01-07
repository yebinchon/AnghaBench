; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_stop_bm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_stop_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64 }

@TUL_XStatus = common dso_local global i64 0, align 8
@XPEND = common dso_local global i32 0, align 4
@TAX_X_ABT = common dso_local global i32 0, align 4
@TAX_X_CLR_FIFO = common dso_local global i32 0, align 4
@TUL_XCmd = common dso_local global i64 0, align 8
@TUL_Int = common dso_local global i64 0, align 8
@XABT = common dso_local global i32 0, align 4
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.initio_host*)* @initio_stop_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_stop_bm(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %3 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %4 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TUL_XStatus, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @inb(i64 %7)
  %9 = load i32, i32* @XPEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i32, i32* @TAX_X_ABT, align 4
  %14 = load i32, i32* @TAX_X_CLR_FIFO, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %17 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TUL_XCmd, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  br label %22

22:                                               ; preds = %32, %12
  %23 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %24 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TUL_Int, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb(i64 %27)
  %29 = load i32, i32* @XABT, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 (...) @cpu_relax()
  br label %22

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %37 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %38 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TUL_SCtrl0, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
