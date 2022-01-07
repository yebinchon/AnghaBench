; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_set_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_set_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i64, %struct.cyclades_card* }
%struct.cyclades_card = type { i32 }

@CyREC_FIFO = common dso_local global i64 0, align 8
@CyCOR3 = common dso_local global i32 0, align 4
@CyCOR_CHANGE = common dso_local global i32 0, align 4
@CyCOR3ch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyclades_port*, i64)* @set_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_threshold(%struct.cyclades_port* %0, i64 %1) #0 {
  %3 = alloca %struct.cyclades_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cyclades_card*, align 8
  %6 = alloca i64, align 8
  store %struct.cyclades_port* %0, %struct.cyclades_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %8 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %7, i32 0, i32 1
  %9 = load %struct.cyclades_card*, %struct.cyclades_card** %8, align 8
  store %struct.cyclades_card* %9, %struct.cyclades_card** %5, align 8
  %10 = load %struct.cyclades_card*, %struct.cyclades_card** %5, align 8
  %11 = call i32 @cy_is_Z(%struct.cyclades_card* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @CyREC_FIFO, align 8
  %15 = xor i64 %14, -1
  %16 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %17 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @CyREC_FIFO, align 8
  %22 = and i64 %20, %21
  %23 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %24 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.cyclades_card*, %struct.cyclades_card** %5, align 8
  %28 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %32 = load i32, i32* @CyCOR3, align 4
  %33 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %34 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @cyy_writeb(%struct.cyclades_port* %31, i32 %32, i64 %35)
  %37 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %38 = load i32, i32* @CyCOR_CHANGE, align 4
  %39 = load i32, i32* @CyCOR3ch, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @cyy_issue_cmd(%struct.cyclades_port* %37, i32 %40)
  %42 = load %struct.cyclades_card*, %struct.cyclades_card** %5, align 8
  %43 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %13, %2
  ret i32 0
}

declare dso_local i32 @cy_is_Z(%struct.cyclades_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cyy_writeb(%struct.cyclades_port*, i32, i64) #1

declare dso_local i32 @cyy_issue_cmd(%struct.cyclades_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
