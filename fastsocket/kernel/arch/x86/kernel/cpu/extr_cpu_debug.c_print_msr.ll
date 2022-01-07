; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.cpu_private* }
%struct.cpu_private = type { i32, i32, i64 }

@cpu_reg_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32)* @print_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_msr(%struct.seq_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpu_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = icmp ne %struct.seq_file* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %17, i32 0, i32 0
  %19 = load %struct.cpu_private*, %struct.cpu_private** %18, align 8
  store %struct.cpu_private* %19, %struct.cpu_private** %10, align 8
  %20 = load %struct.cpu_private*, %struct.cpu_private** %10, align 8
  %21 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load %struct.cpu_private*, %struct.cpu_private** %10, align 8
  %26 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cpu_private*, %struct.cpu_private** %10, align 8
  %29 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @rdmsr_safe_on_cpu(i32 %27, i32 %30, i32* %11, i32* %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load %struct.cpu_private*, %struct.cpu_private** %10, align 8
  %36 = getelementptr inbounds %struct.cpu_private, %struct.cpu_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @print_cpu_data(%struct.seq_file* %34, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %24
  br label %81

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42, %3
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @cpu_reg_range, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @get_cpu_range(i32 %50, i32* %8, i32* %9, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %78

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %74, %56
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @rdmsr_safe_on_cpu(i32 %63, i32 %64, i32* %11, i32* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %74

68:                                               ; preds = %62
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @print_cpu_data(%struct.seq_file* %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %58

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %44

81:                                               ; preds = %41, %44
  ret void
}

declare dso_local i64 @rdmsr_safe_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @print_cpu_data(%struct.seq_file*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @get_cpu_range(i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
