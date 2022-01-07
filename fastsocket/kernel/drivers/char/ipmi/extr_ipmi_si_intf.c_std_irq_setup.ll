; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_std_irq_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_std_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32)* }

@SI_BT = common dso_local global i64 0, align 8
@si_bt_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@IPMI_BT_INTMASK_REG = common dso_local global i32 0, align 4
@IPMI_BT_INTMASK_ENABLE_IRQ_BIT = common dso_local global i32 0, align 4
@si_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s unable to claim interrupt %d, running polled\0A\00", align 1
@std_irq_cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Using irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @std_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_irq_setup(%struct.smi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  %5 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %6 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

10:                                               ; preds = %1
  %11 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %12 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SI_BT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @si_bt_irq_handler, align 4
  %21 = load i32, i32* @IRQF_SHARED, align 4
  %22 = load i32, i32* @IRQF_DISABLED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DEVICE_NAME, align 4
  %25 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %26 = call i32 @request_irq(i64 %19, i32 %20, i32 %23, i32 %24, %struct.smi_info* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %16
  %30 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %31 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %32, align 8
  %34 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %35 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %34, i32 0, i32 4
  %36 = load i32, i32* @IPMI_BT_INTMASK_REG, align 4
  %37 = load i32, i32* @IPMI_BT_INTMASK_ENABLE_IRQ_BIT, align 4
  %38 = call i32 %33(%struct.TYPE_2__* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %16
  br label %51

40:                                               ; preds = %10
  %41 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %42 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @si_irq_handler, align 4
  %45 = load i32, i32* @IRQF_SHARED, align 4
  %46 = load i32, i32* @IRQF_DISABLED, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DEVICE_NAME, align 4
  %49 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %50 = call i32 @request_irq(i64 %43, i32 %44, i32 %47, i32 %48, %struct.smi_info* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %56 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DEVICE_NAME, align 4
  %59 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %60 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %61)
  %63 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %64 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %76

65:                                               ; preds = %51
  %66 = load i32, i32* @std_irq_cleanup, align 4
  %67 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %68 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %70 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %73 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dev_info(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %65, %54
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %9
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.smi_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
