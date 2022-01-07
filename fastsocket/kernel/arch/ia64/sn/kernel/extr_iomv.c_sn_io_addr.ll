; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_iomv.c_sn_io_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_iomv.c_sn_io_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sn_io_addr(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i32 (...) @IS_RUNNING_ON_SIMULATOR()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @IS_LEGACY_VGA_IOPORT(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call i8* @__ia64_mk_io_addr(i64 %12)
  store i8* %13, i8** %2, align 8
  br label %56

14:                                               ; preds = %7
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %15, 65536
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %56

18:                                               ; preds = %14
  %19 = call i64 (...) @SN_ACPI_BASE_SUPPORT()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @__ia64_mk_io_addr(i64 %22)
  store i8* %23, i8** %2, align 8
  br label %56

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %27 = or i64 %25, %26
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %2, align 8
  br label %56

29:                                               ; preds = %1
  %30 = call i64 (...) @is_shub2()
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i64 -4611686007488643072, i64 -4611685435184250880
  %34 = load i64, i64* %3, align 8
  %35 = lshr i64 %34, 2
  %36 = shl i64 %35, 12
  %37 = or i64 %33, %36
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp uge i64 %38, 496
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i64, i64* %3, align 8
  %42 = icmp ule i64 %41, 503
  br i1 %42, label %49, label %43

43:                                               ; preds = %40, %29
  %44 = load i64, i64* %3, align 8
  %45 = icmp eq i64 %44, 1014
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %47, 1015
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %43, %40
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %4, align 8
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %2, align 8
  br label %56

56:                                               ; preds = %53, %24, %21, %17, %11
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

declare dso_local i32 @IS_RUNNING_ON_SIMULATOR(...) #1

declare dso_local i64 @IS_LEGACY_VGA_IOPORT(i64) #1

declare dso_local i8* @__ia64_mk_io_addr(i64) #1

declare dso_local i64 @SN_ACPI_BASE_SUPPORT(...) #1

declare dso_local i64 @is_shub2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
