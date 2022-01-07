; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_fw_dev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_fw_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.device*, %struct.device* }
%struct.firmware_priv = type { i32, %struct.firmware_priv*, %struct.firmware_priv* }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @fw_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.firmware_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = bitcast %struct.device* %5 to %struct.firmware_priv*
  %7 = call %struct.firmware_priv* @dev_get_drvdata(%struct.firmware_priv* %6)
  store %struct.firmware_priv* %7, %struct.firmware_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.firmware_priv*, %struct.firmware_priv** %3, align 8
  %11 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.firmware_priv*, %struct.firmware_priv** %3, align 8
  %16 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %15, i32 0, i32 2
  %17 = load %struct.firmware_priv*, %struct.firmware_priv** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %17, i64 %19
  %21 = call i32 @__free_page(%struct.firmware_priv* byval(%struct.firmware_priv) align 8 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.firmware_priv*, %struct.firmware_priv** %3, align 8
  %27 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %26, i32 0, i32 2
  %28 = load %struct.firmware_priv*, %struct.firmware_priv** %27, align 8
  %29 = call i32 @kfree(%struct.firmware_priv* %28)
  %30 = load %struct.firmware_priv*, %struct.firmware_priv** %3, align 8
  %31 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %30, i32 0, i32 1
  %32 = load %struct.firmware_priv*, %struct.firmware_priv** %31, align 8
  %33 = call i32 @kfree(%struct.firmware_priv* %32)
  %34 = load %struct.firmware_priv*, %struct.firmware_priv** %3, align 8
  %35 = call i32 @kfree(%struct.firmware_priv* %34)
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = bitcast %struct.device* %36 to %struct.firmware_priv*
  %38 = call i32 @kfree(%struct.firmware_priv* %37)
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = call i32 @module_put(i32 %39)
  ret void
}

declare dso_local %struct.firmware_priv* @dev_get_drvdata(%struct.firmware_priv*) #1

declare dso_local i32 @__free_page(%struct.firmware_priv* byval(%struct.firmware_priv) align 8) #1

declare dso_local i32 @kfree(%struct.firmware_priv*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
