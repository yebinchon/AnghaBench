; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_64.c_start_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_64.c_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32, i32, i32 }

@fs = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4
@old_rsp = common dso_local global i32 0, align 4
@__USER_CS = common dso_local global i32 0, align 4
@__USER_DS = common dso_local global i32 0, align 4
@USER_DS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_thread(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @fs, align 4
  %8 = call i32 @loadsegment(i32 %7, i32 0)
  %9 = load i32, i32* @es, align 4
  %10 = call i32 @loadsegment(i32 %9, i32 0)
  %11 = load i32, i32* @ds, align 4
  %12 = call i32 @loadsegment(i32 %11, i32 0)
  %13 = call i32 @load_gs_index(i32 0)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @old_rsp, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @percpu_write(i32 %20, i64 %21)
  %23 = load i32, i32* @__USER_CS, align 4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @__USER_DS, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 2
  store i32 512, i32* %30, align 8
  %31 = load i32, i32* @USER_DS, align 4
  %32 = call i32 @set_fs(i32 %31)
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @free_thread_xstate(i32 %33)
  ret void
}

declare dso_local i32 @loadsegment(i32, i32) #1

declare dso_local i32 @load_gs_index(i32) #1

declare dso_local i32 @percpu_write(i32, i64) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @free_thread_xstate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
