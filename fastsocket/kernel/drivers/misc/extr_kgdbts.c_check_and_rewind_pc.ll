; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_check_and_rewind_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_check_and_rewind_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@kgdbts_gdb_regs = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4
@kgdbts_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"Stopped at IP: %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"kgdbts: BP mismatch %lx expected %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_and_rewind_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_and_rewind_pc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @lookup_addr(i8* %8)
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i64, i64* @kgdbts_gdb_regs, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* @NUMREGBYTES, align 4
  %15 = call i32 @kgdb_hex2mem(i8* %11, i8* %13, i32 %14)
  %16 = load i64, i64* @kgdbts_gdb_regs, align 8
  %17 = call i32 @gdb_regs_to_pt_regs(i64 %16, %struct.TYPE_4__* @kgdbts_regs)
  %18 = call i32 @instruction_pointer(%struct.TYPE_4__* @kgdbts_regs)
  %19 = call i32 @v2printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = call i32 @instruction_pointer(%struct.TYPE_4__* @kgdbts_regs)
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = call i32 @instruction_pointer(%struct.TYPE_4__* @kgdbts_regs)
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @eprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %33, i64 %34)
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @lookup_addr(i8*) #1

declare dso_local i32 @kgdb_hex2mem(i8*, i8*, i32) #1

declare dso_local i32 @gdb_regs_to_pt_regs(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @v2printk(i8*, i32) #1

declare dso_local i32 @instruction_pointer(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @eprintk(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
