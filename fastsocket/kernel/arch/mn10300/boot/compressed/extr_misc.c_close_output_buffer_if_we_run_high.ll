; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_close_output_buffer_if_we_run_high.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_close_output_buffer_if_we_run_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moveparams = type { i64, i64 }

@bytes_out = common dso_local global i64 0, align 8
@LOW_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_output_buffer_if_we_run_high(%struct.moveparams* %0) #0 {
  %2 = alloca %struct.moveparams*, align 8
  store %struct.moveparams* %0, %struct.moveparams** %2, align 8
  %3 = load i64, i64* @bytes_out, align 8
  %4 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %5 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %4, i32 0, i32 1
  store i64 %3, i64* %5, align 8
  %6 = load i64, i64* @bytes_out, align 8
  %7 = load i64, i64* @LOW_BUFFER_SIZE, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i64, i64* @LOW_BUFFER_SIZE, align 8
  %11 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %12 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %14 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i64, i64* @bytes_out, align 8
  %19 = load i64, i64* @LOW_BUFFER_SIZE, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %22 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %9
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.moveparams*, %struct.moveparams** %2, align 8
  %26 = getelementptr inbounds %struct.moveparams, %struct.moveparams* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
