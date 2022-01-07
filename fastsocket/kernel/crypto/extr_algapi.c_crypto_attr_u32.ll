; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_attr_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_attr_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtattr = type { i64 }
%struct.crypto_attr_u32 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTOA_U32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_attr_u32(%struct.rtattr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.crypto_attr_u32*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %8 = icmp ne %struct.rtattr* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %14 = call i32 @RTA_PAYLOAD(%struct.rtattr* %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %22 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CRYPTOA_U32, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %31 = call %struct.crypto_attr_u32* @RTA_DATA(%struct.rtattr* %30)
  store %struct.crypto_attr_u32* %31, %struct.crypto_attr_u32** %6, align 8
  %32 = load %struct.crypto_attr_u32*, %struct.crypto_attr_u32** %6, align 8
  %33 = getelementptr inbounds %struct.crypto_attr_u32, %struct.crypto_attr_u32* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %26, %17, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local %struct.crypto_attr_u32* @RTA_DATA(%struct.rtattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
