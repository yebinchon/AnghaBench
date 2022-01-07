; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_module.c_process_reloc_for_got.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_module.c_process_reloc_for_got.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.got_entry = type { i64, i32, %struct.got_entry* }

@R_ALPHA_LITERAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.got_entry*, i8**)* @process_reloc_for_got to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_reloc_for_got(%struct.TYPE_3__* %0, %struct.got_entry* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.got_entry*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.got_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.got_entry* %1, %struct.got_entry** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ELF64_R_SYM(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ELF64_R_TYPE(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @R_ALPHA_LITERAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %94

26:                                               ; preds = %3
  %27 = load %struct.got_entry*, %struct.got_entry** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %27, i64 %28
  store %struct.got_entry* %29, %struct.got_entry** %10, align 8
  br label %30

30:                                               ; preds = %55, %26
  %31 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %32 = icmp ne %struct.got_entry* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %35 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %41 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %49 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %44, %39
  br label %85

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %57 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %56, i32 0, i32 2
  %58 = load %struct.got_entry*, %struct.got_entry** %57, align 8
  store %struct.got_entry* %58, %struct.got_entry** %10, align 8
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.got_entry* @kmalloc(i32 24, i32 %60)
  store %struct.got_entry* %61, %struct.got_entry** %10, align 8
  %62 = load %struct.got_entry*, %struct.got_entry** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %62, i64 %63
  %65 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %64, i32 0, i32 2
  %66 = load %struct.got_entry*, %struct.got_entry** %65, align 8
  %67 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %68 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %67, i32 0, i32 2
  store %struct.got_entry* %66, %struct.got_entry** %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %71 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %76 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr i8, i8* %78, i64 8
  store i8* %79, i8** %77, align 8
  %80 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %81 = load %struct.got_entry*, %struct.got_entry** %5, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %81, i64 %82
  %84 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %83, i32 0, i32 2
  store %struct.got_entry* %80, %struct.got_entry** %84, align 8
  br label %85

85:                                               ; preds = %59, %53
  %86 = load %struct.got_entry*, %struct.got_entry** %10, align 8
  %87 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %85, %25
  ret void
}

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i64 @ELF64_R_TYPE(i32) #1

declare dso_local %struct.got_entry* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
