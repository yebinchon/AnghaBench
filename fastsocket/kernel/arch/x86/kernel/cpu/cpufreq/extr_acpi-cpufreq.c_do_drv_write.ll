; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_do_drv_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_do_drv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drv_cmd = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@INTEL_MSR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_drv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_drv_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drv_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.drv_cmd*
  store %struct.drv_cmd* %7, %struct.drv_cmd** %3, align 8
  %8 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %53 [
    i32 129, label %11
    i32 128, label %38
  ]

11:                                               ; preds = %1
  %12 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rdmsr(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @INTEL_MSR_RANGE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @INTEL_MSR_RANGE, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %23, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @wrmsr(i32 %34, i32 %35, i32 %36)
  br label %54

38:                                               ; preds = %1
  %39 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drv_cmd*, %struct.drv_cmd** %3, align 8
  %48 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @acpi_os_write_port(i32 %43, i32 %46, i32 %51)
  br label %54

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %53, %38, %11
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @acpi_os_write_port(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
