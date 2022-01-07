; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_console_32.c_prom_nbgetchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_console_32.c_prom_nbgetchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (...)*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32)* }

@prom_nbgetchar.inc = internal global i8 0, align 1
@prom_lock = common dso_local global i32 0, align 4
@prom_vers = common dso_local global i32 0, align 4
@romvec = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_nbgetchar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 -1, i32* %1, align 4
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @prom_lock, i64 %3)
  %5 = load i32, i32* @prom_vers, align 4
  switch i32 %5, label %28 [
    i32 130, label %6
    i32 129, label %11
    i32 128, label %11
  ]

6:                                                ; preds = %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @romvec, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = call i32 (...) %9()
  store i32 %10, i32* %1, align 4
  br label %29

11:                                               ; preds = %0, %0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @romvec, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @romvec, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %15(i32 %20, i8* @prom_nbgetchar.inc, i32 1)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i8, i8* @prom_nbgetchar.inc, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %1, align 4
  br label %27

26:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %29

28:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %27, %6
  %30 = call i32 (...) @restore_current()
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @prom_lock, i64 %31)
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @restore_current(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
