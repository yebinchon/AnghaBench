; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_device_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@HOST_CTL = common dso_local global i64 0, align 8
@HOST_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_device_reset(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @mtip_check_surprise_removal(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = call i64 @mtip_hba_reset(%struct.driver_data* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = call i32 @mdelay(i32 1)
  %20 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mtip_init_port(i32 %22)
  %24 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %25 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mtip_start_port(i32 %26)
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HOST_CTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32, i32* @HOST_IRQ_EN, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HOST_CTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %18, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @mtip_check_surprise_removal(i32) #1

declare dso_local i64 @mtip_hba_reset(%struct.driver_data*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mtip_init_port(i32) #1

declare dso_local i32 @mtip_start_port(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
