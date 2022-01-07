; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha256_generic.c_sha256_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha256_generic.c_sha256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_state = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha256_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha256_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.sha256_state* %12, %struct.sha256_state** %7, align 8
  %13 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %14 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 63
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %19 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %20, %17
  store i32 %21, i32* %19, align 8
  store i32 0, i32* %9, align 4
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %23, %24
  %26 = icmp ugt i32 %25, 63
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = sub i32 0, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %34 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 64
  %42 = call i32 @memcpy(i32* %38, i32* %39, i32 %41)
  %43 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %44 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %30, %27
  br label %47

47:                                               ; preds = %59, %46
  %48 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %49 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @sha256_transform(i32 %50, i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 64
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %10, align 8
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 63
  %62 = load i32, i32* %6, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %47, label %64

64:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %67 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub i32 %73, %74
  %76 = call i32 @memcpy(i32* %71, i32* %72, i32 %75)
  ret i32 0
}

declare dso_local %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha256_transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
