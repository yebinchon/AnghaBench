; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_reg_mr_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_reg_mr_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }
%struct.ehea_adapter = type { i32 }
%struct.ehea_mr = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@EHEA_MAP_ENTRIES = common dso_local global i32 0, align 4
@ehea_bmap = common dso_local global %struct.TYPE_6__* null, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, %struct.ehea_adapter*, %struct.ehea_mr*)* @ehea_reg_mr_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_reg_mr_sections(i32 %0, i32 %1, i64* %2, %struct.ehea_adapter* %3, %struct.ehea_mr* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ehea_adapter*, align 8
  %11 = alloca %struct.ehea_mr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store %struct.ehea_adapter* %3, %struct.ehea_adapter** %10, align 8
  store %struct.ehea_mr* %4, %struct.ehea_mr** %11, align 8
  %14 = load i64, i64* @H_SUCCESS, align 8
  store i64 %14, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %59, %5
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehea_bmap, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %19
  br label %59

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i64*, i64** %9, align 8
  %46 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %47 = load %struct.ehea_mr*, %struct.ehea_mr** %11, align 8
  %48 = call i64 @ehea_reg_mr_section(i32 %42, i32 %43, i32 %44, i64* %45, %struct.ehea_adapter* %46, %struct.ehea_mr* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @H_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %6, align 8
  br label %64

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %15

62:                                               ; preds = %15
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i64 @ehea_reg_mr_section(i32, i32, i32, i64*, %struct.ehea_adapter*, %struct.ehea_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
