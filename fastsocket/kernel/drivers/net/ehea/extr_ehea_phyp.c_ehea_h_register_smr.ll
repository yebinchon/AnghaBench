; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_register_smr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_phyp.c_ehea_h_register_smr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_mr = type { i64, i64 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_REGISTER_SMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ehea_h_register_smr(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.ehea_mr* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ehea_mr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.ehea_mr* %5, %struct.ehea_mr** %12, align 8
  %16 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  %20 = load i32, i32* @H_REGISTER_SMR, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = shl i64 %24, 32
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @ehea_plpar_hcall9(i32 %20, i64* %19, i64 %21, i64 %22, i64 %23, i64 %25, i64 %26, i32 0, i32 0, i32 0, i32 0)
  store i64 %27, i64* %13, align 8
  %28 = getelementptr inbounds i64, i64* %19, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = load %struct.ehea_mr*, %struct.ehea_mr** %12, align 8
  %31 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = getelementptr inbounds i64, i64* %19, i64 2
  %33 = load i64, i64* %32, align 16
  %34 = load %struct.ehea_mr*, %struct.ehea_mr** %12, align 8
  %35 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i64 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehea_plpar_hcall9(i32, i64*, i64, i64, i64, i64, i64, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
