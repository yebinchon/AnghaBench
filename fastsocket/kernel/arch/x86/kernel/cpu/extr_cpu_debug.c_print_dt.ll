; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_dt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_ptr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IDT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GDT\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" LDT\09: %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" TR\09: %016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.desc_ptr, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 @store_idt(%struct.desc_ptr* %3)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @print_desc_ptr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %8)
  %10 = call i32 @store_gdt(%struct.desc_ptr* %3)
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @print_desc_ptr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @store_ldt(i64 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @seq_printf(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @store_tr(i64 %20)
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @seq_printf(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  ret void
}

declare dso_local i32 @store_idt(%struct.desc_ptr*) #1

declare dso_local i32 @print_desc_ptr(i8*, i8*, i32) #1

declare dso_local i32 @store_gdt(%struct.desc_ptr*) #1

declare dso_local i32 @store_ldt(i64) #1

declare dso_local i32 @seq_printf(i8*, i8*, i64) #1

declare dso_local i32 @store_tr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
