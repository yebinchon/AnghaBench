; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_elfcore.c_elf_core_write_extra_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_elfcore.c_elf_core_write_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.elfhdr = type { i32, i64 }
%struct.elf_phdr = type { i64, i64, i64 }

@vsyscall_ehdr = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_data(%struct.file* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elfhdr*, align 8
  %9 = alloca %struct.elf_phdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* @vsyscall_ehdr, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %3
  %16 = load i64, i64* @vsyscall_ehdr, align 8
  %17 = inttoptr i64 %16 to %struct.elfhdr*
  store %struct.elfhdr* %17, %struct.elfhdr** %8, align 8
  %18 = load i64, i64* @vsyscall_ehdr, align 8
  %19 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %20 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = inttoptr i64 %22 to %struct.elf_phdr*
  store %struct.elf_phdr* %23, %struct.elf_phdr** %9, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %70, %15
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %27 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %31, i64 %33
  %35 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PT_LOAD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %30
  %40 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %40, i64 %42
  %44 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %47, i64 %49
  %51 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %39
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @dump_write(%struct.file* %62, i8* %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61, %39
  store i32 0, i32* %4, align 4
  br label %75

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %30
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %24

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %73, %3
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @dump_write(%struct.file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
