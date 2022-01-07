; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-highlander/extr_psw.c_psw_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-highlander/extr_psw.c_psw_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.push_switch_platform_info* }
%struct.push_switch_platform_info = type { i32 }
%struct.push_switch = type { i32, i32 }

@PA_DBSW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @psw_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psw_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.push_switch*, align 8
  %7 = alloca %struct.push_switch_platform_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.platform_device*
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = call %struct.push_switch* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.push_switch* %14, %struct.push_switch** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %17, align 8
  store %struct.push_switch_platform_info* %18, %struct.push_switch_platform_info** %7, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @PA_DBSW, align 4
  %20 = call i32 @ctrl_inw(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.push_switch*, %struct.push_switch** %6, align 8
  %22 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 112
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %7, align 8
  %31 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %7, align 8
  %39 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %37, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.push_switch*, %struct.push_switch** %6, align 8
  %48 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.push_switch*, %struct.push_switch** %6, align 8
  %50 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = load %struct.push_switch*, %struct.push_switch** %6, align 8
  %55 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %54, i32 0, i32 1
  %56 = load i64, i64* @jiffies, align 8
  %57 = add nsw i64 %56, 50
  %58 = call i32 @mod_timer(i32* %55, i64 %57)
  br label %59

59:                                               ; preds = %53, %36
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, 28672
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PA_DBSW, align 4
  %66 = call i32 @ctrl_outw(i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @IRQ_RETVAL(i32 %67)
  ret i32 %68
}

declare dso_local %struct.push_switch* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ctrl_inw(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ctrl_outw(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
