; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_apm.c_query_apm_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_apm.c_query_apm_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.biosregs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_apm_bios() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = alloca %struct.biosregs, align 4
  %4 = call i32 @initregs(%struct.biosregs* %2)
  %5 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  store i32 83, i32* %5, align 4
  %6 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* %3)
  %7 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @X86_EFLAGS_CF, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %69

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 20557
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %69

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %69

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  store i32 4, i32* %25, align 4
  %26 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* null)
  %27 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  store i32 3, i32* %27, align 4
  %28 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* %3)
  %29 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 8), align 4
  %31 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 7), align 4
  %33 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  %35 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 6), align 4
  %37 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 5), align 4
  %39 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 4), align 4
  %41 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 3), align 4
  %43 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @X86_EFLAGS_CF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  store i32 -1, i32* %1, align 4
  br label %69

49:                                               ; preds = %24
  %50 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  store i32 0, i32* %50, align 4
  %51 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* %3)
  %52 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @X86_EFLAGS_CF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 20557
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %49
  %62 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  store i32 4, i32* %62, align 4
  %63 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* null)
  store i32 -1, i32* %1, align 4
  br label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 2), align 4
  %67 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %64, %61, %48, %23, %17, %12
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
