; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i64, i32 }

@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@kgdb_cpu_doing_single_step = common dso_local global i32 0, align 4
@kgdb_single_step = common dso_local global i32 0, align 4
@breakinfo = common dso_local global %struct.TYPE_2__* null, align 8
@X86_EFLAGS_RF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_handle_exception(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, %struct.pt_regs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** %13, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %97 [
    i32 99, label %23
    i32 115, label %23
    i32 68, label %33
    i32 107, label %33
  ]

23:                                               ; preds = %6, %6
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %16, align 8
  %26 = call i32 @kgdb_hex2long(i8** %16, i64* %14)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i64, i64* %14, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %6, %6, %32
  %34 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* @X86_EFLAGS_TF, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 -1)
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 115
  br i1 %49, label %50, label %58

50:                                               ; preds = %33
  %51 = load i32, i32* @X86_EFLAGS_TF, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  store i32 1, i32* @kgdb_single_step, align 4
  %56 = call i32 (...) @raw_smp_processor_id()
  %57 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 %56)
  br label %58

58:                                               ; preds = %50, %33
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @get_debugreg(i64 %59, i32 6)
  %61 = load i64, i64* %15, align 8
  %62 = and i64 %61, 16384
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %58
  store i32 0, i32* %18, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load i64, i64* %15, align 8
  %70 = load i32, i32* %18, align 4
  %71 = shl i32 1, %70
  %72 = sext i32 %71 to i64
  %73 = and i64 %69, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* @X86_EFLAGS_RF, align 4
  %85 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %93

89:                                               ; preds = %75, %68
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %65

93:                                               ; preds = %83, %65
  br label %94

94:                                               ; preds = %93, %58
  %95 = call i32 @set_debugreg(i64 0, i32 6)
  %96 = call i32 (...) @kgdb_correct_hw_break()
  store i32 0, i32* %7, align 4
  br label %98

97:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @get_debugreg(i64, i32) #1

declare dso_local i32 @set_debugreg(i64, i32) #1

declare dso_local i32 @kgdb_correct_hw_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
