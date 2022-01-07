; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_validate_raw_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_validate_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.perf_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@p4_event_bind_map = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@P4_ESCR_EVENTMASK_MASK = common dso_local global i32 0, align 4
@P4_PEBS_CONFIG_ENABLE = common dso_local global i32 0, align 4
@p4_pebs_bind_map = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @p4_validate_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_validate_raw_event(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @p4_config_unpack_event(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p4_event_bind_map, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %12)
  %14 = icmp uge i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %93

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @p4_event_match_cpu_model(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %18
  %26 = call i64 (...) @p4_ht_active()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p4_event_bind_map, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = call i64 (...) @perf_paranoid_cpu()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %41 = call i32 @capable(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %93

46:                                               ; preds = %39, %36
  br label %47

47:                                               ; preds = %46, %28, %25
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @p4_config_unpack_escr(i32 %51)
  %53 = load i32, i32* @P4_ESCR_EVENTMASK_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p4_event_bind_map, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = xor i32 %61, -1
  %63 = and i32 %55, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %93

68:                                               ; preds = %47
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @P4_PEBS_CONFIG_ENABLE, align 4
  %74 = call i64 @p4_config_pebs_has(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %93

79:                                               ; preds = %68
  %80 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %81 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @p4_config_unpack_metric(i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p4_pebs_bind_map, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %86)
  %88 = icmp uge i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %89, %76, %65, %43, %22, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @p4_config_unpack_event(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @p4_event_match_cpu_model(i32) #1

declare dso_local i64 @p4_ht_active(...) #1

declare dso_local i64 @perf_paranoid_cpu(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @p4_config_unpack_escr(i32) #1

declare dso_local i64 @p4_config_pebs_has(i32, i32) #1

declare dso_local i32 @p4_config_unpack_metric(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
