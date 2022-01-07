; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-irq.c_ip32_unknown_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-irq.c_ip32_unknown_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unknown interrupt occurred!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cp0_status: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cp0_cause: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CRIME intr mask: %016lx\0A\00", align 1
@crime = common dso_local global %struct.TYPE_10__* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"CRIME intr status: %016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"CRIME hardware intr register: %016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"MACE ISA intr mask: %08lx\0A\00", align 1
@mace = common dso_local global %struct.TYPE_9__* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"MACE ISA intr status: %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MACE PCI control register: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Register dump:\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Please mail this report to linux-mips@linux-mips.org\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Spinning...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip32_unknown_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip32_unknown_interrupt() #0 {
  %1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @read_c0_status()
  %3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = call i32 (...) @read_c0_cause()
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @crime, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @crime, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @crime, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mace, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mace, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mace, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %33)
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %36 = call i32 (...) @get_irq_regs()
  %37 = call i32 @show_regs(i32 %36)
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %40

40:                                               ; preds = %0, %40
  br label %40
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @show_regs(i32) #1

declare dso_local i32 @get_irq_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
