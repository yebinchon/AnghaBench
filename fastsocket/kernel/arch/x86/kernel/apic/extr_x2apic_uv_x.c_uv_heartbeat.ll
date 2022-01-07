; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, %struct.timer_list }
%struct.timer_list = type { i32 }

@uv_hub_info = common dso_local global %struct.TYPE_4__* null, align 8
@SCIR_CPU_HEARTBEAT = common dso_local global i8 0, align 1
@SCIR_CPU_ACTIVITY = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@SCIR_CPU_HB_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @uv_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_heartbeat(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_hub_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store %struct.timer_list* %7, %struct.timer_list** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_hub_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 4
  store i8 %11, i8* %4, align 1
  %12 = load i8, i8* @SCIR_CPU_HEARTBEAT, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %4, align 1
  %18 = call i32 (...) @raw_smp_processor_id()
  %19 = call i64 @idle_cpu(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i8, i8* @SCIR_CPU_ACTIVITY, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  br label %36

29:                                               ; preds = %1
  %30 = load i8, i8* @SCIR_CPU_ACTIVITY, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %4, align 1
  br label %36

36:                                               ; preds = %29, %21
  %37 = load i8, i8* %4, align 1
  %38 = call i32 @uv_set_scir_bits(i8 zeroext %37)
  %39 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* @SCIR_CPU_HB_INTERVAL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @mod_timer_pinned(%struct.timer_list* %39, i64 %42)
  ret void
}

declare dso_local i64 @idle_cpu(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @uv_set_scir_bits(i8 zeroext) #1

declare dso_local i32 @mod_timer_pinned(%struct.timer_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
