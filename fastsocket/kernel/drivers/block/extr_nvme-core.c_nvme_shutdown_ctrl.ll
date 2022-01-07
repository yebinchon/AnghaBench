; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_shutdown_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_shutdown_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NVME_CC_SHN_MASK = common dso_local global i32 0, align 4
@NVME_CC_SHN_NORMAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NVME_CSTS_SHST_MASK = common dso_local global i32 0, align 4
@NVME_CSTS_SHST_CMPLT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Device shutdown incomplete; abort shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_shutdown_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_shutdown_ctrl(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %6 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = call i32 @readl(i32* %9)
  %11 = load i32, i32* @NVME_CC_SHN_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = load i32, i32* @NVME_CC_SHN_NORMAL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @writel(i32 %16, i32* %20)
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* @jiffies, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %58, %1
  %28 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @readl(i32* %31)
  %33 = load i32, i32* @NVME_CSTS_SHST_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @NVME_CSTS_SHST_CMPLT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %27
  %38 = call i32 @msleep(i32 100)
  %39 = load i32, i32* @current, align 4
  %40 = call i64 @fatal_signal_pending(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINTR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load i32, i32* @jiffies, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @time_after(i32 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %45
  br label %27

59:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50, %42
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
