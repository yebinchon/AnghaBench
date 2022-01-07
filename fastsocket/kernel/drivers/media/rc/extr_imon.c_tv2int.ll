; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_tv2int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_tv2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.timeval*)* @tv2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv2int(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.timeval*, %struct.timeval** %4, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.timeval*, %struct.timeval** %3, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  store i32 1000000, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.timeval*, %struct.timeval** %3, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.timeval*, %struct.timeval** %4, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.timeval*, %struct.timeval** %3, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.timeval*, %struct.timeval** %4, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 1000
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %42, 1000
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %17
  store i32 1000, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %17
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
