; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bsd_comp.c_bsd_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bsd_comp.c_bsd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_db = type { i32, i32, i32, i64, i64, i32 }

@RATIO_MAX = common dso_local global i32 0, align 4
@CHECK_GAP = common dso_local global i32 0, align 4
@RATIO_SCALE_LOG = common dso_local global i32 0, align 4
@RATIO_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsd_db*)* @bsd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_check(%struct.bsd_db* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsd_db*, align 8
  %4 = alloca i32, align 4
  store %struct.bsd_db* %0, %struct.bsd_db** %3, align 8
  %5 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %6 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %9 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %91

12:                                               ; preds = %1
  %13 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %14 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RATIO_MAX, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %20 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RATIO_MAX, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18, %12
  %25 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %26 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 2
  %29 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %30 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %34 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 2
  %37 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %38 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %24, %18
  %42 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %43 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CHECK_GAP, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %48 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %50 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %53 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %41
  %57 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %58 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RATIO_SCALE_LOG, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %4, align 4
  %62 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %63 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %68 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = udiv i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %56
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %75 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RATIO_SCALE, align 4
  %81 = mul nsw i32 1, %80
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78, %72
  %84 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %85 = call i32 @bsd_clear(%struct.bsd_db* %84)
  store i32 1, i32* %2, align 4
  br label %92

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.bsd_db*, %struct.bsd_db** %3, align 8
  %89 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %41
  br label %91

91:                                               ; preds = %90, %1
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @bsd_clear(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
