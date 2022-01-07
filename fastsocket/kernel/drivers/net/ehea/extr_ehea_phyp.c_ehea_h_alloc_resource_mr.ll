; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_alloc_resource_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_alloc_resource_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALLOC_HEA_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ehea_h_alloc_resource_mr(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %18 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %16, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %17, align 8
  %22 = load i32, i32* @H_ALLOC_HEA_RESOURCE, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = shl i64 %26, 32
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @ehea_plpar_hcall9(i32 %22, i64* %21, i64 %23, i32 5, i64 %24, i64 %25, i64 %27, i64 %28, i32 0, i32 0, i32 0)
  store i64 %29, i64* %15, align 8
  %30 = getelementptr inbounds i64, i64* %21, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = load i64*, i64** %13, align 8
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds i64, i64* %21, i64 2
  %34 = load i64, i64* %33, align 16
  %35 = load i64*, i64** %14, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i64 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehea_plpar_hcall9(i32, i64*, i64, i32, i64, i64, i64, i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
