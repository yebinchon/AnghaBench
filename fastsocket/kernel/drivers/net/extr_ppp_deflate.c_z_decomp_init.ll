; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_deflate.c_z_decomp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_deflate.c_z_decomp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_deflate_state = type { i64, i32, i32, i32, i32, i64 }

@CILEN_DEFLATE = common dso_local global i32 0, align 4
@CI_DEFLATE = common dso_local global i8 0, align 1
@CI_DEFLATE_DRAFT = common dso_local global i8 0, align 1
@DEFLATE_METHOD_VAL = common dso_local global i64 0, align 8
@DEFLATE_CHK_SEQUENCE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32)* @z_decomp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_decomp_init(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ppp_deflate_state*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.ppp_deflate_state*
  store %struct.ppp_deflate_state* %18, %struct.ppp_deflate_state** %16, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @CILEN_DEFLATE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %69, label %22

22:                                               ; preds = %7
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @CI_DEFLATE, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @CI_DEFLATE_DRAFT, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %69, label %38

38:                                               ; preds = %30, %22
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* @CILEN_DEFLATE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @DEFLATE_METHOD(i8 zeroext %48)
  %50 = load i64, i64* @DEFLATE_METHOD_VAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @DEFLATE_SIZE(i8 zeroext %55)
  %57 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %16, align 8
  %58 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %52
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @DEFLATE_CHK_SEQUENCE, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %52, %45, %38, %30, %7
  store i32 0, i32* %8, align 4
  br label %85

70:                                               ; preds = %61
  %71 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %16, align 8
  %72 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %16, align 8
  %75 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %16, align 8
  %78 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %16, align 8
  %81 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %16, align 8
  %83 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %82, i32 0, i32 4
  %84 = call i32 @zlib_inflateReset(i32* %83)
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %70, %69
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i64 @DEFLATE_METHOD(i8 zeroext) #1

declare dso_local i64 @DEFLATE_SIZE(i8 zeroext) #1

declare dso_local i32 @zlib_inflateReset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
