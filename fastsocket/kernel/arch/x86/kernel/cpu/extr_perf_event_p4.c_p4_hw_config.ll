; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.p4_event_bind = type { i32 }

@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@P4_CONFIG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @p4_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_hw_config(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.p4_event_bind*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = call i32 (...) @get_cpu()
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @p4_default_cccr_conf(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @p4_default_escr_conf(i32 %12, i32 %16, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @p4_config_pack_escr(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @p4_config_pack_cccr(i32 %24)
  %26 = or i32 %23, %25
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = call i64 (...) @p4_ht_active()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @p4_ht_thread(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @p4_set_ht_bit(i32 %40)
  %42 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %36, %32, %1
  %46 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PERF_TYPE_RAW, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %45
  %53 = load i32, i32* @P4_CONFIG_MASK, align 4
  %54 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %60 = call i32 @p4_validate_raw_event(%struct.perf_event* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %100

64:                                               ; preds = %52
  %65 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %75 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.p4_event_bind* @p4_config_get_bind(i32 %77)
  store %struct.p4_event_bind* %78, %struct.p4_event_bind** %7, align 8
  %79 = load %struct.p4_event_bind*, %struct.p4_event_bind** %7, align 8
  %80 = icmp ne %struct.p4_event_bind* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %64
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %100

84:                                               ; preds = %64
  %85 = load %struct.p4_event_bind*, %struct.p4_event_bind** %7, align 8
  %86 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @P4_OPCODE_ESEL(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @P4_CCCR_ESEL(i32 %89)
  %91 = call i32 @p4_config_pack_cccr(i32 %90)
  %92 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %84, %45
  %98 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %99 = call i32 @x86_setup_perfctr(%struct.perf_event* %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %81, %63
  %101 = call i32 (...) @put_cpu()
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @p4_default_cccr_conf(i32) #1

declare dso_local i32 @p4_default_escr_conf(i32, i32, i32) #1

declare dso_local i32 @p4_config_pack_escr(i32) #1

declare dso_local i32 @p4_config_pack_cccr(i32) #1

declare dso_local i64 @p4_ht_active(...) #1

declare dso_local i64 @p4_ht_thread(i32) #1

declare dso_local i32 @p4_set_ht_bit(i32) #1

declare dso_local i32 @p4_validate_raw_event(%struct.perf_event*) #1

declare dso_local %struct.p4_event_bind* @p4_config_get_bind(i32) #1

declare dso_local i32 @P4_OPCODE_ESEL(i32) #1

declare dso_local i32 @P4_CCCR_ESEL(i32) #1

declare dso_local i32 @x86_setup_perfctr(%struct.perf_event*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
