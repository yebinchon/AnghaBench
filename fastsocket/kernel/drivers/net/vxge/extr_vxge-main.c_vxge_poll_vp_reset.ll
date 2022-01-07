; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_poll_vp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_poll_vp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@MSI_X = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vxge_poll_vp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_poll_vp_reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.vxgedev*
  store %struct.vxgedev* %7, %struct.vxgedev** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %17 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %16, i32 0, i32 4
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @vxge_reset_vpath(%struct.vxgedev* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %35 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MSI_X, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %42 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vxge_hw_device_unmask_all(i32 %43)
  %45 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %46 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vxge_hw_device_flush_io(i32 %47)
  br label %49

49:                                               ; preds = %40, %33, %30
  %50 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %51 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %50, i32 0, i32 1
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = call i32 @mod_timer(i32* %51, i64 %56)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vxge_reset_vpath(%struct.vxgedev*, i32) #1

declare dso_local i32 @vxge_hw_device_unmask_all(i32) #1

declare dso_local i32 @vxge_hw_device_flush_io(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
