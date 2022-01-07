; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_put_dec_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_put_dec_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @put_dec_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @put_dec_full(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 15
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 15
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = lshr i32 %15, 12
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %19, %20
  %22 = mul i32 6, %21
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 15
  %25 = add i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 %26, 205
  %28 = lshr i32 %27, 11
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = mul i32 10, %30
  %32 = sub i32 %29, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 48
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul i32 9, %39
  %41 = add i32 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = mul i32 5, %42
  %44 = add i32 %41, %43
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul i32 %47, 205
  %49 = lshr i32 %48, 11
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = mul i32 10, %51
  %53 = sub i32 %50, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 48
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul i32 2, %60
  %62 = add i32 %59, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul i32 %63, 13
  %65 = lshr i32 %64, 7
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = mul i32 10, %67
  %69 = sub i32 %66, %68
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 48
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %3, align 8
  store i8 %72, i8* %73, align 1
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = mul i32 4, %76
  %78 = add i32 %75, %77
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul i32 %79, 205
  %81 = lshr i32 %80, 11
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = mul i32 10, %83
  %85 = sub i32 %82, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 48
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %3, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i32, i32* %4, align 4
  %92 = add i32 %91, 48
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
