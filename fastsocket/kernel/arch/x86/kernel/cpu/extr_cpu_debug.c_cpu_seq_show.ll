; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_cpu_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_cpu_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { %struct.cpu_private* }
%struct.cpu_private = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpu_base = common dso_local global %struct.TYPE_2__* null, align 8
@print_tss = common dso_local global i32 0, align 4
@print_cr = common dso_local global i32 0, align 4
@print_dt = common dso_local global i32 0, align 4
@CPU_INDEX_BIT = common dso_local global i32 0, align 4
@print_dr = common dso_local global i32 0, align 4
@print_apic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cpu_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpu_private*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.cpu_private*, %struct.cpu_private** %8, align 8
  store %struct.cpu_private* %9, %struct.cpu_private** %6, align 8
  %10 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %11 = icmp eq %struct.cpu_private* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %112

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_base, align 8
  %17 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %18 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %96 [
    i32 128, label %23
    i32 131, label %30
    i32 129, label %37
    i32 130, label %44
    i32 132, label %70
  ]

23:                                               ; preds = %15
  %24 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %25 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @print_tss, align 4
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @smp_call_function_single(i32 %26, i32 %27, %struct.seq_file* %28, i32 1)
  br label %109

30:                                               ; preds = %15
  %31 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %32 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @print_cr, align 4
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = call i32 @smp_call_function_single(i32 %33, i32 %34, %struct.seq_file* %35, i32 1)
  br label %109

37:                                               ; preds = %15
  %38 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %39 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @print_dt, align 4
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = call i32 @smp_call_function_single(i32 %40, i32 %41, %struct.seq_file* %42, i32 1)
  br label %109

44:                                               ; preds = %15
  %45 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %46 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CPU_INDEX_BIT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %52 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @print_dr, align 4
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = call i32 @smp_call_function_single(i32 %53, i32 %54, %struct.seq_file* %55, i32 1)
  br label %57

57:                                               ; preds = %50, %44
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %60 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_base, align 8
  %63 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %64 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @print_msr(%struct.seq_file* %58, i32 %61, i32 %68)
  br label %109

70:                                               ; preds = %15
  %71 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %72 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CPU_INDEX_BIT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %78 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @print_apic, align 4
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 @smp_call_function_single(i32 %79, i32 %80, %struct.seq_file* %81, i32 1)
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %86 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_base, align 8
  %89 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %90 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @print_msr(%struct.seq_file* %84, i32 %87, i32 %94)
  br label %109

96:                                               ; preds = %15
  %97 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %98 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %99 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_base, align 8
  %102 = load %struct.cpu_private*, %struct.cpu_private** %6, align 8
  %103 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @print_msr(%struct.seq_file* %97, i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %96, %83, %57, %37, %30, %23
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = call i32 @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %12
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.seq_file*, i32) #1

declare dso_local i32 @print_msr(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
