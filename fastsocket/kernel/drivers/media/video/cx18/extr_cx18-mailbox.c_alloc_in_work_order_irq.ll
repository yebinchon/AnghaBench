; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_alloc_in_work_order_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_alloc_in_work_order_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_in_work_order = type { i32 }
%struct.cx18 = type { %struct.cx18_in_work_order* }

@CX18_MAX_IN_WORK_ORDERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cx18_in_work_order* (%struct.cx18*)* @alloc_in_work_order_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cx18_in_work_order* @alloc_in_work_order_irq(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_in_work_order*, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  store %struct.cx18_in_work_order* null, %struct.cx18_in_work_order** %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CX18_MAX_IN_WORK_ORDERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.cx18*, %struct.cx18** %2, align 8
  %11 = getelementptr inbounds %struct.cx18, %struct.cx18* %10, i32 0, i32 0
  %12 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %12, i64 %14
  %16 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %15, i32 0, i32 0
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %9
  %20 = load %struct.cx18*, %struct.cx18** %2, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 0
  %22 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %22, i64 %24
  store %struct.cx18_in_work_order* %25, %struct.cx18_in_work_order** %4, align 8
  %26 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %27 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %26, i32 0, i32 0
  %28 = call i32 @atomic_set(i32* %27, i32 1)
  br label %33

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %19, %5
  %34 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  ret %struct.cx18_in_work_order* %34
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
