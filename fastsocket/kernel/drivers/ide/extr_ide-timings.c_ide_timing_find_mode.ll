; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-timings.c_ide_timing_find_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-timings.c_ide_timing_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i32 }

@ide_timing = common dso_local global %struct.ide_timing* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ide_timing* @ide_timing_find_mode(i32 %0) #0 {
  %2 = alloca %struct.ide_timing*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ide_timing*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.ide_timing*, %struct.ide_timing** @ide_timing, align 8
  store %struct.ide_timing* %5, %struct.ide_timing** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.ide_timing*, %struct.ide_timing** %4, align 8
  %8 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.ide_timing*, %struct.ide_timing** %4, align 8
  %14 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.ide_timing* null, %struct.ide_timing** %2, align 8
  br label %24

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.ide_timing*, %struct.ide_timing** %4, align 8
  %21 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %20, i32 1
  store %struct.ide_timing* %21, %struct.ide_timing** %4, align 8
  br label %6

22:                                               ; preds = %6
  %23 = load %struct.ide_timing*, %struct.ide_timing** %4, align 8
  store %struct.ide_timing* %23, %struct.ide_timing** %2, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.ide_timing*, %struct.ide_timing** %2, align 8
  ret %struct.ide_timing* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
