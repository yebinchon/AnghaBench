; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hvcs_struct* }
%struct.hvcs_struct = type { i32, i32, i32, %struct.TYPE_4__*, i64, i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@NO_IRQ = common dso_local global i32 0, align 4
@HVCS_BUFF_LEN = common dso_local global i32 0, align 4
@destroy_hvcs_struct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hvcs_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvcs_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hvcs_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.hvcs_struct*, %struct.hvcs_struct** %8, align 8
  store %struct.hvcs_struct* %9, %struct.hvcs_struct** %3, align 8
  %10 = load i32, i32* @NO_IRQ, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %12 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %16 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %19 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @vio_disable_interrupts(%struct.TYPE_4__* %20)
  %22 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %23 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %25 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %29 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %28, i32 0, i32 6
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %31 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %33 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* @HVCS_BUFF_LEN, align 4
  %37 = call i32 @memset(i32* %35, i32 0, i32 %36)
  %38 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %39 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %41 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %46 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %45, i32 0, i32 2
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.hvcs_struct* %50)
  br label %52

52:                                               ; preds = %55, %1
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  %58 = load %struct.hvcs_struct*, %struct.hvcs_struct** %3, align 8
  %59 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %58, i32 0, i32 1
  %60 = load i32, i32* @destroy_hvcs_struct, align 4
  %61 = call i32 @kref_put(i32* %59, i32 %60)
  br label %52

62:                                               ; preds = %52
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vio_disable_interrupts(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.hvcs_struct*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
