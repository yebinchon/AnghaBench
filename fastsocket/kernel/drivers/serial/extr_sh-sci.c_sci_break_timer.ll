; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_break_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_break_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sci_break_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_break_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sci_port*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.sci_port*
  store %struct.sci_port* %5, %struct.sci_port** %3, align 8
  %6 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %7 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %6, i32 0, i32 1
  %8 = call i64 @sci_rxd_in(i32* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %12 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %14 = call i32 @sci_schedule_break_timer(%struct.sci_port* %13)
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %17 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %22 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %24 = call i32 @sci_schedule_break_timer(%struct.sci_port* %23)
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %27 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %10
  ret void
}

declare dso_local i64 @sci_rxd_in(i32*) #1

declare dso_local i32 @sci_schedule_break_timer(%struct.sci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
