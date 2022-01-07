; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_32.c_start_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_32.c_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i64, i64, i32, i8*, i8*, i8*, i64 }

@USER_DS = common dso_local global i32 0, align 4
@__USER_DS = common dso_local global i8* null, align 8
@__USER_CS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_thread(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = call i32 @set_user_gs(%struct.pt_regs* %8, i32 0)
  %10 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @USER_DS, align 4
  %13 = call i32 @set_fs(i32 %12)
  %14 = load i8*, i8** @__USER_DS, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @__USER_DS, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @__USER_DS, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @__USER_CS, align 4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = call i32 (...) @get_cpu()
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @load_user_cs_desc(i32 %33, i32 %36)
  %38 = call i32 (...) @put_cpu()
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %40 = call i32 @free_thread_xstate(%struct.TYPE_3__* %39)
  ret void
}

declare dso_local i32 @set_user_gs(%struct.pt_regs*, i32) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @load_user_cs_desc(i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @free_thread_xstate(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
