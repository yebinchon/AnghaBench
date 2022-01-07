; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_parse_user_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_parse_user_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksign_user_id = type { i32, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32 (%struct.ksign_user_id*, i8*)*, i8*)* @ksign_parse_user_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksign_parse_user_id(i32* %0, i32* %1, i32 (%struct.ksign_user_id*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (%struct.ksign_user_id*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ksign_user_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (%struct.ksign_user_id*, i8*)* %2, i32 (%struct.ksign_user_id*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32 (%struct.ksign_user_id*, i8*)*, i32 (%struct.ksign_user_id*, i8*)** %8, align 8
  %14 = icmp ne i32 (%struct.ksign_user_id*, i8*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 16, %25
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ksign_user_id* @kmalloc(i32 %28, i32 %29)
  store %struct.ksign_user_id* %30, %struct.ksign_user_id** %10, align 8
  %31 = load %struct.ksign_user_id*, %struct.ksign_user_id** %10, align 8
  %32 = icmp ne %struct.ksign_user_id* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %68

36:                                               ; preds = %16
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.ksign_user_id*, %struct.ksign_user_id** %10, align 8
  %39 = getelementptr inbounds %struct.ksign_user_id, %struct.ksign_user_id* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ksign_user_id*, %struct.ksign_user_id** %10, align 8
  %41 = getelementptr inbounds %struct.ksign_user_id, %struct.ksign_user_id* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @memcpy(i64* %42, i32* %43, i32 %44)
  %46 = load %struct.ksign_user_id*, %struct.ksign_user_id** %10, align 8
  %47 = getelementptr inbounds %struct.ksign_user_id, %struct.ksign_user_id* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i32 (%struct.ksign_user_id*, i8*)*, i32 (%struct.ksign_user_id*, i8*)** %8, align 8
  %53 = load %struct.ksign_user_id*, %struct.ksign_user_id** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 %52(%struct.ksign_user_id* %53, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %68

60:                                               ; preds = %36
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load %struct.ksign_user_id*, %struct.ksign_user_id** %10, align 8
  %66 = call i32 @ksign_free_user_id(%struct.ksign_user_id* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %58, %33, %15
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ksign_user_id* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @ksign_free_user_id(%struct.ksign_user_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
