; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_machine_kexec.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_machine_kexec.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32, i32 }

@kexec_start_address = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@kexec_indirection_page = common dso_local global i64 0, align 8
@relocate_new_kernel = common dso_local global i32 0, align 4
@relocate_new_kernel_size = common dso_local global i32 0, align 4
@IND_DONE = common dso_local global i64 0, align 8
@IND_SOURCE = common dso_local global i64 0, align 8
@IND_INDIRECTION = common dso_local global i64 0, align 8
@IND_DESTINATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Will call new kernel at %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Bye ...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %6 = load %struct.kimage*, %struct.kimage** %2, align 8
  %7 = getelementptr inbounds %struct.kimage, %struct.kimage* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @page_address(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.kimage*, %struct.kimage** %2, align 8
  %11 = getelementptr inbounds %struct.kimage, %struct.kimage* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* @kexec_start_address, align 4
  %13 = load %struct.kimage*, %struct.kimage** %2, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = call i64* @phys_to_virt(i64 %17)
  %19 = ptrtoint i64* %18 to i64
  store i64 %19, i64* @kexec_indirection_page, align 8
  %20 = load i64, i64* %3, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* @relocate_new_kernel, align 4
  %23 = load i32, i32* @relocate_new_kernel_size, align 4
  %24 = call i32 @memcpy(i8* %21, i32 %22, i32 %23)
  %25 = load %struct.kimage*, %struct.kimage** %2, align 8
  %26 = getelementptr inbounds %struct.kimage, %struct.kimage* %25, i32 0, i32 0
  store i64* %26, i64** %5, align 8
  br label %27

27:                                               ; preds = %77, %1
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @IND_DONE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i1 [ false, %27 ], [ %36, %31 ]
  br i1 %38, label %39, label %79

39:                                               ; preds = %37
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IND_SOURCE, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IND_INDIRECTION, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IND_DESTINATION, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51, %45, %39
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i64* @phys_to_virt(i64 %59)
  %61 = ptrtoint i64* %60 to i64
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @IND_INDIRECTION, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @PAGE_MASK, align 8
  %72 = and i64 %70, %71
  %73 = call i64* @phys_to_virt(i64 %72)
  br label %77

74:                                               ; preds = %64
  %75 = load i64*, i64** %5, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i64* [ %73, %69 ], [ %76, %74 ]
  store i64* %78, i64** %5, align 8
  br label %27

79:                                               ; preds = %37
  %80 = call i32 (...) @local_irq_disable()
  %81 = load %struct.kimage*, %struct.kimage** %2, align 8
  %82 = getelementptr inbounds %struct.kimage, %struct.kimage* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 (...) @__flush_cache_all()
  %87 = load i64, i64* %3, align 8
  %88 = inttoptr i64 %87 to i32 (...)*
  %89 = call i32 (...) %88()
  ret void
}

declare dso_local i64 @page_address(i32) #1

declare dso_local i64* @phys_to_virt(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @__flush_cache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
