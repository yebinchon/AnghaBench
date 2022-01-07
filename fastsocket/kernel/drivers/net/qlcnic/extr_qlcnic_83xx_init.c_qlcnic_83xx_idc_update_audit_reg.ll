; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_update_audit_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_update_audit_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DRV_AUDIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_83xx_idc_update_audit_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = call i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* @QLC_83XX_IDC_DRV_AUDIT, align 4
  %25 = call i32 @QLCRDX(%struct.TYPE_5__* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 15
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 7
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %20
  %39 = load i32, i32* @jiffies, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %41, %47
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %20
  %50 = load i32, i32* @jiffies, align 4
  %51 = load i32, i32* @HZ, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %38
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* @QLC_83XX_IDC_DRV_AUDIT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @QLCWRX(%struct.TYPE_5__* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @jiffies, align 4
  %65 = load i32, i32* @HZ, align 4
  %66 = sdiv i32 %64, %65
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %76 = call i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter* %75)
  br label %77

77:                                               ; preds = %74, %53
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCRDX(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @QLCWRX(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
