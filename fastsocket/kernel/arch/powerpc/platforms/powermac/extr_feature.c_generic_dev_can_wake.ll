; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_generic_dev_can_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_generic_dev_can_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PMAC_MB_MAY_SLEEP = common dso_local global i32 0, align 4
@PMAC_MB_CAN_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @generic_dev_can_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @generic_dev_can_wake(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 4
  %8 = load i32, i32* @PMAC_MB_MAY_SLEEP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @PMAC_MB_CAN_SLEEP, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 4
  br label %15

15:                                               ; preds = %11, %3
  ret i64 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
