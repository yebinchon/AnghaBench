; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_process.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_process.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"IRP: %08lx SRP: %08lx DCCR: %08lx USP: %08lx MOF: %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"r12: %08lx r13: %08lx oR10: %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = call i64 (...) @rdusp()
  store i64 %4, i64* %3, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 18
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 17
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 16
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i64 %14, i32 %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  ret void
}

declare dso_local i64 @rdusp(...) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
