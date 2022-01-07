; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_halt_io_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_halt_io_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i32 }
%struct.raw3270_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*, %struct.raw3270_request*)* @raw3270_halt_io_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_halt_io_nolock(%struct.raw3270* %0, %struct.raw3270_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raw3270*, align 8
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.raw3270* %0, %struct.raw3270** %4, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %5, align 8
  %8 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %9 = call i64 @raw3270_request_final(%struct.raw3270_request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %21 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %24 = ptrtoint %struct.raw3270_request* %23 to i64
  %25 = call i32 @ccw_device_halt(i32 %22, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %16
  %27 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %28 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %31 = ptrtoint %struct.raw3270_request* %30 to i64
  %32 = call i32 @ccw_device_clear(i32 %29, i64 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %36, %13
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @raw3270_request_final(%struct.raw3270_request*) #1

declare dso_local i32 @ccw_device_halt(i32, i64) #1

declare dso_local i32 @ccw_device_clear(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
