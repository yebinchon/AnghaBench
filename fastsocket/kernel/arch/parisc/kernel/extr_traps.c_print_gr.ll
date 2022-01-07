; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_traps.c_print_gr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_traps.c_print_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s     YZrvWESTHLNXBCVMcbcbcbcbOGFRQPDI\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%sPSW: %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@RFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pt_regs*)* @print_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_gr(i8* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printbinary(i8* %11, i32 %16, i32 32)
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %20 = call i32 (...) @print_tainted()
  %21 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %33, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @RFMT, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PRINTREGS(i8* %26, i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %5, align 4
  br label %22

36:                                               ; preds = %22
  ret void
}

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @printbinary(i8*, i32, i32) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @PRINTREGS(i8*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
