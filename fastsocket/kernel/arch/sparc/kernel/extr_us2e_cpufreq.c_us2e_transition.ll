; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us2e_cpufreq.c_us2e_transition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us2e_cpufreq.c_us2e_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESTAR_MODE_DIV_MASK = common dso_local global i64 0, align 8
@HBIRD_ESTAR_MODE_ADDR = common dso_local global i32 0, align 4
@ESTAR_MODE_DIV_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @us2e_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @us2e_transition(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i64, i64* @ESTAR_MODE_DIV_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %20, label %34

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = call i32 @self_refresh_ctl(i32 0)
  %25 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %26, %27
  %29 = call i32 @write_hbreg(i32 %25, i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @frob_mem_refresh(i32 0, i64 %30, i64 %31, i64 %32)
  br label %115

34:                                               ; preds = %20, %5
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @frob_mem_refresh(i32 1, i64 %41, i64 %42, i64 %43)
  %45 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %46, %47
  %49 = call i32 @write_hbreg(i32 %45, i64 %48)
  %50 = call i32 @self_refresh_ctl(i32 1)
  br label %114

51:                                               ; preds = %37, %34
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %55, 2
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @ESTAR_MODE_DIV_2, align 8
  %60 = load i64, i64* %8, align 8
  call void @us2e_transition(i64 %58, i64 %59, i64 %60, i64 1, i64 2)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %10, align 8
  call void @us2e_transition(i64 %61, i64 %62, i64 %63, i64 2, i64 %64)
  br label %113

65:                                               ; preds = %54, %51
  %66 = load i64, i64* %9, align 8
  %67 = icmp ugt i64 %66, 2
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @ESTAR_MODE_DIV_2, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  call void @us2e_transition(i64 %72, i64 %73, i64 %74, i64 %75, i64 2)
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %10, align 8
  call void @us2e_transition(i64 %76, i64 %77, i64 %78, i64 2, i64 %79)
  br label %112

80:                                               ; preds = %68, %65
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @frob_mem_refresh(i32 0, i64 %85, i64 %86, i64 %87)
  %89 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %90, %91
  %93 = call i32 @write_hbreg(i32 %89, i64 %92)
  br label %111

94:                                               ; preds = %80
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = or i64 %100, %101
  %103 = call i32 @write_hbreg(i32 %99, i64 %102)
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @frob_mem_refresh(i32 1, i64 %104, i64 %105, i64 %106)
  br label %110

108:                                              ; preds = %94
  %109 = call i32 (...) @BUG()
  br label %110

110:                                              ; preds = %108, %98
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111, %71
  br label %113

113:                                              ; preds = %112, %57
  br label %114

114:                                              ; preds = %113, %40
  br label %115

115:                                              ; preds = %114, %23
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @local_irq_restore(i64 %116)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @self_refresh_ctl(i32) #1

declare dso_local i32 @write_hbreg(i32, i64) #1

declare dso_local i32 @frob_mem_refresh(i32, i64, i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
