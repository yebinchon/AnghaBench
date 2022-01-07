; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_l3hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_l3hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m63 = common dso_local global i32 0, align 4
@m64 = common dso_local global i32 0, align 4
@p64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @l3hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l3hash(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 63
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @m63, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @ADD128(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @m63, align 4
  %27 = icmp sgt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @m63, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @m64, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %5
  %37 = phi i1 [ false, %5 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = add nsw i32 %28, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ADD128(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @m63, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 32
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %52, 32
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ugt i32 %56, -2
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = ashr i32 %61, 32
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 32
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = sub nsw i32 0, %75
  %77 = and i32 %76, 257
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = sub nsw i32 0, %86
  %88 = and i32 %87, 257
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @MUL64(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, 56
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @ADD128(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 %103, 8
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @ADD128(i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = shl i32 %110, 8
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = sub nsw i32 0, %120
  %122 = and i32 %121, 257
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @p64, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp sgt i32 %125, %127
  %129 = zext i1 %128 to i32
  %130 = sub nsw i32 0, %129
  %131 = and i32 %130, 257
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  ret i32 %134
}

declare dso_local i32 @ADD128(i32, i32, i32, i32) #1

declare dso_local i32 @MUL64(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
