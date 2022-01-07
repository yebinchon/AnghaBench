; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_cbc_desall_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_cbc_desall_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i8*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, i8*, %struct.blkcipher_walk*)* @cbc_desall_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_desall_crypt(%struct.blkcipher_desc* %0, i64 %1, i8* %2, %struct.blkcipher_walk* %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.blkcipher_walk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.blkcipher_walk* %3, %struct.blkcipher_walk** %8, align 8
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %16 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %14, %struct.blkcipher_walk* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %82

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %29 = call i32 @memcpy(i8* %24, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %70, %23
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %37 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %12, align 8
  %41 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @crypt_s390_kmc(i64 %46, i8* %47, i32* %48, i32* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %55, %56
  br label %58

58:                                               ; preds = %54, %30
  %59 = phi i1 [ true, %30 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %67 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %66, %struct.blkcipher_walk* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %58
  %71 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %72 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %30, label %75

75:                                               ; preds = %70
  %76 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %77 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %81 = call i32 @memcpy(i8* %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %22
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypt_s390_kmc(i64, i8*, i32*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
