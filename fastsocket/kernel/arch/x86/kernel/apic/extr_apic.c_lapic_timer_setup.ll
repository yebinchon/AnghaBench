; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_apic.c_lapic_timer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_apic.c_lapic_timer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@CLOCK_EVT_FEAT_DUMMY = common dso_local global i32 0, align 4
@calibration_result = common dso_local global i32 0, align 4
@APIC_LVTT = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@LOCAL_TIMER_VECTOR = common dso_local global i32 0, align 4
@APIC_TMICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @lapic_timer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapic_timer_setup(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %8 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLOCK_EVT_FEAT_DUMMY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %41

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %38 [
    i32 131, label %18
    i32 132, label %18
    i32 128, label %24
    i32 129, label %24
    i32 130, label %37
  ]

18:                                               ; preds = %14, %14
  %19 = load i32, i32* @calibration_result, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 131
  %22 = zext i1 %21 to i32
  %23 = call i32 @__setup_APIC_LVTT(i32 %19, i32 %22, i32 1)
  br label %38

24:                                               ; preds = %14, %14
  %25 = load i32, i32* @APIC_LVTT, align 4
  %26 = call i32 @apic_read(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @APIC_LVT_MASKED, align 4
  %28 = load i32, i32* @LOCAL_TIMER_VECTOR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @APIC_LVTT, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @apic_write(i32 %32, i32 %33)
  %35 = load i32, i32* @APIC_TMICT, align 4
  %36 = call i32 @apic_write(i32 %35, i32 -1)
  br label %38

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %14, %37, %24, %18
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  br label %41

41:                                               ; preds = %38, %13
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__setup_APIC_LVTT(i32, i32, i32) #1

declare dso_local i32 @apic_read(i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
