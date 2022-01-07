; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_op_add_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_op_add_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oprofile_cpu_buffer = type { i32, %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.op_entry = type { i32 }
%struct.op_sample = type { i64, i32 }

@TRACE_BEGIN = common dso_local global i64 0, align 8
@KERNEL_CTX_SWITCH = common dso_local global i64 0, align 8
@IS_KERNEL = common dso_local global i64 0, align 8
@USER_CTX_SWITCH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ESCAPE_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oprofile_cpu_buffer*, i64, i32, %struct.task_struct*)* @op_add_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_add_code(%struct.oprofile_cpu_buffer* %0, i64 %1, i32 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.oprofile_cpu_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.op_entry, align 4
  %11 = alloca %struct.op_sample*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.oprofile_cpu_buffer* %0, %struct.oprofile_cpu_buffer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* @TRACE_BEGIN, align 8
  %18 = load i64, i64* %12, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @KERNEL_CTX_SWITCH, align 8
  %36 = load i64, i64* %12, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i64, i64* @IS_KERNEL, align 8
  %42 = load i64, i64* %12, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %12, align 8
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %46, i32 0, i32 1
  %48 = load %struct.task_struct*, %struct.task_struct** %47, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %50 = icmp ne %struct.task_struct* %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %53 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %53, i32 0, i32 1
  store %struct.task_struct* %52, %struct.task_struct** %54, align 8
  %55 = load i64, i64* @USER_CTX_SWITCH, align 8
  %56 = load i64, i64* %12, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %92

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @USER_CTX_SWITCH, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %13, align 4
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %13, align 4
  %71 = call %struct.op_sample* @op_cpu_buffer_write_reserve(%struct.op_entry* %10, i32 %70)
  store %struct.op_sample* %71, %struct.op_sample** %11, align 8
  %72 = load %struct.op_sample*, %struct.op_sample** %11, align 8
  %73 = icmp ne %struct.op_sample* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %92

77:                                               ; preds = %69
  %78 = load i32, i32* @ESCAPE_CODE, align 4
  %79 = load %struct.op_sample*, %struct.op_sample** %11, align 8
  %80 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.op_sample*, %struct.op_sample** %11, align 8
  %83 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %88 = ptrtoint %struct.task_struct* %87 to i64
  %89 = call i32 @op_cpu_buffer_add_data(%struct.op_entry* %10, i64 %88)
  br label %90

90:                                               ; preds = %86, %77
  %91 = call i32 @op_cpu_buffer_write_commit(%struct.op_entry* %10)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %74, %61
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.op_sample* @op_cpu_buffer_write_reserve(%struct.op_entry*, i32) #1

declare dso_local i32 @op_cpu_buffer_add_data(%struct.op_entry*, i64) #1

declare dso_local i32 @op_cpu_buffer_write_commit(%struct.op_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
