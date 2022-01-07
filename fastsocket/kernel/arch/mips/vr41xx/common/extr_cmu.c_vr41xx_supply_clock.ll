; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_cmu.c_vr41xx_supply_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_cmu.c_vr41xx_supply_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmu_lock = common dso_local global i32 0, align 4
@MSKPIU = common dso_local global i32 0, align 4
@cmuclkmsk = common dso_local global i32 0, align 4
@MSKSIU = common dso_local global i32 0, align 4
@MSKSSIU = common dso_local global i32 0, align 4
@MSKAIU = common dso_local global i32 0, align 4
@MSKKIU = common dso_local global i32 0, align 4
@MSKFIR = common dso_local global i32 0, align 4
@MSKFFIR = common dso_local global i32 0, align 4
@CPU_VR4111 = common dso_local global i32 0, align 4
@CPU_VR4121 = common dso_local global i32 0, align 4
@MSKDSIU = common dso_local global i32 0, align 4
@MSKCSI = common dso_local global i32 0, align 4
@MSKSCSI = common dso_local global i32 0, align 4
@MSKPCIU = common dso_local global i32 0, align 4
@MSKSHSP = common dso_local global i32 0, align 4
@MSKPPCIU = common dso_local global i32 0, align 4
@MSKCEU = common dso_local global i32 0, align 4
@cmuclkmsk2 = common dso_local global i32 0, align 4
@MSKMAC0 = common dso_local global i32 0, align 4
@MSKMAC1 = common dso_local global i32 0, align 4
@CMUCLKMSK2 = common dso_local global i32 0, align 4
@CMUCLKMSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_supply_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @spin_lock_irq(i32* @cmu_lock)
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %78 [
    i32 129, label %5
    i32 128, label %9
    i32 140, label %15
    i32 132, label %19
    i32 134, label %23
    i32 137, label %29
    i32 138, label %48
    i32 131, label %54
    i32 133, label %58
    i32 130, label %62
    i32 139, label %66
    i32 136, label %70
    i32 135, label %74
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @MSKPIU, align 4
  %7 = load i32, i32* @cmuclkmsk, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @cmuclkmsk, align 4
  br label %79

9:                                                ; preds = %1
  %10 = load i32, i32* @MSKSIU, align 4
  %11 = load i32, i32* @MSKSSIU, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @cmuclkmsk, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @cmuclkmsk, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load i32, i32* @MSKAIU, align 4
  %17 = load i32, i32* @cmuclkmsk, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* @cmuclkmsk, align 4
  br label %79

19:                                               ; preds = %1
  %20 = load i32, i32* @MSKKIU, align 4
  %21 = load i32, i32* @cmuclkmsk, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @cmuclkmsk, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load i32, i32* @MSKFIR, align 4
  %25 = load i32, i32* @MSKFFIR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @cmuclkmsk, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @cmuclkmsk, align 4
  br label %79

29:                                               ; preds = %1
  %30 = call i32 (...) @current_cpu_type()
  %31 = load i32, i32* @CPU_VR4111, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = call i32 (...) @current_cpu_type()
  %35 = load i32, i32* @CPU_VR4121, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @MSKDSIU, align 4
  %39 = load i32, i32* @cmuclkmsk, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @cmuclkmsk, align 4
  br label %47

41:                                               ; preds = %33
  %42 = load i32, i32* @MSKSIU, align 4
  %43 = load i32, i32* @MSKDSIU, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @cmuclkmsk, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @cmuclkmsk, align 4
  br label %47

47:                                               ; preds = %41, %37
  br label %79

48:                                               ; preds = %1
  %49 = load i32, i32* @MSKCSI, align 4
  %50 = load i32, i32* @MSKSCSI, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @cmuclkmsk, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @cmuclkmsk, align 4
  br label %79

54:                                               ; preds = %1
  %55 = load i32, i32* @MSKPCIU, align 4
  %56 = load i32, i32* @cmuclkmsk, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @cmuclkmsk, align 4
  br label %79

58:                                               ; preds = %1
  %59 = load i32, i32* @MSKSHSP, align 4
  %60 = load i32, i32* @cmuclkmsk, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @cmuclkmsk, align 4
  br label %79

62:                                               ; preds = %1
  %63 = load i32, i32* @MSKPPCIU, align 4
  %64 = load i32, i32* @cmuclkmsk, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* @cmuclkmsk, align 4
  br label %79

66:                                               ; preds = %1
  %67 = load i32, i32* @MSKCEU, align 4
  %68 = load i32, i32* @cmuclkmsk2, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @cmuclkmsk2, align 4
  br label %79

70:                                               ; preds = %1
  %71 = load i32, i32* @MSKMAC0, align 4
  %72 = load i32, i32* @cmuclkmsk2, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @cmuclkmsk2, align 4
  br label %79

74:                                               ; preds = %1
  %75 = load i32, i32* @MSKMAC1, align 4
  %76 = load i32, i32* @cmuclkmsk2, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* @cmuclkmsk2, align 4
  br label %79

78:                                               ; preds = %1
  br label %79

79:                                               ; preds = %78, %74, %70, %66, %62, %58, %54, %48, %47, %23, %19, %15, %9, %5
  %80 = load i32, i32* %2, align 4
  %81 = icmp eq i32 %80, 139
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %2, align 4
  %84 = icmp eq i32 %83, 136
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %86, 135
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %82, %79
  %89 = load i32, i32* @CMUCLKMSK2, align 4
  %90 = load i32, i32* @cmuclkmsk2, align 4
  %91 = call i32 @cmu_write(i32 %89, i32 %90)
  br label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @CMUCLKMSK, align 4
  %94 = load i32, i32* @cmuclkmsk, align 4
  %95 = call i32 @cmu_write(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  %97 = call i32 @spin_unlock_irq(i32* @cmu_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @cmu_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
