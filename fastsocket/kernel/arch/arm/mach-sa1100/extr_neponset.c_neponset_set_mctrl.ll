; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_neponset.c_neponset_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_neponset.c_neponset_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@MDM_CTL_0 = common dso_local global i32 0, align 4
@_Ser1UTCR0 = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i32 0, align 4
@MDM_CTL0_RTS2 = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@MDM_CTL0_DTR2 = common dso_local global i32 0, align 4
@_Ser3UTCR0 = common dso_local global i64 0, align 8
@MDM_CTL0_RTS1 = common dso_local global i32 0, align 4
@MDM_CTL0_DTR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @neponset_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neponset_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MDM_CTL_0, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @_Ser1UTCR0, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TIOCM_RTS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @MDM_CTL0_RTS2, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @MDM_CTL0_RTS2, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @MDM_CTL0_DTR2, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @MDM_CTL0_DTR2, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %77

41:                                               ; preds = %2
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @_Ser3UTCR0, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TIOCM_RTS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @MDM_CTL0_RTS1, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @MDM_CTL0_RTS1, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TIOCM_DTR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @MDM_CTL0_DTR1, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @MDM_CTL0_DTR1, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %41
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* @MDM_CTL_0, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
