; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_wait_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_wait_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i32, i32*, i64 }

@TUL_SStatus0 = common dso_local global i64 0, align 8
@TSS_INT_PENDING = common dso_local global i32 0, align 4
@TUL_SInt = common dso_local global i64 0, align 8
@TSS_SCSIRST_INT = common dso_local global i32 0, align 4
@TSS_DISC_INT = common dso_local global i32 0, align 4
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TSC_INITDEFAULT = common dso_local global i32 0, align 4
@TUL_SConfig = common dso_local global i64 0, align 8
@TSC_HW_RESELECT = common dso_local global i32 0, align 4
@TUL_SCtrl1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_wait_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_wait_disc(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TUL_SStatus0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @inb(i64 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @TSS_INT_PENDING, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 (...) @cpu_relax()
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TUL_SInt, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @inb(i64 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %29 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %31 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TSS_SCSIRST_INT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %38 = call i32 @int_initio_scsi_rst(%struct.initio_host* %37)
  store i32 %38, i32* %2, align 4
  br label %73

39:                                               ; preds = %20
  %40 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %41 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TSS_DISC_INT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %48 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %49 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TUL_SCtrl0, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %47, i64 %52)
  %54 = load i32, i32* @TSC_INITDEFAULT, align 4
  %55 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %56 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TUL_SConfig, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 %54, i64 %59)
  %61 = load i32, i32* @TSC_HW_RESELECT, align 4
  %62 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %63 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TUL_SCtrl1, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  %68 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %69 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  store i32 -1, i32* %2, align 4
  br label %73

70:                                               ; preds = %39
  %71 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %72 = call i32 @initio_bad_seq(%struct.initio_host* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %46, %36
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @int_initio_scsi_rst(%struct.initio_host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
