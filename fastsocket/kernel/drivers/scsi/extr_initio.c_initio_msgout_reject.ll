; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_msgout_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_msgout_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64 }

@TUL_SSignal = common dso_local global i64 0, align 8
@TSC_SET_ACK = common dso_local global i32 0, align 4
@TSC_SET_ATN = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i64 0, align 8
@MSG_REJ = common dso_local global i32 0, align 4
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_msgout_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_msgout_reject(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %4 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %5 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TUL_SSignal, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  %10 = load i32, i32* @TSC_SET_ACK, align 4
  %11 = or i32 %10, 7
  %12 = and i32 %9, %11
  %13 = load i32, i32* @TSC_SET_ATN, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %16 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TUL_SSignal, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %14, i64 %19)
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = call i32 @initio_msgin_accept(%struct.initio_host* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %27 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MSG_OUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i32, i32* @MSG_REJ, align 4
  %33 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %34 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TUL_SFifo, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %32, i64 %37)
  %39 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %40 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %41 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TUL_SCmd, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  %46 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %47 = call i32 @wait_tulip(%struct.initio_host* %46)
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %25
  %49 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %50 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %31, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @initio_msgin_accept(%struct.initio_host*) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
