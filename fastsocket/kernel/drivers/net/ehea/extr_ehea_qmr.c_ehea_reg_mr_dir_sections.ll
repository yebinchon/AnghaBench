; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_reg_mr_dir_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_reg_mr_dir_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.ehea_adapter = type { i32 }
%struct.ehea_mr = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@EHEA_MAP_ENTRIES = common dso_local global i32 0, align 4
@ehea_bmap = common dso_local global %struct.TYPE_4__* null, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64*, %struct.ehea_adapter*, %struct.ehea_mr*)* @ehea_reg_mr_dir_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_reg_mr_dir_sections(i32 %0, i64* %1, %struct.ehea_adapter* %2, %struct.ehea_mr* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ehea_adapter*, align 8
  %9 = alloca %struct.ehea_mr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store %struct.ehea_adapter* %2, %struct.ehea_adapter** %8, align 8
  store %struct.ehea_mr* %3, %struct.ehea_mr** %9, align 8
  %12 = load i64, i64* @H_SUCCESS, align 8
  store i64 %12, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %50, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehea_bmap, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %50

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i64*, i64** %7, align 8
  %37 = load %struct.ehea_adapter*, %struct.ehea_adapter** %8, align 8
  %38 = load %struct.ehea_mr*, %struct.ehea_mr** %9, align 8
  %39 = call i64 @ehea_reg_mr_sections(i32 %34, i32 %35, i64* %36, %struct.ehea_adapter* %37, %struct.ehea_mr* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @H_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %5, align 8
  br label %55

49:                                               ; preds = %43, %33
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %13

53:                                               ; preds = %13
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i64 @ehea_reg_mr_sections(i32, i32, i64*, %struct.ehea_adapter*, %struct.ehea_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
