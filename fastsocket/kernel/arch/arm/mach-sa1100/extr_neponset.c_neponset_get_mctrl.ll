; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_neponset.c_neponset_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_neponset.c_neponset_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@MDM_CTL_1 = common dso_local global i32 0, align 4
@_Ser1UTCR0 = common dso_local global i64 0, align 8
@MDM_CTL1_DCD2 = common dso_local global i32 0, align 4
@MDM_CTL1_CTS2 = common dso_local global i32 0, align 4
@MDM_CTL1_DSR2 = common dso_local global i32 0, align 4
@_Ser3UTCR0 = common dso_local global i64 0, align 8
@MDM_CTL1_DCD1 = common dso_local global i32 0, align 4
@MDM_CTL1_CTS1 = common dso_local global i32 0, align 4
@MDM_CTL1_DSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @neponset_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neponset_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @TIOCM_CD, align 4
  %6 = load i32, i32* @TIOCM_CTS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @TIOCM_DSR, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @MDM_CTL_1, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @_Ser1UTCR0, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MDM_CTL1_DCD2, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @TIOCM_CD, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MDM_CTL1_CTS2, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @TIOCM_CTS, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MDM_CTL1_DSR2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @TIOCM_DSR, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %85

47:                                               ; preds = %1
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @_Ser3UTCR0, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MDM_CTL1_DCD1, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @TIOCM_CD, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @MDM_CTL1_CTS1, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @TIOCM_CTS, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MDM_CTL1_DSR1, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @TIOCM_DSR, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %47
  br label %85

85:                                               ; preds = %84, %46
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
