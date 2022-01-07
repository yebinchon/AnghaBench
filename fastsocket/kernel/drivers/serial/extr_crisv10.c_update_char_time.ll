; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_update_char_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_update_char_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@MIN_FLUSH_TIME_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e100_serial*)* @update_char_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_char_time(%struct.e100_serial* %0) #0 {
  %2 = alloca %struct.e100_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e100_serial* %0, %struct.e100_serial** %2, align 8
  %5 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %6 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CSIZE, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CS7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 9, i32* %4, align 4
  br label %20

19:                                               ; preds = %1
  store i32 10, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CSTOPB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PARENB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 1000000
  %39 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %40 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  %43 = add nsw i32 %42, 1
  %44 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %45 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %47 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 4, %48
  %50 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %51 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %53 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MIN_FLUSH_TIME_USEC, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %36
  %58 = load i32, i32* @MIN_FLUSH_TIME_USEC, align 4
  %59 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %60 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
