; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_smpboot.c_get_delta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_smpboot.c_get_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_ITERS = common dso_local global i64 0, align 8
@go = common dso_local global i64* null, align 8
@MASTER = common dso_local global i64 0, align 8
@SLAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*)* @get_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_delta(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %48, %2
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @NUM_ITERS, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = call i64 (...) @ia64_get_itc()
  store i64 %18, i64* %9, align 8
  %19 = load i64*, i64** @go, align 8
  %20 = load i64, i64* @MASTER, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 1, i64* %21, align 8
  br label %22

22:                                               ; preds = %29, %17
  %23 = load i64*, i64** @go, align 8
  %24 = load i64, i64* @SLAVE, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @cpu_relax()
  br label %22

31:                                               ; preds = %22
  %32 = load i64*, i64** @go, align 8
  %33 = load i64, i64* @SLAVE, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = call i64 (...) @ia64_get_itc()
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %39, %40
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %43, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %13

51:                                               ; preds = %13
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub i64 %52, %53
  %55 = load i64*, i64** %3, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub i64 %56, %57
  %59 = load i64*, i64** %4, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = udiv i64 %60, 2
  %62 = load i64, i64* %6, align 8
  %63 = udiv i64 %62, 2
  %64 = add i64 %61, %63
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %5, align 8
  %66 = urem i64 %65, 2
  %67 = load i64, i64* %6, align 8
  %68 = urem i64 %67, 2
  %69 = add i64 %66, %68
  %70 = icmp eq i64 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %71, %51
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %75, %76
  ret i64 %77
}

declare dso_local i64 @ia64_get_itc(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
