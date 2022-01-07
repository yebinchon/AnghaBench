; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_start_receiver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_start_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, %struct.rx* }
%struct.rx = type { i32, i64 }

@RU_SUSPENDED = common dso_local global i64 0, align 8
@ruc_start = common dso_local global i32 0, align 4
@RU_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*, %struct.rx*)* @e100_start_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_start_receiver(%struct.nic* %0, %struct.rx* %1) #0 {
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.rx*, align 8
  store %struct.nic* %0, %struct.nic** %3, align 8
  store %struct.rx* %1, %struct.rx** %4, align 8
  %5 = load %struct.nic*, %struct.nic** %3, align 8
  %6 = getelementptr inbounds %struct.nic, %struct.nic* %5, i32 0, i32 1
  %7 = load %struct.rx*, %struct.rx** %6, align 8
  %8 = icmp ne %struct.rx* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load i64, i64* @RU_SUSPENDED, align 8
  %12 = load %struct.nic*, %struct.nic** %3, align 8
  %13 = getelementptr inbounds %struct.nic, %struct.nic* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %39

17:                                               ; preds = %10
  %18 = load %struct.rx*, %struct.rx** %4, align 8
  %19 = icmp ne %struct.rx* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.nic*, %struct.nic** %3, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 1
  %23 = load %struct.rx*, %struct.rx** %22, align 8
  store %struct.rx* %23, %struct.rx** %4, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.rx*, %struct.rx** %4, align 8
  %26 = getelementptr inbounds %struct.rx, %struct.rx* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = load i32, i32* @ruc_start, align 4
  %32 = load %struct.rx*, %struct.rx** %4, align 8
  %33 = getelementptr inbounds %struct.rx, %struct.rx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @e100_exec_cmd(%struct.nic* %30, i32 %31, i32 %34)
  %36 = load i64, i64* @RU_RUNNING, align 8
  %37 = load %struct.nic*, %struct.nic** %3, align 8
  %38 = getelementptr inbounds %struct.nic, %struct.nic* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %9, %16, %29, %24
  ret void
}

declare dso_local i32 @e100_exec_cmd(%struct.nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
