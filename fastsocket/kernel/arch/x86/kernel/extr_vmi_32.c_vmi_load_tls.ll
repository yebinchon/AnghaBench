; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_load_tls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_load_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_struct = type { i32* }
%struct.desc_struct = type { i32 }

@GDT_ENTRY_TLS_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_struct*, i32)* @vmi_load_tls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmi_load_tls(%struct.thread_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.thread_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.desc_struct*, align 8
  store %struct.thread_struct* %0, %struct.thread_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.desc_struct* @get_cpu_gdt_table(i32 %6)
  store %struct.desc_struct* %7, %struct.desc_struct** %5, align 8
  %8 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %9 = load i64, i64* @GDT_ENTRY_TLS_MIN, align 8
  %10 = add nsw i64 %9, 0
  %11 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %12 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @vmi_maybe_load_tls(%struct.desc_struct* %8, i64 %10, i32* %14)
  %16 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %17 = load i64, i64* @GDT_ENTRY_TLS_MIN, align 8
  %18 = add nsw i64 %17, 1
  %19 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %20 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = call i32 @vmi_maybe_load_tls(%struct.desc_struct* %16, i64 %18, i32* %22)
  %24 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %25 = load i64, i64* @GDT_ENTRY_TLS_MIN, align 8
  %26 = add nsw i64 %25, 2
  %27 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %28 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = call i32 @vmi_maybe_load_tls(%struct.desc_struct* %24, i64 %26, i32* %30)
  ret void
}

declare dso_local %struct.desc_struct* @get_cpu_gdt_table(i32) #1

declare dso_local i32 @vmi_maybe_load_tls(%struct.desc_struct*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
