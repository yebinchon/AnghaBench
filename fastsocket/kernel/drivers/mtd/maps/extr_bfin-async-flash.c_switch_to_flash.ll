; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_bfin-async-flash.c_switch_to_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_bfin-async-flash.c_switch_to_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_state = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_state*)* @switch_to_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_to_flash(%struct.async_state* %0) #0 {
  %2 = alloca %struct.async_state*, align 8
  store %struct.async_state* %0, %struct.async_state** %2, align 8
  %3 = load %struct.async_state*, %struct.async_state** %2, align 8
  %4 = getelementptr inbounds %struct.async_state, %struct.async_state* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @local_irq_save(i32 %5)
  %7 = load %struct.async_state*, %struct.async_state** %2, align 8
  %8 = getelementptr inbounds %struct.async_state, %struct.async_state* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gpio_set_value(i32 %9, i32 0)
  %11 = call i32 (...) @bfin_read_EBIU_AMBCTL0()
  %12 = load %struct.async_state*, %struct.async_state** %2, align 8
  %13 = getelementptr inbounds %struct.async_state, %struct.async_state* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @bfin_read_EBIU_AMBCTL1()
  %15 = load %struct.async_state*, %struct.async_state** %2, align 8
  %16 = getelementptr inbounds %struct.async_state, %struct.async_state* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.async_state*, %struct.async_state** %2, align 8
  %18 = getelementptr inbounds %struct.async_state, %struct.async_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfin_write_EBIU_AMBCTL0(i32 %19)
  %21 = load %struct.async_state*, %struct.async_state** %2, align 8
  %22 = getelementptr inbounds %struct.async_state, %struct.async_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bfin_write_EBIU_AMBCTL1(i32 %23)
  %25 = call i32 (...) @SSYNC()
  ret void
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @bfin_read_EBIU_AMBCTL0(...) #1

declare dso_local i32 @bfin_read_EBIU_AMBCTL1(...) #1

declare dso_local i32 @bfin_write_EBIU_AMBCTL0(i32) #1

declare dso_local i32 @bfin_write_EBIU_AMBCTL1(i32) #1

declare dso_local i32 @SSYNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
