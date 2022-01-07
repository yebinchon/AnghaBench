; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_elfcore.c_elf_core_write_extra_phdrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_elfcore.c_elf_core_write_extra_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.elfhdr = type { i32, i64 }
%struct.elf_phdr = type { i64, i64, i64, i64 }

@vsyscall_ehdr = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_phdrs(%struct.file* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elfhdr*, align 8
  %11 = alloca %struct.elf_phdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.elf_phdr, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* @vsyscall_ehdr, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %4
  %18 = load i64, i64* @vsyscall_ehdr, align 8
  %19 = inttoptr i64 %18 to %struct.elfhdr*
  store %struct.elfhdr* %19, %struct.elfhdr** %10, align 8
  %20 = load i64, i64* @vsyscall_ehdr, align 8
  %21 = load %struct.elfhdr*, %struct.elfhdr** %10, align 8
  %22 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = inttoptr i64 %24 to %struct.elf_phdr*
  store %struct.elf_phdr* %25, %struct.elf_phdr** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %70, %17
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.elfhdr*, %struct.elfhdr** %10, align 8
  %29 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %26
  %33 = load %struct.elf_phdr*, %struct.elf_phdr** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %33, i64 %35
  %37 = bitcast %struct.elf_phdr* %14 to i8*
  %38 = bitcast %struct.elf_phdr* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 32, i1 false)
  %39 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %14, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PT_LOAD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %14, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  store i64 %44, i64* %13, align 8
  %46 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %14, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %7, align 8
  br label %55

50:                                               ; preds = %32
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %14, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %14, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 32
  store i64 %59, i64* %57, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %55
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = call i32 @dump_write(%struct.file* %65, %struct.elf_phdr* %14, i32 32)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %55
  store i32 0, i32* %5, align 4
  br label %75

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %26

73:                                               ; preds = %26
  br label %74

74:                                               ; preds = %73, %4
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dump_write(%struct.file*, %struct.elf_phdr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
