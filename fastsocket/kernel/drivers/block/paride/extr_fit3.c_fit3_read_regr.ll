; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_fit3.c_fit3_read_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_fit3.c_fit3_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @fit3_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fit3_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 255, i32* %4, align 4
  br label %62

16:                                               ; preds = %12
  store i32 7, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %61 [
    i32 0, label %21
    i32 1, label %36
    i32 2, label %49
  ]

21:                                               ; preds = %17
  %22 = call i32 @w2(i32 12)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 16
  %25 = call i32 @w0(i32 %24)
  %26 = call i32 @w2(i32 8)
  %27 = call i32 @w2(i32 12)
  %28 = call i32 @w2(i32 13)
  %29 = call i32 (...) @r1()
  store i32 %29, i32* %8, align 4
  %30 = call i32 @w2(i32 15)
  %31 = call i32 (...) @r1()
  store i32 %31, i32* %9, align 4
  %32 = call i32 @w2(i32 12)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @j44(i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %62

36:                                               ; preds = %17
  %37 = call i32 @w2(i32 12)
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 144
  %40 = call i32 @w0(i32 %39)
  %41 = call i32 @w2(i32 8)
  %42 = call i32 @w2(i32 12)
  %43 = call i32 @w2(i32 236)
  %44 = call i32 @w2(i32 238)
  %45 = call i32 @w2(i32 239)
  %46 = call i32 (...) @r0()
  store i32 %46, i32* %8, align 4
  %47 = call i32 @w2(i32 12)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %17
  %50 = call i32 @w2(i32 12)
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 144
  %53 = call i32 @w0(i32 %52)
  %54 = call i32 @w2(i32 8)
  %55 = call i32 @w2(i32 12)
  %56 = call i32 @w2(i32 236)
  %57 = call i32 (...) @r4()
  store i32 %57, i32* %8, align 4
  %58 = call i32 (...) @r4()
  store i32 %58, i32* %9, align 4
  %59 = call i32 @w2(i32 12)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %49, %36, %21, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
