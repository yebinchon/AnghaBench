; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_iv_benbi_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_iv_benbi_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dm_target = type { i8* }

@.str = private unnamed_addr constant [37 x i8] c"cypher blocksize is not a power of 2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cypher blocksize is > 512\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* @crypt_iv_benbi_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_benbi_ctr(%struct.crypt_config* %0, %struct.dm_target* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %11 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crypto_ablkcipher_blocksize(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ilog2(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %30 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 9, %34
  %36 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %37 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %28, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @crypto_ablkcipher_blocksize(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
