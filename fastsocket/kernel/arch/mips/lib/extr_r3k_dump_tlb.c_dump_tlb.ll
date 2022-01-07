; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lib/extr_r3k_dump_tlb.c_dump_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lib/extr_r3k_dump_tlb.c_dump_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Index: %2d \00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"va=%08lx asid=%08lx  [pa=%06lx n=%d d=%d v=%d g=%d]\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_tlb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @read_c0_entryhi()
  %10 = and i32 %9, 4032
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %64, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 8
  %19 = call i32 @write_c0_index(i32 %18)
  call void asm sideeffect ".set\09noreorder\0A\09tlbr\0A\09nop\0A\09.set\09reorder", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %20 = call i32 (...) @read_c0_entryhi()
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = call i64 (...) @read_c0_entrylo0()
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, 4294959104
  %25 = icmp ne i64 %24, 2147483648
  br i1 %25, label %26, label %63

26:                                               ; preds = %16
  %27 = load i64, i64* %7, align 8
  %28 = and i64 %27, 4032
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %35, 4294959104
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %37, 4032
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @PAGE_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* %8, align 8
  %43 = and i64 %42, 2048
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = and i64 %47, 1024
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = and i64 %52, 512
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = and i64 %57, 256
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %38, i64 %41, i32 %46, i32 %51, i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %32, %26, %16
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %12

67:                                               ; preds = %12
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @write_c0_entryhi(i32 %69)
  ret void
}

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i64 @read_c0_entrylo0(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 568, i32 586, i32 600, i32 613}
