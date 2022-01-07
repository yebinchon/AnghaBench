; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/skas/extr_mem.c_syscall_stub_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/skas/extr_mem.c_syscall_stub_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_id = type { i32 }

@UM_KERN_PAGE_MASK = common dso_local global i64 0, align 8
@UM_KERN_PAGE_SIZE = common dso_local global i32 0, align 4
@STUB_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_stub_data(%struct.mm_id* %0, i64* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_id*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.mm_id* %0, %struct.mm_id** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8**, i8*** %10, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i64, i64* @UM_KERN_PAGE_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = load i32, i32* @UM_KERN_PAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 10, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = sub i64 %21, %25
  %27 = icmp uge i64 %19, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load %struct.mm_id*, %struct.mm_id** %7, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = call i32 @do_syscall_stub(%struct.mm_id* %29, i8** %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  br label %68

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.mm_id*, %struct.mm_id** %7, align 8
  %40 = load i8**, i8*** %10, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i64* @check_init_stack(%struct.mm_id* %39, i8* %41)
  store i64* %42, i64** %12, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = bitcast i64* %43 to i8*
  %45 = load i8**, i8*** %10, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = load i64*, i64** %12, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i64* %51, i64* %52, i32 %56)
  %58 = load i64*, i64** %12, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = ptrtoint i64* %59 to i64
  %61 = load i64, i64* @UM_KERN_PAGE_MASK, align 8
  %62 = xor i64 %61, -1
  %63 = and i64 %60, %62
  %64 = load i64, i64* @STUB_DATA, align 8
  %65 = add i64 %63, %64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8**, i8*** %11, align 8
  store i8* %66, i8** %67, align 8
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %38, %34
  %69 = load i64, i64* %6, align 8
  ret i64 %69
}

declare dso_local i32 @do_syscall_stub(%struct.mm_id*, i8**) #1

declare dso_local i64* @check_init_stack(%struct.mm_id*, i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
