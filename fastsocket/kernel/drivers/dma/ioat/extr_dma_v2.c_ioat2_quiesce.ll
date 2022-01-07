; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_chan_common = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioat2_quiesce(%struct.ioat_chan_common* %0, i64 %1) #0 {
  %3 = alloca %struct.ioat_chan_common*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ioat_chan_common* %0, %struct.ioat_chan_common** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %12 = call i32 @ioat_chansts(%struct.ioat_chan_common* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @is_ioat_active(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @is_ioat_idle(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %22 = call i32 @ioat_suspend(%struct.ioat_chan_common* %21)
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @is_ioat_active(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @is_ioat_idle(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @time_after(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %37, %34
  %46 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %47 = call i32 @ioat_chansts(%struct.ioat_chan_common* %46)
  store i32 %47, i32* %7, align 4
  %48 = call i32 (...) @cpu_relax()
  br label %24

49:                                               ; preds = %42, %32
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @ioat_chansts(%struct.ioat_chan_common*) #1

declare dso_local i64 @is_ioat_active(i32) #1

declare dso_local i64 @is_ioat_idle(i32) #1

declare dso_local i32 @ioat_suspend(%struct.ioat_chan_common*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
