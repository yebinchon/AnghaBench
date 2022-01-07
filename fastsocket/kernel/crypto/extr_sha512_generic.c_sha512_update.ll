; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha512_generic.c_sha512_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha512_generic.c_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha512_state = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha512_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha512_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.sha512_state* %12, %struct.sha512_state** %7, align 8
  %13 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %14 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %21 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %30 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %3
  %36 = load i32, i32* %9, align 4
  %37 = sub i32 128, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35
  %42 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %43 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @memcpy(i32* %47, i32* %48, i32 %49)
  %51 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %52 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %55 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @sha512_transform(i32 %53, i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %73, %41
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, 127
  %62 = load i32, i32* %6, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %66 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @sha512_transform(i32 %67, i32* %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 128
  store i32 %75, i32* %8, align 4
  br label %59

76:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %78

77:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %80 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub i32 %89, %90
  %92 = call i32 @memcpy(i32* %84, i32* %88, i32 %91)
  ret i32 0
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha512_transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
