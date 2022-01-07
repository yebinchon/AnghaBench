; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_longhaul.c_do_powersaver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_longhaul.c_do_powersaver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.msr_longhaul = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64 }

@MSR_VIA_LONGHAUL = common dso_local global i32 0, align 4
@revid_errata = common dso_local global i32 0, align 4
@can_scale_voltage = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @do_powersaver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_powersaver(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.msr_longhaul, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %10 = bitcast %union.msr_longhaul* %7 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @rdmsrl(i32 %9, i32 %11)
  %13 = load i32, i32* @revid_errata, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  br label %24

21:                                               ; preds = %3
  %22 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 15
  %27 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 16
  %31 = lshr i32 %30, 4
  %32 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* @can_scale_voltage, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 31
  %40 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %24
  %43 = call i32 (...) @safe_halt()
  %44 = load i64, i64* @can_scale_voltage, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %53 = bitcast %union.msr_longhaul* %7 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wrmsrl(i32 %52, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %60 = call i32 (...) @halt()
  br label %67

61:                                               ; preds = %49
  %62 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @inb(i32 %63)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0, i32 0), align 4
  %66 = call i32 @inl(i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %71 = bitcast %union.msr_longhaul* %7 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wrmsrl(i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %67, %46, %42
  %75 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %78 = bitcast %union.msr_longhaul* %7 to i32*
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wrmsrl(i32 %77, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %85 = call i32 (...) @halt()
  br label %92

86:                                               ; preds = %74
  %87 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @inb(i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0, i32 0), align 4
  %91 = call i32 @inl(i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %86, %83
  %93 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %96 = bitcast %union.msr_longhaul* %7 to i32*
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @wrmsrl(i32 %95, i32 %97)
  %99 = load i64, i64* @can_scale_voltage, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %92
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %129, label %104

104:                                              ; preds = %101
  %105 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %108 = bitcast %union.msr_longhaul* %7 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @wrmsrl(i32 %107, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %115 = call i32 (...) @halt()
  br label %122

116:                                              ; preds = %104
  %117 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @inb(i32 %118)
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0, i32 0), align 4
  %121 = call i32 @inl(i32 %120)
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %113
  %123 = bitcast %union.msr_longhaul* %7 to %struct.TYPE_5__*
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* @MSR_VIA_LONGHAUL, align 4
  %126 = bitcast %union.msr_longhaul* %7 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @wrmsrl(i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %122, %101, %92
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @safe_halt(...) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

declare dso_local i32 @halt(...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
