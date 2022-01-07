; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_log_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_log_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oprofile_cpu_buffer = type { i32, i32, i32 }

@ESCAPE_CODE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oprofile_cpu_buffer*, i64, i64, i32, i64)* @log_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_sample(%struct.oprofile_cpu_buffer* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.oprofile_cpu_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.oprofile_cpu_buffer* %0, %struct.oprofile_cpu_buffer** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @ESCAPE_CODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %45

24:                                               ; preds = %5
  %25 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @op_add_code(%struct.oprofile_cpu_buffer* %25, i64 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @op_add_sample(%struct.oprofile_cpu_buffer* %33, i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %45

40:                                               ; preds = %38, %31
  %41 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %39, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @op_add_code(%struct.oprofile_cpu_buffer*, i64, i32, i32) #1

declare dso_local i64 @op_add_sample(%struct.oprofile_cpu_buffer*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
