; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_aten.c_aten_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_aten.c_aten_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @aten_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aten_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %94 [
    i32 0, label %15
    i32 1, label %57
  ]

15:                                               ; preds = %3
  %16 = call i32 @w0(i32 72)
  %17 = call i32 @w2(i32 14)
  %18 = call i32 @w2(i32 6)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %52, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = call i32 @w2(i32 7)
  %26 = call i32 @w2(i32 6)
  %27 = call i32 @w2(i32 2)
  %28 = call i32 (...) @r1()
  store i32 %28, i32* %8, align 4
  %29 = call i32 @w0(i32 88)
  %30 = call i32 (...) @r1()
  store i32 %30, i32* %9, align 4
  %31 = call i32 @w2(i32 0)
  %32 = call i32 (...) @r1()
  store i32 %32, i32* %11, align 4
  %33 = call i32 @w0(i32 72)
  %34 = call i32 (...) @r1()
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call signext i8 @j44(i32 %35, i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 %37, i8* %42, align 1
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call signext i8 @j44(i32 %43, i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8 %45, i8* %51, align 1
  br label %52

52:                                               ; preds = %24
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %19

55:                                               ; preds = %19
  %56 = call i32 @w2(i32 12)
  br label %94

57:                                               ; preds = %3
  %58 = call i32 @w0(i32 88)
  %59 = call i32 @w2(i32 14)
  %60 = call i32 @w2(i32 6)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %88, %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 2
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = call i32 @w2(i32 39)
  %68 = call i32 @w2(i32 38)
  %69 = call i32 @w2(i32 34)
  %70 = call i32 (...) @r0()
  store i32 %70, i32* %8, align 4
  %71 = call i32 @w2(i32 32)
  %72 = call i32 (...) @r0()
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %74, i8* %79, align 1
  %80 = load i32, i32* %8, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8 %81, i8* %87, align 1
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %61

91:                                               ; preds = %61
  %92 = call i32 @w2(i32 38)
  %93 = call i32 @w2(i32 12)
  br label %94

94:                                               ; preds = %3, %91, %55
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
