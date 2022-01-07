; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_set_attr_rdpmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_set_attr_rdpmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@change_rdpmc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_attr_rdpmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_attr_rdpmc(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @simple_strtoul(i8* %10, i32* null, i32 0)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %29 = load i32, i32* @change_rdpmc, align 4
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @smp_call_function(i32 %29, i8* %31, i32 1)
  br label %33

33:                                               ; preds = %23, %4
  %34 = load i64, i64* %8, align 8
  ret i64 %34
}

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @smp_call_function(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
