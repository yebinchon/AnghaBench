; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epat.c_epat_read_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epat.c_epat_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @epat_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epat_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
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
  %12 = load i32*, i32** @cont_map, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %60 [
    i32 0, label %21
    i32 1, label %32
    i32 2, label %44
    i32 3, label %53
    i32 4, label %53
    i32 5, label %53
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @w0(i32 %22)
  %24 = call i32 @w2(i32 1)
  %25 = call i32 @w2(i32 3)
  %26 = call i32 (...) @r1()
  store i32 %26, i32* %8, align 4
  %27 = call i32 @w2(i32 4)
  %28 = call i32 (...) @r1()
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @j44(i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 64, %33
  %35 = call i32 @w0(i32 %34)
  %36 = call i32 @w2(i32 1)
  %37 = call i32 @w2(i32 4)
  %38 = call i32 (...) @r1()
  store i32 %38, i32* %8, align 4
  %39 = call i32 (...) @r2()
  store i32 %39, i32* %9, align 4
  %40 = call i32 @w0(i32 255)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @j53(i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %61

44:                                               ; preds = %3
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 32, %45
  %47 = call i32 @w0(i32 %46)
  %48 = call i32 @w2(i32 1)
  %49 = call i32 @w2(i32 37)
  %50 = call i32 (...) @r0()
  store i32 %50, i32* %8, align 4
  %51 = call i32 @w2(i32 4)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %61

53:                                               ; preds = %3, %3, %3
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @w3(i32 %54)
  %56 = call i32 @w2(i32 36)
  %57 = call i32 (...) @r4()
  store i32 %57, i32* %8, align 4
  %58 = call i32 @w2(i32 4)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %53, %44, %32, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @j53(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
