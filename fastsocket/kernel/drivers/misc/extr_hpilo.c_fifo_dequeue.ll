; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_fifo_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_fifo_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilo_hwinfo = type { i32 }
%struct.fifo = type { i32*, i64, i64 }

@ENTRY_MASK_C = common dso_local global i32 0, align 4
@ENTRY_MASK_NOSTATE = common dso_local global i32 0, align 4
@ENTRY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ilo_hwinfo*, i8*, i32*)* @fifo_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_dequeue(%struct.ilo_hwinfo* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ilo_hwinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fifo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ilo_hwinfo* %0, %struct.ilo_hwinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.fifo* @FIFOBARTOHANDLE(i8* %11)
  store %struct.fifo* %12, %struct.fifo** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fifo*, %struct.fifo** %7, align 8
  %18 = getelementptr inbounds %struct.fifo, %struct.fifo* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.fifo*, %struct.fifo** %7, align 8
  %21 = getelementptr inbounds %struct.fifo, %struct.fifo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fifo*, %struct.fifo** %7, align 8
  %24 = getelementptr inbounds %struct.fifo, %struct.fifo* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %22, %25
  %27 = getelementptr inbounds i32, i32* %19, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ENTRY_MASK_C, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ENTRY_MASK_NOSTATE, align 4
  %39 = and i32 %37, %38
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ENTRY_MASK, align 4
  %44 = or i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = load %struct.fifo*, %struct.fifo** %7, align 8
  %47 = getelementptr inbounds %struct.fifo, %struct.fifo* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.fifo*, %struct.fifo** %7, align 8
  %50 = getelementptr inbounds %struct.fifo, %struct.fifo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.fifo*, %struct.fifo** %7, align 8
  %53 = getelementptr inbounds %struct.fifo, %struct.fifo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %51, %54
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  store i32 %45, i32* %56, align 4
  %57 = load %struct.fifo*, %struct.fifo** %7, align 8
  %58 = getelementptr inbounds %struct.fifo, %struct.fifo* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %41, %3
  %62 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %63 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.fifo* @FIFOBARTOHANDLE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
