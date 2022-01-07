; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on20.c_on20_read_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on20.c_on20_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @on20_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on20_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = call i32 @op(i32 1)
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @vl(i32 %17)
  %19 = call i32 @op(i32 0)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %46 [
    i32 0, label %23
    i32 1, label %38
  ]

23:                                               ; preds = %3
  %24 = call i32 @w2(i32 4)
  %25 = call i32 @w2(i32 6)
  %26 = call i32 (...) @r1()
  store i32 %26, i32* %9, align 4
  %27 = call i32 @w2(i32 4)
  %28 = call i32 @w2(i32 6)
  %29 = call i32 (...) @r1()
  store i32 %29, i32* %8, align 4
  %30 = call i32 @w2(i32 4)
  %31 = call i32 @w2(i32 6)
  %32 = call i32 @w2(i32 4)
  %33 = call i32 @w2(i32 6)
  %34 = call i32 @w2(i32 4)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @j44(i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %3
  %39 = call i32 @w2(i32 4)
  %40 = call i32 @w2(i32 38)
  %41 = call i32 (...) @r0()
  store i32 %41, i32* %10, align 4
  %42 = call i32 @w2(i32 4)
  %43 = call i32 @w2(i32 38)
  %44 = call i32 @w2(i32 4)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %38, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @op(i32) #1

declare dso_local i32 @vl(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
