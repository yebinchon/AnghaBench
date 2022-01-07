; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_mppe.c_mppe_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_mppe.c_mppe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_mppe_state = type { i8*, i8*, i32*, i32*, %struct.ppp_mppe_state* }

@CILEN_MPPE = common dso_local global i32 0, align 4
@CI_MPPE = common dso_local global i8 0, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ecb(arc4)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@MPPE_MAX_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @mppe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mppe_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppp_mppe_state*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @CILEN_MPPE, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @CI_MPPE, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* @CILEN_MPPE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %14, %2
  br label %133

30:                                               ; preds = %22
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ppp_mppe_state* @kzalloc(i32 40, i32 %31)
  store %struct.ppp_mppe_state* %32, %struct.ppp_mppe_state** %6, align 8
  %33 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %34 = icmp eq %struct.ppp_mppe_state* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %133

36:                                               ; preds = %30
  %37 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %38 = call i32* @crypto_alloc_blkcipher(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 %37)
  %39 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %40 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %42 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %48 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %100

49:                                               ; preds = %36
  %50 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %51 = call i32* @crypto_alloc_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %50)
  %52 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %53 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %55 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %61 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %100

62:                                               ; preds = %49
  %63 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %64 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @crypto_hash_digestsize(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MPPE_MAX_KEY_LEN, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %100

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.ppp_mppe_state* @kmalloc(i32 %72, i32 %73)
  %75 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %76 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %75, i32 0, i32 4
  store %struct.ppp_mppe_state* %74, %struct.ppp_mppe_state** %76, align 8
  %77 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %78 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %77, i32 0, i32 4
  %79 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %78, align 8
  %80 = icmp ne %struct.ppp_mppe_state* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %100

82:                                               ; preds = %71
  %83 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %84 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* @CILEN_MPPE, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = call i32 @memcpy(i8* %85, i8* %89, i32 8)
  %91 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %92 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %95 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @memcpy(i8* %93, i8* %96, i32 8)
  %98 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %99 = bitcast %struct.ppp_mppe_state* %98 to i8*
  store i8* %99, i8** %3, align 8
  br label %134

100:                                              ; preds = %81, %70, %59, %46
  %101 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %102 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %101, i32 0, i32 4
  %103 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %102, align 8
  %104 = icmp ne %struct.ppp_mppe_state* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %107 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %106, i32 0, i32 4
  %108 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %107, align 8
  %109 = call i32 @kfree(%struct.ppp_mppe_state* %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %112 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %117 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @crypto_free_hash(i32* %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %122 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %127 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @crypto_free_blkcipher(i32* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %132 = call i32 @kfree(%struct.ppp_mppe_state* %131)
  br label %133

133:                                              ; preds = %130, %35, %29
  store i8* null, i8** %3, align 8
  br label %134

134:                                              ; preds = %133, %82
  %135 = load i8*, i8** %3, align 8
  ret i8* %135
}

declare dso_local %struct.ppp_mppe_state* @kzalloc(i32, i32) #1

declare dso_local i32* @crypto_alloc_blkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @crypto_alloc_hash(i8*, i32, i32) #1

declare dso_local i32 @crypto_hash_digestsize(i32*) #1

declare dso_local %struct.ppp_mppe_state* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ppp_mppe_state*) #1

declare dso_local i32 @crypto_free_hash(i32*) #1

declare dso_local i32 @crypto_free_blkcipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
