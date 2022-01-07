; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape.h_tape_ccw_repeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape.h_tape_ccw_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }

@CCW_FLAG_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccw1* (%struct.ccw1*, i32, i32)* @tape_ccw_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccw1* @tape_ccw_repeat(%struct.ccw1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ccw1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %14 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @CCW_FLAG_CC, align 4
  %16 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %17 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %19 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %21 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %20, i32 0, i32 0
  %22 = ptrtoint i32* %21 to i64
  %23 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %24 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %26 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %25, i32 1
  store %struct.ccw1* %26, %struct.ccw1** %4, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  ret %struct.ccw1* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
