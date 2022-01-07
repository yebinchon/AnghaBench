; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_extract_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_extract_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SHA_WORKSPACE_WORDS = common dso_local global i32 0, align 4
@EXTRACT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i32*)* @extract_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_buf(%struct.entropy_store* %0, i32* %1) #0 {
  %3 = alloca %struct.entropy_store*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i32], align 16
  store %struct.entropy_store* %0, %struct.entropy_store** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @SHA_WORKSPACE_WORDS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %15 = call i32 @sha_init(i32* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %19 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %26 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %27 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @sha_transform(i32* %25, i32* %32, i32* %13)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 16
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %41 = call i32 @mix_pool_bytes_extract(%struct.entropy_store* %38, i32* %39, i32 20, i32* %40)
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %44 = call i32 @sha_transform(i32* %42, i32* %43, i32* %13)
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %46 = call i32 @memset(i32* %45, i32 0, i32 256)
  %47 = mul nuw i64 4, %11
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %13, i32 0, i32 %48)
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = xor i32 %53, %51
  store i32 %54, i32* %52, align 16
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %56 = load i32, i32* %55, align 16
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rol32(i32 %61, i32 16)
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = xor i32 %64, %62
  store i32 %65, i32* %63, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %68 = load i32, i32* @EXTRACT_SIZE, align 4
  %69 = call i32 @memcpy(i32* %66, i32* %67, i32 %68)
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %71 = call i32 @memset(i32* %70, i32 0, i32 20)
  %72 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %72)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sha_init(i32*) #2

declare dso_local i32 @sha_transform(i32*, i32*, i32*) #2

declare dso_local i32 @mix_pool_bytes_extract(%struct.entropy_store*, i32*, i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @rol32(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
