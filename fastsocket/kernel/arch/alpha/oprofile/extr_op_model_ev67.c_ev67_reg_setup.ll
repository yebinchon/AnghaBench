; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/oprofile/extr_op_model_ev67.c_ev67_reg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/oprofile/extr_op_model_ev67.c_ev67_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i64, i64, i64, i64 }
%struct.op_counter_config = type { i32, i64, i64 }
%struct.op_system_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_register_config*, %struct.op_counter_config*, %struct.op_system_config*)* @ev67_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev67_reg_setup(%struct.op_register_config* %0, %struct.op_counter_config* %1, %struct.op_system_config* %2) #0 {
  %4 = alloca %struct.op_register_config*, align 8
  %5 = alloca %struct.op_counter_config*, align 8
  %6 = alloca %struct.op_system_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.op_register_config* %0, %struct.op_register_config** %4, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %5, align 8
  store %struct.op_system_config* %2, %struct.op_system_config** %6, align 8
  store i64 16, i64* %7, align 8
  %12 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %13 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %12, i64 1
  %14 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %19 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %18, i64 1
  %20 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 3
  %23 = shl i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %7, align 8
  br label %37

27:                                               ; preds = %3
  %28 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %29 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %28, i64 0
  %30 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = or i64 %34, 4
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %40 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %42 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %89, %37
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %44, 2
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %47, i64 %48
  %50 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %52, i64 %53
  %55 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %89

59:                                               ; preds = %46
  %60 = load i64, i64* %11, align 8
  %61 = icmp ugt i64 %60, 1048576
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 1048576, i64* %11, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %65, i64 %66
  %68 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %67, i32 0, i32 1
  store i64 %64, i64* %68, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 1048576, %69
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 6, i32 28
  %75 = zext i32 %74 to i64
  %76 = shl i64 %70, %75
  %77 = load i64, i64* %8, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 1048576
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %9, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %81, %63
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %43

92:                                               ; preds = %43
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %95 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %98 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
