; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_......fsbinfmt_elf.c_elf_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_......fsbinfmt_elf.c_elf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.elf_phdr = type { i64, i64, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, %struct.elf_phdr*, i32, i32, i64)* @elf_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_map(%struct.file* %0, i64 %1, %struct.elf_phdr* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_phdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.elf_phdr* %2, %struct.elf_phdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %18 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %21 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ELF_PAGEOFFSET(i32 %22)
  %24 = add i64 %19, %23
  store i64 %24, i64* %15, align 8
  %25 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %26 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %29 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ELF_PAGEOFFSET(i32 %30)
  %32 = sub i64 %27, %31
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @ELF_PAGESTART(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call i64 @ELF_PAGEALIGN(i64 %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %6
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %7, align 8
  br label %89

41:                                               ; preds = %6
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @down_write(i32* %45)
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %41
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @ELF_PAGEALIGN(i64 %50)
  store i64 %51, i64* %13, align 8
  %52 = load %struct.file*, %struct.file** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i64, i64* %16, align 8
  %58 = call i64 @do_mmap(%struct.file* %52, i64 %53, i64 %54, i32 %55, i32 %56, i64 %57)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @BAD_ADDR(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %49
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %15, align 8
  %71 = sub i64 %69, %70
  %72 = call i32 @do_munmap(%struct.TYPE_3__* %65, i64 %68, i64 %71)
  br label %73

73:                                               ; preds = %62, %49
  br label %82

74:                                               ; preds = %41
  %75 = load %struct.file*, %struct.file** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i64, i64* %16, align 8
  %81 = call i64 @do_mmap(%struct.file* %75, i64 %76, i64 %77, i32 %78, i32 %79, i64 %80)
  store i64 %81, i64* %14, align 8
  br label %82

82:                                               ; preds = %74, %73
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @up_write(i32* %86)
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %82, %39
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

declare dso_local i64 @ELF_PAGEOFFSET(i32) #1

declare dso_local i64 @ELF_PAGESTART(i64) #1

declare dso_local i64 @ELF_PAGEALIGN(i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_mmap(%struct.file*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @BAD_ADDR(i64) #1

declare dso_local i32 @do_munmap(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
