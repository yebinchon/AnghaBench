; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_efi.c_kern_mem_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_efi.c_kern_mem_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_memdesc = type { i32 }

@kern_memmap = common dso_local global i32 0, align 4
@EFI_MEMORY_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mem_attribute(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kern_memdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @kern_memmap, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @efi_mem_attribute(i64 %16, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @EFI_MEMORY_WB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @EFI_MEMORY_WB, align 4
  store i32 %24, i32* %3, align 4
  br label %61

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = call %struct.kern_memdesc* @kern_memory_descriptor(i64 %27)
  store %struct.kern_memdesc* %28, %struct.kern_memdesc** %7, align 8
  %29 = load %struct.kern_memdesc*, %struct.kern_memdesc** %7, align 8
  %30 = icmp ne %struct.kern_memdesc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %61

32:                                               ; preds = %26
  %33 = load %struct.kern_memdesc*, %struct.kern_memdesc** %7, align 8
  %34 = getelementptr inbounds %struct.kern_memdesc, %struct.kern_memdesc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %57, %32
  %37 = load %struct.kern_memdesc*, %struct.kern_memdesc** %7, align 8
  %38 = call i64 @kmd_end(%struct.kern_memdesc* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %36
  %45 = load i64, i64* %9, align 8
  %46 = call %struct.kern_memdesc* @kern_memory_descriptor(i64 %45)
  store %struct.kern_memdesc* %46, %struct.kern_memdesc** %7, align 8
  %47 = load %struct.kern_memdesc*, %struct.kern_memdesc** %7, align 8
  %48 = icmp ne %struct.kern_memdesc* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.kern_memdesc*, %struct.kern_memdesc** %7, align 8
  %51 = getelementptr inbounds %struct.kern_memdesc, %struct.kern_memdesc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %44
  store i32 0, i32* %3, align 4
  br label %61

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.kern_memdesc*, %struct.kern_memdesc** %7, align 8
  %59 = icmp ne %struct.kern_memdesc* %58, null
  br i1 %59, label %36, label %60

60:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55, %42, %31, %25, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @efi_mem_attribute(i64, i64) #1

declare dso_local %struct.kern_memdesc* @kern_memory_descriptor(i64) #1

declare dso_local i64 @kmd_end(%struct.kern_memdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
