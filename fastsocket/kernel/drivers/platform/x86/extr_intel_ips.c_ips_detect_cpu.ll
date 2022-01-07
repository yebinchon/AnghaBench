; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_detect_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_detect_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ips_mcp_limits = type { i32 }
%struct.ips_driver = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"Non-IPS CPU detected.\0A\00", align 1
@IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@IA32_MISC_TURBO_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CPU       M\00", align 1
@ips_sv_limits = common dso_local global %struct.ips_mcp_limits zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"CPU       L\00", align 1
@ips_lv_limits = common dso_local global %struct.ips_mcp_limits zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"CPU       U\00", align 1
@ips_ulv_limits = common dso_local global %struct.ips_mcp_limits zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"No CPUID match found.\0A\00", align 1
@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@TURBO_TDP_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"CPU TDP doesn't match expected value (found %d, expected %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ips_mcp_limits* (%struct.ips_driver*)* @ips_detect_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ips_mcp_limits* @ips_detect_cpu(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ips_mcp_limits*, align 8
  %6 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  store %struct.ips_mcp_limits* null, %struct.ips_mcp_limits** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1), align 4
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %18, label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %14 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_info(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %87

18:                                               ; preds = %9
  %19 = load i32, i32* @IA32_MISC_ENABLE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @rdmsrl(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IA32_MISC_TURBO_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %28 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %31 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 2), align 4
  %34 = call i64 @strstr(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.ips_mcp_limits* @ips_sv_limits, %struct.ips_mcp_limits** %5, align 8
  br label %55

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 2), align 4
  %39 = call i64 @strstr(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.ips_mcp_limits* @ips_lv_limits, %struct.ips_mcp_limits** %5, align 8
  br label %54

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 2), align 4
  %44 = call i64 @strstr(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store %struct.ips_mcp_limits* @ips_ulv_limits, %struct.ips_mcp_limits** %5, align 8
  br label %53

47:                                               ; preds = %42
  %48 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %49 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_info(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %87

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @rdmsrl(i32 %56, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @TURBO_TDP_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %5, align 8
  %63 = getelementptr inbounds %struct.ips_mcp_limits, %struct.ips_mcp_limits* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 8
  %67 = mul nsw i32 %66, 1000
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %55
  %70 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %71 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %74, 8
  %76 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %5, align 8
  %77 = getelementptr inbounds %struct.ips_mcp_limits, %struct.ips_mcp_limits* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 1000
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %73, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %81, 8
  %83 = mul nsw i32 %82, 1000
  %84 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %5, align 8
  %85 = getelementptr inbounds %struct.ips_mcp_limits, %struct.ips_mcp_limits* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %69, %55
  br label %87

87:                                               ; preds = %86, %47, %12
  %88 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %5, align 8
  ret %struct.ips_mcp_limits* %88
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
