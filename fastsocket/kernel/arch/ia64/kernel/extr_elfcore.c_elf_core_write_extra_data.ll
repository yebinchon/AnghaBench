; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_elfcore.c_elf_core_write_extra_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_elfcore.c_elf_core_write_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.file = type { i32 }
%struct.elf_phdr = type { i64, i32, i64 }

@GATE_ADDR = common dso_local global i64 0, align 8
@GATE_EHDR = common dso_local global %struct.TYPE_2__* null, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_data(%struct.file* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_phdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @GATE_ADDR, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GATE_EHDR, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = inttoptr i64 %16 to %struct.elf_phdr*
  store %struct.elf_phdr* %17, %struct.elf_phdr** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %65, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GATE_EHDR, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load %struct.elf_phdr*, %struct.elf_phdr** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %25, i64 %27
  %29 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PT_LOAD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %24
  %34 = load %struct.elf_phdr*, %struct.elf_phdr** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %34, i64 %36
  %38 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %10, align 8
  %41 = load %struct.elf_phdr*, %struct.elf_phdr** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %41, i64 %43
  %45 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @PAGE_ALIGN(i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %33
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @dump_write(%struct.file* %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %33
  store i32 0, i32* %4, align 4
  br label %69

63:                                               ; preds = %56
  br label %68

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %18

68:                                               ; preds = %63, %18
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dump_write(%struct.file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
