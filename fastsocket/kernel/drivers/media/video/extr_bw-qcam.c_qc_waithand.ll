; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_waithand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_waithand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32 }

@maxpoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcam_device*, i32)* @qc_waithand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qc_waithand(%struct.qcam_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcam_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %30, %10
  %12 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %13 = call i32 @read_lpstatus(%struct.qcam_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @maxpoll, align 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @msleep_interruptible(i32 5)
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @maxpoll, align 4
  %27 = add nsw i32 %26, 1000
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %56

30:                                               ; preds = %24
  br label %11

31:                                               ; preds = %11
  br label %54

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %52, %32
  %34 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %35 = call i32 @read_lpstatus(%struct.qcam_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @maxpoll, align 4
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @msleep_interruptible(i32 5)
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @maxpoll, align 4
  %49 = add nsw i32 %48, 1000
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %56

52:                                               ; preds = %45
  br label %33

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %51, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @read_lpstatus(%struct.qcam_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
