; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_dec_to_uint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_dec_to_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dec_to_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_to_uint(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @strlen(i32* %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @isdigit(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = mul i32 %23, 10
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %26, 48
  %28 = add i32 %24, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %12

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
