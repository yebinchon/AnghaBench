; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64 }

@TUL_Int = common dso_local global i64 0, align 8
@TSS_INT_PENDING = common dso_local global i32 0, align 4
@TUL_Mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_isr(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %4 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %5 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TUL_Int, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  %10 = load i32, i32* @TSS_INT_PENDING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %15 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %20 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TUL_Mask, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 31, i64 %23)
  %25 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %26 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = call i32 @tulip_main(%struct.initio_host* %27)
  %29 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %30 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %32 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TUL_Mask, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 15, i64 %35)
  store i32 1, i32* %2, align 4
  br label %39

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37, %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @tulip_main(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
