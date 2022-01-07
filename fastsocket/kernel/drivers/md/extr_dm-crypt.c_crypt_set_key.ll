; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DM_CRYPT_KEY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i8*)* @crypt_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_set_key(%struct.crypt_config* %0, i8* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 1
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %20 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %63

28:                                               ; preds = %23, %18
  %29 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %30 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %35 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %39 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @crypt_decode_key(i32 %36, i8* %37, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %63

44:                                               ; preds = %33, %28
  %45 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %46 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %52 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @crypto_ablkcipher_setkey(i32 %47, i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @DM_CRYPT_KEY_VALID, align 4
  %59 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %60 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %59, i32 0, i32 1
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %44
  br label %63

63:                                               ; preds = %62, %43, %27, %17
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @memset(i8* %64, i32 48, i32 %65)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @crypt_decode_key(i32, i8*, i32) #1

declare dso_local i32 @crypto_ablkcipher_setkey(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
