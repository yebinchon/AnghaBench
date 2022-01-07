; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_virtio-rng.c_virtio_data_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_virtio-rng.c_virtio_data_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }

@data_left = common dso_local global i32 0, align 4
@have_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32)* @virtio_data_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_data_present(%struct.hwrng* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwrng*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @data_left, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %32

16:                                               ; preds = %12
  %17 = call i32 @wait_for_completion_killable(i32* @have_data)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %16
  %23 = load i32, i32* @data_left, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @register_buffer()
  br label %12

31:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %20, %15, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @register_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
