; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_paravirt.c_paravirt_patch_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_paravirt.c_paravirt_patch_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paravirt_patch_call(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.branch*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.branch*
  store %struct.branch* %17, %struct.branch** %14, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %20, 5
  %22 = sub i64 %19, %21
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %7, align 4
  br label %42

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = icmp ult i32 %31, 5
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %7, align 4
  br label %42

35:                                               ; preds = %30
  %36 = load %struct.branch*, %struct.branch** %14, align 8
  %37 = getelementptr inbounds %struct.branch, %struct.branch* %36, i32 0, i32 0
  store i32 232, i32* %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load %struct.branch*, %struct.branch** %14, align 8
  %40 = getelementptr inbounds %struct.branch, %struct.branch* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = call i32 @BUILD_BUG_ON(i32 1)
  store i32 5, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %33, %28
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
