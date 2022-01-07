; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_install_ds_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_install_ds_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_context = type { i64, i32, i64 }

@current = common dso_local global i64 0, align 8
@MSR_IA32_DS_AREA = common dso_local global i32 0, align 4
@TIF_DS_AREA_MSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_context*)* @ds_install_ds_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_install_ds_area(%struct.ds_context* %0) #0 {
  %2 = alloca %struct.ds_context*, align 8
  %3 = alloca i64, align 8
  store %struct.ds_context* %0, %struct.ds_context** %2, align 8
  %4 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %5 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %8 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = call i32 (...) @get_cpu()
  %13 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %14 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @current, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @MSR_IA32_DS_AREA, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @wrmsrl(i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %24 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @TIF_DS_AREA_MSR, align 4
  %27 = call i32 @set_tsk_thread_flag(i64 %25, i32 %26)
  %28 = call i32 (...) @put_cpu()
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %31 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MSR_IA32_DS_AREA, align 4
  %34 = load i64, i64* %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %3, align 8
  %37 = trunc i64 %36 to i32
  %38 = ashr i32 %37, 32
  %39 = call i32 @wrmsr_on_cpu(i32 %32, i32 %33, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i32 @set_tsk_thread_flag(i64, i32) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @wrmsr_on_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
