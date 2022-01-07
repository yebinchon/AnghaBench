; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_pause_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_pause_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@CPU_STATE = common dso_local global i64 0, align 8
@CPU_MODE = common dso_local global i64 0, align 8
@CPU_MODE_HALT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i64)* @tg3_pause_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_pause_cpu(%struct.tg3* %0, i64 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 10000, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 10000
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @CPU_STATE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @tw32(i64 %13, i32 -1)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @CPU_MODE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @CPU_MODE_HALT, align 4
  %19 = call i32 @tw32(i64 %17, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @CPU_MODE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @tr32(i64 %22)
  %24 = load i32, i32* @CPU_MODE_HALT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  br label %32

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %7

32:                                               ; preds = %27, %7
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 10000
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  ret i32 %40
}

declare dso_local i32 @tw32(i64, i32) #1

declare dso_local i32 @tr32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
