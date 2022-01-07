; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7879*)* @ad7879_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7879_enable(%struct.ad7879* %0) #0 {
  %2 = alloca %struct.ad7879*, align 8
  store %struct.ad7879* %0, %struct.ad7879** %2, align 8
  %3 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %4 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %7 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %12 = call i32 @ad7879_setup(%struct.ad7879* %11)
  %13 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %14 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %16 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @enable_irq(i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %23 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7879_setup(%struct.ad7879*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
