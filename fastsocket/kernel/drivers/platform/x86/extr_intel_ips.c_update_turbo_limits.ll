; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_update_turbo_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_update_turbo_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, i8*, i8*, i8*, i8*, i64 }

@THM_HTS = common dso_local global i32 0, align 4
@HTS_PCTD_DIS = common dso_local global i32 0, align 4
@HTS_GTD_DIS = common dso_local global i32 0, align 4
@THM_MPCPC = common dso_local global i32 0, align 4
@THM_MMGPC = common dso_local global i32 0, align 4
@THM_PTL = common dso_local global i32 0, align 4
@THM_MPPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ips_driver*)* @update_turbo_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_turbo_limits(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %4 = load i32, i32* @THM_HTS, align 4
  %5 = call i32 @thm_readl(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HTS_PCTD_DIS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %13 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %15 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %17 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @HTS_GTD_DIS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %28 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %1
  %30 = load i32, i32* @THM_MPCPC, align 4
  %31 = call i8* @thm_readw(i32 %30)
  %32 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %33 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @THM_MMGPC, align 4
  %35 = call i8* @thm_readw(i32 %34)
  %36 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %37 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @THM_PTL, align 4
  %39 = call i8* @thm_readw(i32 %38)
  %40 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %41 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @THM_MPPC, align 4
  %43 = call i8* @thm_readw(i32 %42)
  %44 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %45 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %47 = call i32 @verify_limits(%struct.ips_driver* %46)
  ret void
}

declare dso_local i32 @thm_readl(i32) #1

declare dso_local i8* @thm_readw(i32) #1

declare dso_local i32 @verify_limits(%struct.ips_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
