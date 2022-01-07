; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/lib64/extr_dbg.c_print_single_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/lib64/extr_dbg.c_print_single_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOW_TO_READ_TLB_CONTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"[%c%2ld]  0x%08x  0x%08x  %03d   %02x    %02x   %4s    %s\0A\00", align 1
@TLB_STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_single_tlb(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @getConfigReg(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GET_VALID(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @HOW_TO_READ_TLB_CONTENT, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i8*, ...) @printk(i8* %24)
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %65

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  %34 = call i32 @getConfigReg(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @GET_SHARED(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @GET_ASID(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @GET_EPN(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @GET_CBEHAVIOR(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @GET_PAGE_SIZE(i32 %43)
  store i8* %44, i8** %13, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @GET_PROTECTION(i32 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @GET_PPN(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 32, i32 117
  %53 = load i64, i64* %3, align 8
  %54 = and i64 %53, 65535
  %55 = load i64, i64* @TLB_STEP, align 8
  %56 = udiv i64 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @getConfigReg(i64) #1

declare dso_local i32 @GET_VALID(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @GET_SHARED(i32) #1

declare dso_local i32 @GET_ASID(i32) #1

declare dso_local i32 @GET_EPN(i32) #1

declare dso_local i32 @GET_CBEHAVIOR(i32) #1

declare dso_local i8* @GET_PAGE_SIZE(i32) #1

declare dso_local i8* @GET_PROTECTION(i32) #1

declare dso_local i32 @GET_PPN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
