; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gf128mul.c_gf128mul_init_4k_lle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gf128mul.c_gf128mul_init_4k_lle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128mul_4k = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gf128mul_4k* @gf128mul_init_4k_lle(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.gf128mul_4k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.gf128mul_4k* @kzalloc(i32 8, i32 %6)
  store %struct.gf128mul_4k* %7, %struct.gf128mul_4k** %3, align 8
  %8 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %9 = icmp ne %struct.gf128mul_4k* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %80

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %15 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 128
  store i32 %13, i32* %17, align 4
  store i32 64, i32* %4, align 4
  br label %18

18:                                               ; preds = %37, %11
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %23 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %29 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = call i32 @gf128mul_x_lle(i32* %27, i32* %35)
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %18

40:                                               ; preds = %18
  store i32 2, i32* %4, align 4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %79

44:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %71, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %51 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %59 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  %65 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @be128_xor(i32* %57, i32* %63, i32* %69)
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %45

74:                                               ; preds = %45
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %41

79:                                               ; preds = %41
  br label %80

80:                                               ; preds = %79, %10
  %81 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %3, align 8
  ret %struct.gf128mul_4k* %81
}

declare dso_local %struct.gf128mul_4k* @kzalloc(i32, i32) #1

declare dso_local i32 @gf128mul_x_lle(i32*, i32*) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
