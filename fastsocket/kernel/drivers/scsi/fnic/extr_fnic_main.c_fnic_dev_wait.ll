; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_main.c_fnic_dev_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_main.c_fnic_dev_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32 (%struct.vnic_dev*, i32)*, i32 (%struct.vnic_dev*, i32*)*, i32)* @fnic_dev_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_dev_wait(%struct.vnic_dev* %0, i32 (%struct.vnic_dev*, i32)* %1, i32 (%struct.vnic_dev*, i32*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca i32 (%struct.vnic_dev*, i32)*, align 8
  %8 = alloca i32 (%struct.vnic_dev*, i32*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %6, align 8
  store i32 (%struct.vnic_dev*, i32)* %1, i32 (%struct.vnic_dev*, i32)** %7, align 8
  store i32 (%struct.vnic_dev*, i32*)* %2, i32 (%struct.vnic_dev*, i32*)** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32 (%struct.vnic_dev*, i32)*, i32 (%struct.vnic_dev*, i32)** %7, align 8
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 %13(%struct.vnic_dev* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %4
  %22 = load i32, i32* @jiffies, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %43, %21
  %28 = load i32 (%struct.vnic_dev*, i32*)*, i32 (%struct.vnic_dev*, i32*)** %8, align 8
  %29 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %30 = call i32 %28(%struct.vnic_dev* %29, i32* %11)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %51

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %51

39:                                               ; preds = %35
  %40 = load i32, i32* @HZ, align 4
  %41 = sdiv i32 %40, 10
  %42 = call i32 @schedule_timeout_uninterruptible(i32 %41)
  br label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* @jiffies, align 4
  %46 = call i64 @time_after(i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %27, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %38, %33, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
