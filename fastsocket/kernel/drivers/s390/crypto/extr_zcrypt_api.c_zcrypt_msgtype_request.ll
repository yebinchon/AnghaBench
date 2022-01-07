; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_msgtype_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_msgtype_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zcrypt_ops* @zcrypt_msgtype_request(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.zcrypt_ops*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zcrypt_ops*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.zcrypt_ops* null, %struct.zcrypt_ops** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.zcrypt_ops* @__ops_lookup(i8* %7, i32 %8)
  store %struct.zcrypt_ops* %9, %struct.zcrypt_ops** %6, align 8
  %10 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %6, align 8
  %11 = icmp ne %struct.zcrypt_ops* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @request_module(i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.zcrypt_ops* @__ops_lookup(i8* %15, i32 %16)
  store %struct.zcrypt_ops* %17, %struct.zcrypt_ops** %6, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %6, align 8
  %20 = icmp ne %struct.zcrypt_ops* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %6, align 8
  %23 = getelementptr inbounds %struct.zcrypt_ops, %struct.zcrypt_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @try_module_get(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %18
  store %struct.zcrypt_ops* null, %struct.zcrypt_ops** %3, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %6, align 8
  store %struct.zcrypt_ops* %29, %struct.zcrypt_ops** %3, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %3, align 8
  ret %struct.zcrypt_ops* %31
}

declare dso_local %struct.zcrypt_ops* @__ops_lookup(i8*, i32) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
