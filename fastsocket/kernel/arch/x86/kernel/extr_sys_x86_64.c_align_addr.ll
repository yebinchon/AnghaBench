; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_sys_x86_64.c_align_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_sys_x86_64.c_align_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }

@va_align = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@ALIGN_VDSO = common dso_local global i32 0, align 4
@ALIGN_TOPDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @align_addr(i64 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 0), align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 0), align 8
  %13 = call i32 (...) @mmap_is_ia32()
  %14 = sub nsw i32 2, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %3
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %4, align 8
  br label %54

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PF_RANDOMIZE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %4, align 8
  br label %54

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ALIGN_VDSO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = icmp ne %struct.file* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %4, align 8
  br label %54

38:                                               ; preds = %33, %28
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ALIGN_TOPDOWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 1), align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 1), align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %8, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %48, %36, %26, %17
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i32 @mmap_is_ia32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
