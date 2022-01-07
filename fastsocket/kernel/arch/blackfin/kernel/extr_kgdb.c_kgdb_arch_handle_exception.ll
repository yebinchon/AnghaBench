; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, i32 }

@kgdb_contthread = common dso_local global i32* null, align 8
@current = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"E00\00", align 1
@kgdb_single_step = common dso_local global i32 0, align 4

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
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** %13, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %84 [
    i32 99, label %22
    i32 115, label %22
  ]

22:                                               ; preds = %6, %6
  %23 = load i32*, i32** @kgdb_contthread, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** @kgdb_contthread, align 8
  %27 = load i32*, i32** @current, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %84

32:                                               ; preds = %25, %22
  store i32* null, i32** @kgdb_contthread, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %15, align 8
  %35 = call i32 @kgdb_hex2long(i8** %15, i64* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, -2
  store i32 %49, i32* %47, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 115
  br i1 %54, label %55, label %82

55:                                               ; preds = %41
  %56 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @kgdb_single_step, align 4
  %63 = load i32, i32* @kgdb_single_step, align 4
  %64 = ashr i32 %63, 6
  store i32 %64, i32* @kgdb_single_step, align 4
  store i32 10, i32* %17, align 4
  br label %65

65:                                               ; preds = %74, %55
  %66 = load i32, i32* %17, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* @kgdb_single_step, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %79

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* @kgdb_single_step, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* @kgdb_single_step, align 4
  br label %65

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @kgdb_single_step, align 4
  br label %82

82:                                               ; preds = %79, %41
  %83 = call i32 (...) @bfin_correct_hw_break()
  store i32 0, i32* %7, align 4
  br label %85

84:                                               ; preds = %6, %29
  store i32 -1, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %82
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @bfin_correct_hw_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
