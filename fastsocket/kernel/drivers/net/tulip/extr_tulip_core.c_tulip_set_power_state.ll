; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_tulip_set_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_tulip_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tulip_private = type { i32, i32 }

@HAS_ACPI = common dso_local global i32 0, align 4
@CFDD = common dso_local global i32 0, align 4
@CFDD_Sleep = common dso_local global i32 0, align 4
@CFDD_Snooze = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tulip_private*, i32, i32)* @tulip_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_set_power_state(%struct.tulip_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tulip_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tulip_private* %0, %struct.tulip_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %10 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HAS_ACPI, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %3
  %16 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %17 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CFDD, align 4
  %20 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %7)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CFDD_Sleep, align 4
  %23 = load i32, i32* @CFDD_Snooze, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @CFDD_Sleep, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %41

33:                                               ; preds = %15
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @CFDD_Snooze, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %47 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CFDD, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @pci_write_config_dword(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52, %3
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
