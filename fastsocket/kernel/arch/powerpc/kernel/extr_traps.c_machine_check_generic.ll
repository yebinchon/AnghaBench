; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_traps.c_machine_check_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_traps.c_machine_check_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Machine check in kernel mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Caused by (from SRR1=%lx): \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Machine check signal\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Transfer error ack signal\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Data parity error signal\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Address parity error signal\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"L1 Data Cache error\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"L1 Instruction Cache error\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"L2 data cache parity error\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Unknown values in msr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_check_generic(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = call i64 @get_mc_reason(%struct.pt_regs* %4)
  store i64 %5, i64* %3, align 8
  %6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* %3, align 8
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 1612644352
  switch i64 %10, label %25 [
    i64 524288, label %11
    i64 0, label %13
    i64 262144, label %13
    i64 1310720, label %13
    i64 131072, label %15
    i64 65536, label %17
    i64 536870912, label %19
    i64 1073741824, label %21
    i64 1048576, label %23
  ]

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %27

13:                                               ; preds = %1, %1, %1
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %27

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %27

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %27

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %27

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %27

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %27

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11
  ret i32 0
}

declare dso_local i64 @get_mc_reason(%struct.pt_regs*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
