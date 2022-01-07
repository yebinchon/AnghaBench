; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_check_single_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_check_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kgdbts_gdb_regs = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4
@kgdbts_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Singlestep stopped at IP: %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"kgdbts: SingleStep failed at %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_single_step(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @lookup_addr(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i64, i64* @kgdbts_gdb_regs, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* @NUMREGBYTES, align 4
  %14 = call i32 @kgdb_hex2mem(i8* %10, i8* %12, i32 %13)
  %15 = load i64, i64* @kgdbts_gdb_regs, align 8
  %16 = call i32 @gdb_regs_to_pt_regs(i64 %15, i32* @kgdbts_regs)
  %17 = call i64 @instruction_pointer(i32* @kgdbts_regs)
  %18 = call i32 @v2printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i64 @instruction_pointer(i32* @kgdbts_regs)
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i64 @instruction_pointer(i32* @kgdbts_regs)
  %24 = call i32 @eprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @lookup_addr(i8*) #1

declare dso_local i32 @kgdb_hex2mem(i8*, i8*, i32) #1

declare dso_local i32 @gdb_regs_to_pt_regs(i64, i32*) #1

declare dso_local i32 @v2printk(i8*, i64) #1

declare dso_local i64 @instruction_pointer(i32*) #1

declare dso_local i32 @eprintk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
