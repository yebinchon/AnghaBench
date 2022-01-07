; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha512_generic.c_sha512_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha512_generic.c_sha512_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha512_state = type { i32*, i32* }

@sha512_final.padding = internal global <{ i32, [127 x i32] }> <{ i32 128, [127 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @sha512_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha512_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %12 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.sha512_state* %12, %struct.sha512_state** %5, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %15 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 3
  %20 = call i32 @cpu_to_be64(i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %23 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 3
  %28 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %29 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 61
  %34 = or i32 %27, %33
  %35 = call i32 @cpu_to_be64(i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %38 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 127
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %43, 112
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = sub i32 112, %46
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 240, %49
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  store i32 %52, i32* %9, align 4
  %53 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @sha512_update(%struct.shash_desc* %53, i32* getelementptr inbounds ([128 x i32], [128 x i32]* bitcast (<{ i32, [127 x i32] }>* @sha512_final.padding to [128 x i32]*), i64 0, i64 0), i32 %54)
  %56 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %58 = call i32 @sha512_update(%struct.shash_desc* %56, i32* %57, i32 8)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %75, %51
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %64 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpu_to_be64(i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %80 = call i32 @memset(%struct.sha512_state* %79, i32 0, i32 16)
  ret i32 0
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @sha512_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @memset(%struct.sha512_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
