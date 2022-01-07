; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_sha512_s390.c_sha512_import.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_sha512_s390.c_sha512_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32, i32, i32 }
%struct.sha512_state = type { i32, i32, i32* }

@ERANGE = common dso_local global i32 0, align 4
@KIMD_SHA_512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @sha512_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_import(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s390_sha_ctx*, align 8
  %7 = alloca %struct.sha512_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %9 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %8)
  store %struct.s390_sha_ctx* %9, %struct.s390_sha_ctx** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sha512_state*
  store %struct.sha512_state* %11, %struct.sha512_state** %7, align 8
  %12 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %13 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %24 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %34 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %32, i32 %35, i32 4)
  %37 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %41 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(i32 %39, i32 %42, i32 4)
  %44 = load i32, i32* @KIMD_SHA_512, align 4
  %45 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %22, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
