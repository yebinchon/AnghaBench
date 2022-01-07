; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_match.c_x86_match_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_match.c_x86_match_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32 }
%struct.x86_cpu_id = type { i32, i32, i32, i32 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@X86_VENDOR_ANY = common dso_local global i32 0, align 4
@X86_FAMILY_ANY = common dso_local global i32 0, align 4
@X86_MODEL_ANY = common dso_local global i32 0, align 4
@X86_FEATURE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.x86_cpu_id* @x86_match_cpu(%struct.x86_cpu_id* %0) #0 {
  %2 = alloca %struct.x86_cpu_id*, align 8
  %3 = alloca %struct.x86_cpu_id*, align 8
  %4 = alloca %struct.x86_cpu_id*, align 8
  %5 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.x86_cpu_id* %0, %struct.x86_cpu_id** %3, align 8
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %5, align 8
  %6 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %3, align 8
  store %struct.x86_cpu_id* %6, %struct.x86_cpu_id** %4, align 8
  br label %7

7:                                                ; preds = %85, %1
  %8 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %9 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %12 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  %15 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %16 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %20 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %88

24:                                               ; preds = %7
  %25 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %26 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @X86_VENDOR_ANY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %35 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %85

39:                                               ; preds = %30, %24
  %40 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %41 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @X86_FAMILY_ANY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %47 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %50 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %85

54:                                               ; preds = %45, %39
  %55 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %56 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @X86_MODEL_ANY, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %62 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %65 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %85

69:                                               ; preds = %60, %54
  %70 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %71 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @X86_FEATURE_ANY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %77 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %78 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpu_has(%struct.cpuinfo_x86* %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %85

83:                                               ; preds = %75, %69
  %84 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  store %struct.x86_cpu_id* %84, %struct.x86_cpu_id** %2, align 8
  br label %89

85:                                               ; preds = %82, %68, %53, %38
  %86 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %87 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %86, i32 1
  store %struct.x86_cpu_id* %87, %struct.x86_cpu_id** %4, align 8
  br label %7

88:                                               ; preds = %7
  store %struct.x86_cpu_id* null, %struct.x86_cpu_id** %2, align 8
  br label %89

89:                                               ; preds = %88, %83
  %90 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %2, align 8
  ret %struct.x86_cpu_id* %90
}

declare dso_local i32 @cpu_has(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
