; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_tss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_tss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" RAX\09: %016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" RBX\09: %016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" RCX\09: %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" RDX\09: %016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" RSI\09: %016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" RDI\09: %016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" RBP\09: %016lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" ESP\09: %016lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" CS\09:             %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c" DS\09:             %04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" SS\09:             %04lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c" ES\09:             %04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c" FS\09:             %04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c" GS\09:             %04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c" EFLAGS\09: %016lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c" EIP\09: %016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_tss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tss(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @current, align 4
  %7 = call %struct.pt_regs* @task_pt_regs(i32 %6)
  store %struct.pt_regs* %7, %struct.pt_regs** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.seq_file*
  store %struct.seq_file* %9, %struct.seq_file** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = call i32 asm "movl %cs,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %50, i32* %5, align 4
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = call i32 asm "movl %ds,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %54, i32* %5, align 4
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 16
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 65535
  %63 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %62)
  %64 = call i32 asm "movl %es,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i32 %64, i32* %5, align 4
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %66)
  %68 = call i32 asm "movl %fs,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i32 %68, i32* %5, align 4
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %70)
  %72 = call i32 asm "movl %gs,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  store i32 %72, i32* %5, align 4
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 18
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %84)
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1170}
!3 = !{i32 1257}
!4 = !{i32 1411}
!5 = !{i32 1498}
!6 = !{i32 1585}
