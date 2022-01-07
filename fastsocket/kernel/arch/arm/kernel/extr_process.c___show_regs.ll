; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c___show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c___show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"CPU: %d    %s  (%s %.*s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PC is at %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"LR is at %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\0Asp : %08lx  ip : %08lx  fp : %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"r10: %08lx  r9 : %08lx  r8 : %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\0A\00", align 1
@PSR_N_BIT = common dso_local global i64 0, align 8
@PSR_Z_BIT = common dso_local global i64 0, align 8
@PSR_C_BIT = common dso_local global i64 0, align 8
@PSR_V_BIT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [60 x i8] c"Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@processor_modes = common dso_local global i32* null, align 8
@isa_modes = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [64 x i8], align 16
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  %6 = call i32 (...) @print_tainted()
  %7 = call %struct.TYPE_2__* (...) @init_utsname()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* (...) @init_utsname()
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @strcspn(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_2__* (...) @init_utsname()
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %9, i32 %14, i32 %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = call i32 @instruction_pointer(%struct.pt_regs* %19)
  %21 = call i32 @print_symbol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @print_symbol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 16
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %31, i64 %34, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %70, i32 %73, i32 %76, i32 %79)
  %81 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @PSR_N_BIT, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 78, i32 110
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8 %90, i8* %91, align 16
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @PSR_Z_BIT, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 90, i32 122
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 1
  store i8 %98, i8* %99, align 1
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @PSR_C_BIT, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 67, i32 99
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 2
  store i8 %106, i8* %107, align 2
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* @PSR_V_BIT, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 86, i32 118
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 3
  store i8 %114, i8* %115, align 1
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 4
  store i8 0, i8* %116, align 4
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %118 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %119 = call i64 @interrupts_enabled(%struct.pt_regs* %118)
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %123 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %124 = call i64 @fast_interrupts_enabled(%struct.pt_regs* %123)
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %128 = load i32*, i32** @processor_modes, align 8
  %129 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %130 = call i64 @processor_mode(%struct.pt_regs* %129)
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** @isa_modes, align 8
  %134 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %135 = call i64 @isa_mode(%struct.pt_regs* %134)
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i64 (...) @get_fs()
  %139 = call i64 (...) @get_ds()
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8* %117, i8* %122, i8* %127, i32 %132, i32 %137, i8* %142)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

declare dso_local i64 @strcspn(i32, i8*) #1

declare dso_local i32 @print_symbol(i8*, i32) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i64 @interrupts_enabled(%struct.pt_regs*) #1

declare dso_local i64 @fast_interrupts_enabled(%struct.pt_regs*) #1

declare dso_local i64 @processor_mode(%struct.pt_regs*) #1

declare dso_local i64 @isa_mode(%struct.pt_regs*) #1

declare dso_local i64 @get_fs(...) #1

declare dso_local i64 @get_ds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
