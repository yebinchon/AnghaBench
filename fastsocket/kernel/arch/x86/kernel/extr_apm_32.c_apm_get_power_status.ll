; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_apm_get_power_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_apm_get_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.apm_bios_call = type { i32, i32, i32, i32, i32 }

@APM_FUNC_GET_STATUS = common dso_local global i32 0, align 4
@APM_DEVICE_ALL = common dso_local global i32 0, align 4
@apm_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@APM_32_UNSUPPORTED = common dso_local global i32 0, align 4
@APM_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @apm_get_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_get_power_status(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.apm_bios_call, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @APM_FUNC_GET_STATUS, align 4
  %10 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @APM_DEVICE_ALL, align 4
  %12 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @apm_info, i32 0, i32 1), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @APM_32_UNSUPPORTED, align 4
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = call i64 @apm_bios_call(%struct.apm_bios_call* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @apm_info, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @swab16(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 32768
  store i32 %40, i32* %38, align 4
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.apm_bios_call, %struct.apm_bios_call* %8, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* @APM_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %21, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @apm_bios_call(%struct.apm_bios_call*) #1

declare dso_local i32 @swab16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
