; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_initialize(%struct.qdio_initialize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca i32, align 4
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  %5 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %6 = call i32 @qdio_allocate(%struct.qdio_initialize* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %13 = call i32 @qdio_establish(%struct.qdio_initialize* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %18 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @qdio_free(i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @qdio_allocate(%struct.qdio_initialize*) #1

declare dso_local i32 @qdio_establish(%struct.qdio_initialize*) #1

declare dso_local i32 @qdio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
