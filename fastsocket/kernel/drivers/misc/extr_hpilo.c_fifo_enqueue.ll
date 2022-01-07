; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_fifo_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_fifo_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilo_hwinfo = type { i32 }
%struct.fifo = type { i32*, i32, i32, i32 }

@ENTRY_MASK_O = common dso_local global i32 0, align 4
@ENTRY_MASK_NOSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ilo_hwinfo*, i8*, i32)* @fifo_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_enqueue(%struct.ilo_hwinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ilo_hwinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fifo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ilo_hwinfo* %0, %struct.ilo_hwinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.fifo* @FIFOBARTOHANDLE(i8* %10)
  store %struct.fifo* %11, %struct.fifo** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fifo*, %struct.fifo** %7, align 8
  %17 = getelementptr inbounds %struct.fifo, %struct.fifo* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.fifo*, %struct.fifo** %7, align 8
  %20 = getelementptr inbounds %struct.fifo, %struct.fifo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.fifo*, %struct.fifo** %7, align 8
  %24 = getelementptr inbounds %struct.fifo, %struct.fifo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %18, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ENTRY_MASK_O, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENTRY_MASK_NOSTATE, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.fifo*, %struct.fifo** %7, align 8
  %38 = getelementptr inbounds %struct.fifo, %struct.fifo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %36, %39
  %41 = load %struct.fifo*, %struct.fifo** %7, align 8
  %42 = getelementptr inbounds %struct.fifo, %struct.fifo* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.fifo*, %struct.fifo** %7, align 8
  %45 = getelementptr inbounds %struct.fifo, %struct.fifo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fifo*, %struct.fifo** %7, align 8
  %48 = getelementptr inbounds %struct.fifo, %struct.fifo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %43, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %40
  store i32 %54, i32* %52, align 4
  %55 = load %struct.fifo*, %struct.fifo** %7, align 8
  %56 = getelementptr inbounds %struct.fifo, %struct.fifo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %33, %3
  %60 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %61 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
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
