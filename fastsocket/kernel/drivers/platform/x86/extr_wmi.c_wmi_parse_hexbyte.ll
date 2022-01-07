; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_parse_hexbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_parse_hexbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wmi_parse_hexbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmi_parse_hexbyte(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub i32 %9, 48
  %11 = icmp ule i32 %10, 9
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = sub i32 %13, 48
  store i32 %14, i32* %5, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, 97
  %18 = icmp ule i32 %17, 5
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 %20, 97
  %22 = add i32 %21, 10
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, 65
  %26 = icmp ule i32 %25, 5
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = sub i32 %28, 65
  %30 = add i32 %29, 10
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %69

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 4
  store i32 %36, i32* %5, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub i32 %40, 48
  %42 = icmp ule i32 %41, 9
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub i32 %45, 48
  %47 = or i32 %44, %46
  store i32 %47, i32* %2, align 4
  br label %69

48:                                               ; preds = %34
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %49, 97
  %51 = icmp ule i32 %50, 5
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub i32 %54, 97
  %56 = add i32 %55, 10
  %57 = or i32 %53, %56
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  %60 = sub i32 %59, 65
  %61 = icmp ule i32 %60, 5
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sub i32 %64, 65
  %66 = add i32 %65, 10
  %67 = or i32 %63, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %58
  store i32 -1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62, %52, %43, %31
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
