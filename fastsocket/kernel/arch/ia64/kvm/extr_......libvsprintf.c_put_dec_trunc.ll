; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_put_dec_trunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_put_dec_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @put_dec_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @put_dec_trunc(i8* %0, i32 %1) #0 {
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
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %50, 205
  %52 = lshr i32 %51, 11
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = mul i32 10, %54
  %56 = sub i32 %53, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 48
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul i32 2, %63
  %65 = add i32 %62, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %68, %49
  %72 = load i32, i32* %6, align 4
  %73 = mul i32 %72, 13
  %74 = lshr i32 %73, 7
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = mul i32 10, %76
  %78 = sub i32 %75, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 48
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = mul i32 4, %85
  %87 = add i32 %84, %86
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %71
  %91 = load i32, i32* %5, align 4
  %92 = mul i32 %91, 205
  %93 = lshr i32 %92, 11
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = mul i32 10, %95
  %97 = sub i32 %94, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 48
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %3, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %90
  %106 = load i32, i32* %4, align 4
  %107 = add i32 %106, 48
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %3, align 8
  store i8 %108, i8* %109, align 1
  br label %111

111:                                              ; preds = %105, %90
  br label %112

112:                                              ; preds = %111, %71
  br label %113

113:                                              ; preds = %112, %68
  br label %114

114:                                              ; preds = %113, %2
  %115 = load i8*, i8** %3, align 8
  ret i8* %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
