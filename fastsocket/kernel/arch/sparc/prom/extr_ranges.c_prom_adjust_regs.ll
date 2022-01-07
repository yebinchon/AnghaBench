; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_ranges.c_prom_adjust_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_ranges.c_prom_adjust_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_prom_registers = type { i64, i32 }
%struct.linux_prom_ranges = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [61 x i8] c"adjust_regs: Could not find range with matching bus type...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_prom_registers*, i32, %struct.linux_prom_ranges*, i32)* @prom_adjust_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prom_adjust_regs(%struct.linux_prom_registers* %0, i32 %1, %struct.linux_prom_ranges* %2, i32 %3) #0 {
  %5 = alloca %struct.linux_prom_registers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.linux_prom_ranges*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.linux_prom_registers* %0, %struct.linux_prom_registers** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.linux_prom_ranges* %2, %struct.linux_prom_ranges** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %87, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %90

15:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %21, i64 %23
  %25 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %27, i64 %29
  %31 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %39

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %16

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @prom_printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %46, i64 %48
  %50 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %52, i64 %54
  %56 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %55, i32 0, i32 0
  store i64 %51, i64* %56, align 8
  %57 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %57, i64 %59
  %61 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %63, i64 %65
  %67 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %62
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %72, i64 %74
  %76 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %78, i64 %80
  %82 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %77
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  br label %87

87:                                               ; preds = %45
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %11

90:                                               ; preds = %11
  ret void
}

declare dso_local i32 @prom_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
