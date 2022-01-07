; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_get_aes_decrypt_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_get_aes_decrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"stream co-processor: bad aes key length in get_aes_decrypt_key\0A\00", align 1
@round_constant = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @get_aes_decrypt_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_aes_decrypt_key(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %17 [
    i32 128, label %14
    i32 192, label %15
    i32 256, label %16
  ]

14:                                               ; preds = %3
  store i32 4, i32* %12, align 4
  store i32 10, i32* %11, align 4
  br label %19

15:                                               ; preds = %3
  store i32 6, i32* %12, align 4
  store i32 12, i32* %11, align 4
  br label %19

16:                                               ; preds = %3
  store i32 8, i32* %12, align 4
  store i32 14, i32* %11, align 4
  br label %19

17:                                               ; preds = %3
  %18 = call i32 @panic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %16, %15, %14
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 4, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %114, %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 2
  %47 = mul nsw i32 4, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %117

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = srem i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 24
  %63 = or i32 %60, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @aes_ks_subword(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** @round_constant, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sdiv i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %88

76:                                               ; preds = %49
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 6
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = srem i32 %80, %81
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @aes_ks_subword(i32 %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %79, %76
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %12, align 4
  %92 = srem i32 %90, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 4, %104
  %106 = icmp sge i32 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %88
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @cpu_to_be32(i32 %108)
  %110 = load i8*, i8** %4, align 8
  %111 = bitcast i8* %110 to i32*
  store i32 %109, i32* %111, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %107, %88
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %43

117:                                              ; preds = %43
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @aes_ks_subword(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
