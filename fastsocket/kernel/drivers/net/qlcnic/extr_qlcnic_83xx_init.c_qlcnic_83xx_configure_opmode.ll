; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_configure_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_configure_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_VIRTUAL_NIC_MODE = common dso_local global i32 0, align 4
@QLC_83XX_DEFAULT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %6 = call i32 @qlcnic_83xx_get_nic_configuration(%struct.qlcnic_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @QLC_83XX_VIRTUAL_NIC_MODE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = call i64 @qlcnic_83xx_config_vnic_opmode(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %18
  br label %39

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @QLC_83XX_DEFAULT_MODE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = call i64 @qlcnic_83xx_config_default_opmode(%struct.qlcnic_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %25
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34, %22, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @qlcnic_83xx_get_nic_configuration(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_config_vnic_opmode(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_config_default_opmode(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
