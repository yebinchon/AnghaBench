; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_cxgb3_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_cxgb3_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@F_GPIO0_OUT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cxgb3_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb3_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %5, align 8
  %10 = load %struct.port_info*, %struct.port_info** %5, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 2, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 2
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.adapter*, %struct.adapter** %6, align 8
  %24 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %25 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = call i32 @t3_set_reg_field(%struct.adapter* %23, i32 %24, i32 %25, i32 %33)
  %35 = call i64 @msleep_interruptible(i32 500)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %17

42:                                               ; preds = %37, %17
  %43 = load %struct.adapter*, %struct.adapter** %6, align 8
  %44 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %45 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %46 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %47 = call i32 @t3_set_reg_field(%struct.adapter* %43, i32 %44, i32 %45, i32 %46)
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
