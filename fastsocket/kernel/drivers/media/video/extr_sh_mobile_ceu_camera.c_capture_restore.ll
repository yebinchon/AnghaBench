; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_capture_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_capture_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_ceu_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@CSTSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Timeout waiting for frame end! Interface problem?\0A\00", align 1
@CAPSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_ceu_dev*, i32)* @capture_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_restore(%struct.sh_mobile_ceu_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sh_mobile_ceu_dev* %0, %struct.sh_mobile_ceu_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 10, %7
  %9 = add nsw i32 %6, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %3, align 8
  %13 = load i32, i32* @CSTSR, align 4
  %14 = call i32 @ceu_read(%struct.sh_mobile_ceu_dev* %12, i32 %13)
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @time_before(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i1 [ false, %11 ], [ %21, %17 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @msleep(i32 1)
  br label %11

26:                                               ; preds = %22
  %27 = load i32, i32* @jiffies, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @time_after(i32 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %3, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %56

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %45, %38
  %40 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %3, align 8
  %41 = load i32, i32* @CAPSR, align 4
  %42 = call i32 @ceu_read(%struct.sh_mobile_ceu_dev* %40, i32 %41)
  %43 = and i32 %42, 65536
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @udelay(i32 10)
  br label %39

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, -65537
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %3, align 8
  %53 = load i32, i32* @CAPSR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %31, %51, %47
  ret void
}

declare dso_local i32 @ceu_read(%struct.sh_mobile_ceu_dev*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
