; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha1_generic.c_sha1_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha1_generic.c_sha1_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_state = type { i32, i32*, i32 }

@SHA_WORKSPACE_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha1_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha1_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = call %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.sha1_state* %14, %struct.sha1_state** %7, align 8
  %15 = load %struct.sha1_state*, %struct.sha1_state** %7, align 8
  %16 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 63
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sha1_state*, %struct.sha1_state** %7, align 8
  %21 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 8
  store i32 0, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %25, %26
  %28 = icmp ugt i32 %27, 63
  br i1 %28, label %29, label %75

29:                                               ; preds = %3
  %30 = load i32, i32* @SHA_WORKSPACE_WORDS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 0, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.sha1_state*, %struct.sha1_state** %7, align 8
  %40 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 64
  %48 = call i32 @memcpy(i32* %44, i32* %45, i32 %47)
  %49 = load %struct.sha1_state*, %struct.sha1_state** %7, align 8
  %50 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %36, %29
  br label %53

53:                                               ; preds = %65, %52
  %54 = load %struct.sha1_state*, %struct.sha1_state** %7, align 8
  %55 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sha_transform(i32 %56, i32* %57, i32* %33)
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 64
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %10, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 63
  %68 = load i32, i32* %6, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %53, label %70

70:                                               ; preds = %65
  %71 = mul nuw i64 4, %31
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i32* %33, i32 0, i32 %72)
  store i32 0, i32* %8, align 4
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  br label %75

75:                                               ; preds = %70, %3
  %76 = load %struct.sha1_state*, %struct.sha1_state** %7, align 8
  %77 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub i32 %83, %84
  %86 = call i32 @memcpy(i32* %81, i32* %82, i32 %85)
  ret i32 0
}

declare dso_local %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha_transform(i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
