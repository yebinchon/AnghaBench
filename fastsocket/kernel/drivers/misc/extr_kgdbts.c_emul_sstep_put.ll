; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_emul_sstep_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_emul_sstep_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@arch_needs_sstep_emulation = common dso_local global i32 0, align 4
@sstep_state = common dso_local global i32 0, align 4
@kgdbts_gdb_regs = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4
@kgdbts_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stopped at IP: %lx\0A\00", align 1
@BREAK_INSTR_SIZE = common dso_local global i64 0, align 8
@sstep_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"$OK\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"kgdbts: failed sstep break set\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"$T0\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"kgdbts: failed continue sstep\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"kgdbts: failed sstep break unset\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"kgdbts: ERROR failed sstep put emulation\0A\00", align 1
@ts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @emul_sstep_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emul_sstep_put(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @arch_needs_sstep_emulation, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strncmp(i8* %10, i8* %11, i32 2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %58

15:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* @sstep_state, align 4
  switch i32 %17, label %53 [
    i32 1, label %18
    i32 2, label %32
    i32 3, label %39
    i32 4, label %46
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i64, i64* @kgdbts_gdb_regs, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @NUMREGBYTES, align 4
  %24 = call i32 @kgdb_hex2mem(i8* %20, i8* %22, i32 %23)
  %25 = load i64, i64* @kgdbts_gdb_regs, align 8
  %26 = call i32 @gdb_regs_to_pt_regs(i64 %25, i32* @kgdbts_regs)
  %27 = call i64 @instruction_pointer(i32* @kgdbts_regs)
  %28 = call i32 @v2printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = call i64 @instruction_pointer(i32* @kgdbts_regs)
  %30 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* @sstep_addr, align 8
  br label %55

32:                                               ; preds = %16
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %58

38:                                               ; preds = %32
  br label %55

39:                                               ; preds = %16
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @eprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %58

45:                                               ; preds = %39
  br label %55

46:                                               ; preds = %16
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @eprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %58

52:                                               ; preds = %46
  store i32 0, i32* @sstep_state, align 4
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %16
  %54 = call i32 @eprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %45, %38, %18
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52, %50, %43, %36, %15, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @kgdb_hex2mem(i8*, i8*, i32) #1

declare dso_local i32 @gdb_regs_to_pt_regs(i64, i32*) #1

declare dso_local i32 @v2printk(i8*, i64) #1

declare dso_local i64 @instruction_pointer(i32*) #1

declare dso_local i32 @eprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
