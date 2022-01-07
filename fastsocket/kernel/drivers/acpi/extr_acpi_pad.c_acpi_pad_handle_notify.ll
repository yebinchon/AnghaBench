; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_acpi_pad_handle_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_acpi_pad_handle_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isolated_cpus_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_pad_handle_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pad_handle_notify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = call i32 @mutex_lock(i32* @isolated_cpus_lock)
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @acpi_pad_pur(i32 %7, i32* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @mutex_unlock(i32* @isolated_cpus_lock)
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @acpi_pad_idle_cpus(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @acpi_pad_idle_cpus_num()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @acpi_pad_ost(i32 %19, i32 0, i32 %20)
  br label %25

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @acpi_pad_ost(i32 %23, i32 1, i32 0)
  br label %25

25:                                               ; preds = %22, %18
  %26 = call i32 @mutex_unlock(i32* @isolated_cpus_lock)
  br label %27

27:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @acpi_pad_pur(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_pad_idle_cpus(i32) #1

declare dso_local i32 @acpi_pad_idle_cpus_num(...) #1

declare dso_local i32 @acpi_pad_ost(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
