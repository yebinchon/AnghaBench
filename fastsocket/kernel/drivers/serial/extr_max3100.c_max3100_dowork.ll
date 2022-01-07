; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_max3100.c_max3100_dowork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_max3100.c_max3100_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3100_port = type { i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max3100_port*)* @max3100_dowork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3100_dowork(%struct.max3100_port* %0) #0 {
  %2 = alloca %struct.max3100_port*, align 8
  store %struct.max3100_port* %0, %struct.max3100_port** %2, align 8
  %3 = load %struct.max3100_port*, %struct.max3100_port** %2, align 8
  %4 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load %struct.max3100_port*, %struct.max3100_port** %2, align 8
  %9 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %8, i32 0, i32 0
  %10 = call i32 @work_pending(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @freezing(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load %struct.max3100_port*, %struct.max3100_port** %2, align 8
  %18 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.max3100_port*, %struct.max3100_port** %2, align 8
  %23 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.max3100_port*, %struct.max3100_port** %2, align 8
  %26 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %25, i32 0, i32 0
  %27 = call i32 @queue_work(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %21, %16, %12, %7, %1
  ret void
}

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @freezing(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
