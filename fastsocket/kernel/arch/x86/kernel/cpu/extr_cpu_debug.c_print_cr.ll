; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_cr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c" cr0\09: %016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" cr2\09: %016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" cr3\09: %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" cr4\09: %016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.seq_file*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.seq_file*
  store %struct.seq_file* %5, %struct.seq_file** %3, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = call i32 (...) @read_cr0()
  %8 = call i32 @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 (...) @read_cr2()
  %11 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 (...) @read_cr3()
  %14 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = call i32 (...) @read_cr4_safe()
  %17 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @read_cr0(...) #1

declare dso_local i32 @read_cr2(...) #1

declare dso_local i32 @read_cr3(...) #1

declare dso_local i32 @read_cr4_safe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
