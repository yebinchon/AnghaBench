; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_ip2_polled_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_ip2_polled_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ITRC_NO_PORT = common dso_local global i32 0, align 4
@ITRC_INTR = common dso_local global i32 0, align 4
@i2nBoards = common dso_local global i32 0, align 4
@i2BoardPtrTable = common dso_local global %struct.TYPE_4__** null, align 8
@irq_counter = common dso_local global i32 0, align 4
@ITRC_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip2_polled_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip2_polled_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load i32, i32* @ITRC_NO_PORT, align 4
  %4 = load i32, i32* @ITRC_INTR, align 4
  %5 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %3, i32 %4, i32 99, i32 1, i32 0)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %27, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @i2nBoards, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @i2BoardPtrTable, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %2, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = call i32 @ip2_irq_work(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %23, %18, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i32, i32* @irq_counter, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @irq_counter, align 4
  %33 = load i32, i32* @ITRC_NO_PORT, align 4
  %34 = load i32, i32* @ITRC_INTR, align 4
  %35 = load i32, i32* @ITRC_RETURN, align 4
  %36 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %33, i32 %34, i32 %35, i32 0)
  ret void
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local i32 @ip2_irq_work(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
