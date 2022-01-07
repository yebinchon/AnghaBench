; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hvc_struct* }
%struct.hvc_struct = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hvc_struct*, i32)* }

@destroy_hvc_struct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hvc_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.hvc_struct*, %struct.hvc_struct** %7, align 8
  store %struct.hvc_struct* %8, %struct.hvc_struct** %3, align 8
  %9 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %10 = icmp ne %struct.hvc_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %14 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %13, i32 0, i32 7
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %17 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %16, i32 0, i32 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %21 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %26 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %25, i32 0, i32 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %73

29:                                               ; preds = %12
  %30 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %31 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  %33 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %34 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %36 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %38 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %37, i32 0, i32 5
  store i32* null, i32** %38, align 8
  %39 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %40 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %39, i32 0, i32 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %44 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.hvc_struct*, i32)*, i32 (%struct.hvc_struct*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.hvc_struct*, i32)* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %29
  %50 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %51 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.hvc_struct*, i32)*, i32 (%struct.hvc_struct*, i32)** %53, align 8
  %55 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %56 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %57 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %54(%struct.hvc_struct* %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %29
  br label %61

61:                                               ; preds = %64, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %5, align 4
  %67 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %68 = call i32 @tty_kref_put(%struct.tty_struct* %67)
  %69 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %70 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %69, i32 0, i32 1
  %71 = load i32, i32* @destroy_hvc_struct, align 4
  %72 = call i32 @kref_put(i32* %70, i32 %71)
  br label %61

73:                                               ; preds = %11, %24, %61
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
