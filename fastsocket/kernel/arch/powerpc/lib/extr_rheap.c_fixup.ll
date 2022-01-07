; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_rheap.c_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_rheap.c_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, %struct.list_head*)* @fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup(i64 %0, i64 %1, i32 %2, %struct.list_head* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %10 = load %struct.list_head*, %struct.list_head** %8, align 8
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to i64*
  store i64* %12, i64** %9, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %24
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %22, %17, %4
  %29 = load %struct.list_head*, %struct.list_head** %8, align 8
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to i64*
  store i64* %31, i64** %9, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %41, %36, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
