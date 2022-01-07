; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_support.c_ia32_load_segment_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_support.c_ia32_load_segment_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia32_load_segment_descriptors(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %4)
  store %struct.pt_regs* %5, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 16
  %10 = call i8* @load_desc(i32 %9)
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 0
  %17 = call i8* @load_desc(i32 %16)
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 32
  %24 = call i8* @load_desc(i32 %23)
  %25 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 48
  %31 = call i8* @load_desc(i32 %30)
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 0
  %38 = call i8* @load_desc(i32 %37)
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 16
  %45 = call i8* @load_desc(i32 %44)
  %46 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i8* @load_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
