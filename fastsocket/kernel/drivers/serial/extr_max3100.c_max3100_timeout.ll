; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_max3100.c_max3100_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_max3100.c_max3100_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3100_port = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @max3100_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3100_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.max3100_port*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.max3100_port*
  store %struct.max3100_port* %5, %struct.max3100_port** %3, align 8
  %6 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %7 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %13 = call i32 @max3100_dowork(%struct.max3100_port* %12)
  %14 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %15 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %14, i32 0, i32 1
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %18 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i32 @mod_timer(i32* %15, i64 %20)
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @max3100_dowork(%struct.max3100_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
