; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_build_bit_powermask_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_build_bit_powermask_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_dec23_private = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_dec23_private*)* @build_bit_powermask_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_bit_powermask_table(%struct.pwc_dec23_private* %0) #0 {
  %2 = alloca %struct.pwc_dec23_private*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwc_dec23_private* %0, %struct.pwc_dec23_private** %2, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = sub i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %2, align 8
  %16 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %41, %12
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %23, 256
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32, i32* %7, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
