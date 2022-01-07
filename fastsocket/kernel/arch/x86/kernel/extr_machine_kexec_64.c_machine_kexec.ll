; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32, i32, i64, i32, i32 }

@PAGES_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KEXEC_CONTROL_CODE_MAX_SIZE = common dso_local global i32 0, align 4
@PA_CONTROL_PAGE = common dso_local global i64 0, align 8
@VA_CONTROL_PAGE = common dso_local global i64 0, align 8
@PA_TABLE_PAGE = common dso_local global i64 0, align 8
@KEXEC_TYPE_DEFAULT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PA_SWAP_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %7 = load i32, i32* @PAGES_NR, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 (...) @__ftrace_enabled_save()
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @local_irq_disable()
  %13 = load %struct.kimage*, %struct.kimage** %2, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.kimage*, %struct.kimage** %2, align 8
  %20 = getelementptr inbounds %struct.kimage, %struct.kimage* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @page_address(i32 %21)
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @KEXEC_CONTROL_CODE_MAX_SIZE, align 4
  %28 = call i32 @memcpy(i8* %26, i32 (i64, i64, i32, i32)* @relocate_kernel, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @virt_to_phys(i8* %29)
  %31 = load i64, i64* @PA_CONTROL_PAGE, align 8
  %32 = getelementptr inbounds i64, i64* %10, i64 %31
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* @VA_CONTROL_PAGE, align 8
  %36 = getelementptr inbounds i64, i64* %10, i64 %35
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kimage*, %struct.kimage** %2, align 8
  %38 = getelementptr inbounds %struct.kimage, %struct.kimage* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @page_address(i32 %39)
  %41 = call i64 @__pa(i8* %40)
  %42 = load i64, i64* @PA_TABLE_PAGE, align 8
  %43 = getelementptr inbounds i64, i64* %10, i64 %42
  store i64 %41, i64* %43, align 8
  %44 = load %struct.kimage*, %struct.kimage** %2, align 8
  %45 = getelementptr inbounds %struct.kimage, %struct.kimage* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KEXEC_TYPE_DEFAULT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %18
  %50 = load %struct.kimage*, %struct.kimage** %2, align 8
  %51 = getelementptr inbounds %struct.kimage, %struct.kimage* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @page_to_pfn(i32 %52)
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i64, i64* @PA_SWAP_PAGE, align 8
  %57 = getelementptr inbounds i64, i64* %10, i64 %56
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %49, %18
  %59 = call i32 (...) @load_segments()
  %60 = call i32 @phys_to_virt(i32 0)
  %61 = call i32 @set_gdt(i32 %60, i32 0)
  %62 = call i32 @phys_to_virt(i32 0)
  %63 = call i32 @set_idt(i32 %62, i32 0)
  %64 = load %struct.kimage*, %struct.kimage** %2, align 8
  %65 = getelementptr inbounds %struct.kimage, %struct.kimage* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = ptrtoint i64* %10 to i64
  %68 = load %struct.kimage*, %struct.kimage** %2, align 8
  %69 = getelementptr inbounds %struct.kimage, %struct.kimage* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kimage*, %struct.kimage** %2, align 8
  %72 = getelementptr inbounds %struct.kimage, %struct.kimage* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @relocate_kernel(i64 %66, i64 %67, i32 %70, i32 %73)
  %75 = load %struct.kimage*, %struct.kimage** %2, align 8
  %76 = getelementptr inbounds %struct.kimage, %struct.kimage* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @__ftrace_enabled_restore(i32 %77)
  %79 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__ftrace_enabled_save(...) #2

declare dso_local i32 @local_irq_disable(...) #2

declare dso_local i8* @page_address(i32) #2

declare dso_local i32 @memcpy(i8*, i32 (i64, i64, i32, i32)*, i32) #2

declare dso_local i32 @relocate_kernel(i64, i64, i32, i32) #2

declare dso_local i64 @virt_to_phys(i8*) #2

declare dso_local i64 @__pa(i8*) #2

declare dso_local i64 @page_to_pfn(i32) #2

declare dso_local i32 @load_segments(...) #2

declare dso_local i32 @set_gdt(i32, i32) #2

declare dso_local i32 @phys_to_virt(i32) #2

declare dso_local i32 @set_idt(i32, i32) #2

declare dso_local i32 @__ftrace_enabled_restore(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
