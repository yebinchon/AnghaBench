; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cryptoloop.c_cryptoloop_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cryptoloop.c_cryptoloop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.loop_info64 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LO_NAME_SIZE = common dso_local global i32 0, align 4
@LOOP_IV_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cbc\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.loop_info64*)* @cryptoloop_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptoloop_init(%struct.loop_device* %0, %struct.loop_info64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.loop_info64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.crypto_blkcipher*, align 8
  %15 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.loop_info64* %1, %struct.loop_info64** %5, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @LO_NAME_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i8* %21, i8** %13, align 8
  %22 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %23 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LOOP_IV_SECTOR_SIZE, align 4
  %26 = srem i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %117

29:                                               ; preds = %2
  %30 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %31 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LO_NAME_SIZE, align 4
  %34 = call i32 @strncpy(i8* %21, i32 %32, i32 %33)
  %35 = load i32, i32* @LO_NAME_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %21, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %13, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @strcspn(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %12, align 8
  store i32 0, i32* %8, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @strcspn(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %29
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i32 3, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = add nsw i32 %61, 3
  %63 = load i32, i32* @LO_NAME_SIZE, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %119

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memmove(i8* %21, i8* %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %21, i64 %73
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %13, align 8
  store i8 40, i8* %75, align 1
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %79 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @memcpy(i8* %77, i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %13, align 8
  store i8 41, i8* %87, align 1
  %89 = load i8*, i8** %13, align 8
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %91 = call %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8* %21, i32 0, i32 %90)
  store %struct.crypto_blkcipher* %91, %struct.crypto_blkcipher** %14, align 8
  %92 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %93 = call i64 @IS_ERR(%struct.crypto_blkcipher* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %68
  %96 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %97 = call i32 @PTR_ERR(%struct.crypto_blkcipher* %96)
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %119

98:                                               ; preds = %68
  %99 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %100 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %101 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %104 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @crypto_blkcipher_setkey(%struct.crypto_blkcipher* %99, i32 %102, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %114

110:                                              ; preds = %98
  %111 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %112 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %113 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %112, i32 0, i32 0
  store %struct.crypto_blkcipher* %111, %struct.crypto_blkcipher** %113, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %119

114:                                              ; preds = %109
  %115 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %116 = call i32 @crypto_free_blkcipher(%struct.crypto_blkcipher* %115)
  br label %117

117:                                              ; preds = %114, %28
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %119

119:                                              ; preds = %117, %110, %95, %65
  %120 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_blkcipher*) #2

declare dso_local i32 @crypto_blkcipher_setkey(%struct.crypto_blkcipher*, i32, i32) #2

declare dso_local i32 @crypto_free_blkcipher(%struct.crypto_blkcipher*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
