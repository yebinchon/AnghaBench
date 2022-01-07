; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lib/extr_dump_tlb.c_dump_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lib/extr_dump_tlb.c_dump_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CKSEG0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Index: %2d pgmask=%s \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"va=%0*lx asid=%02lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09[pa=%0*llx c=%d d=%d v=%d g=%d] \00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"[pa=%0*llx c=%d d=%d v=%d g=%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_tlb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = call i64 (...) @read_c0_entryhi()
  store i64 %16, i64* %5, align 8
  %17 = call i32 (...) @read_c0_index()
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, 255
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %14, align 4
  br label %21

21:                                               ; preds = %108, %2
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %111

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @write_c0_index(i32 %26)
  %28 = call i32 (...) @BARRIER()
  %29 = call i32 (...) @tlb_read()
  %30 = call i32 (...) @BARRIER()
  %31 = call i32 (...) @read_c0_pagemask()
  store i32 %31, i32* %11, align 4
  %32 = call i64 (...) @read_c0_entryhi()
  store i64 %32, i64* %6, align 8
  %33 = call i64 (...) @read_c0_entrylo0()
  store i64 %33, i64* %8, align 8
  %34 = call i64 (...) @read_c0_entrylo1()
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, -131072
  %37 = load i64, i64* @CKSEG0, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %25
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, 255
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %39
  store i32 11, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @msk2str(i32 %46)
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47)
  %49 = load i64, i64* %8, align 8
  %50 = lshr i64 %49, 3
  %51 = and i64 %50, 7
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %9, align 8
  %54 = lshr i64 %53, 3
  %55 = and i64 %54, 7
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i64, i64* %6, align 8
  %59 = and i64 %58, -8192
  %60 = load i64, i64* %6, align 8
  %61 = and i64 %60, 255
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %59, i64 %61)
  %63 = load i32, i32* %15, align 4
  %64 = load i64, i64* %8, align 8
  %65 = shl i64 %64, 6
  %66 = load i64, i64* @PAGE_MASK, align 8
  %67 = and i64 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i64, i64* %8, align 8
  %70 = and i64 %69, 4
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = and i64 %74, 2
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load i64, i64* %8, align 8
  %80 = and i64 %79, 1
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %63, i64 %67, i32 %68, i32 %73, i32 %78, i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = load i64, i64* %9, align 8
  %87 = shl i64 %86, 6
  %88 = load i64, i64* @PAGE_MASK, align 8
  %89 = and i64 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = load i64, i64* %9, align 8
  %92 = and i64 %91, 4
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  %96 = load i64, i64* %9, align 8
  %97 = and i64 %96, 2
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load i64, i64* %9, align 8
  %102 = and i64 %101, 1
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %85, i64 %89, i32 %90, i32 %95, i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %44, %39, %25
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %21

111:                                              ; preds = %21
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @write_c0_entryhi(i64 %113)
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @write_c0_index(i32 %115)
  ret void
}

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @BARRIER(...) #1

declare dso_local i32 @tlb_read(...) #1

declare dso_local i32 @read_c0_pagemask(...) #1

declare dso_local i64 @read_c0_entrylo0(...) #1

declare dso_local i64 @read_c0_entrylo1(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @msk2str(i32) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
