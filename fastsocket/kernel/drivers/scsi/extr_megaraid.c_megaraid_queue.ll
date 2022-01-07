; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_megaraid_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_megaraid_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { void (%struct.TYPE_15__*)*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SCB_PENDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, void (%struct.TYPE_15__*)*)* @megaraid_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megaraid_queue(%struct.TYPE_15__* %0, void (%struct.TYPE_15__*)* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca void (%struct.TYPE_15__*)*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store void (%struct.TYPE_15__*)* %1, void (%struct.TYPE_15__*)** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %5, align 8
  %17 = load void (%struct.TYPE_15__*)*, void (%struct.TYPE_15__*)** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store void (%struct.TYPE_15__*)* %17, void (%struct.TYPE_15__*)** %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call %struct.TYPE_16__* @mega_build_cmd(%struct.TYPE_17__* %24, %struct.TYPE_15__* %25, i32* %7)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %6, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %49

30:                                               ; preds = %2
  %31 = load i32, i32* @SCB_PENDQ, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = call i32 @mega_runpendq(%struct.TYPE_17__* %46)
  br label %48

48:                                               ; preds = %45, %30
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_16__* @mega_build_cmd(%struct.TYPE_17__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mega_runpendq(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
