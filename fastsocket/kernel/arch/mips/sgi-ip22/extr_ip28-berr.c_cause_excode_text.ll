; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip28-berr.c_cause_excode_text.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip28-berr.c_cause_excode_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cause_excode_text.txt = internal global [32 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TLB modification\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TLB (load or instruction fetch)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"TLB (store)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Address error (load or instruction fetch)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Address error (store)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Bus error (instruction fetch)\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Bus error (data: load or store)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Syscall\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Breakpoint\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Reserved instruction\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Coprocessor unusable\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Arithmetic Overflow\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Trap\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Floating-Point\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"17\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Watch Hi/Lo\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"24\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"26\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"27\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"28\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"29\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"31\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @cause_excode_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cause_excode_text(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 124
  %5 = ashr i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32 x i8*], [32 x i8*]* @cause_excode_text.txt, i64 0, i64 %6
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
