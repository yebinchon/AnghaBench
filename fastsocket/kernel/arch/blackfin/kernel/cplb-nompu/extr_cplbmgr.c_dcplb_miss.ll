; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-nompu/extr_cplbmgr.c_dcplb_miss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-nompu/extr_cplbmgr.c_dcplb_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@nr_dcplb_miss = common dso_local global i32* null, align 8
@FAULT_USERSUPV = common dso_local global i32 0, align 4
@nr_dcplb_supv_miss = common dso_local global i32* null, align 8
@dcplb_bounds = common dso_local global %struct.TYPE_2__* null, align 8
@dcplb_nr_bounds = common dso_local global i32 0, align 4
@CPLB_NO_ADDR_MATCH = common dso_local global i32 0, align 4
@SIZE_4M = common dso_local global i32 0, align 4
@SIZE_1M = common dso_local global i32 0, align 4
@PAGE_SIZE_1MB = common dso_local global i64 0, align 8
@PAGE_SIZE_4MB = common dso_local global i64 0, align 8
@CPLB_RELOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dcplb_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcplb_miss(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = call i64 (...) @bfin_read_DCPLB_FAULT_ADDR()
  store i64 %11, i64* %4, align 8
  %12 = call i32 (...) @bfin_read_DCPLB_STATUS()
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** @nr_dcplb_miss, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FAULT_USERSUPV, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32*, i32** @nr_dcplb_supv_miss, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %1
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcplb_bounds, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %50

43:                                               ; preds = %32
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @dcplb_nr_bounds, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %32, label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @dcplb_nr_bounds, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @CPLB_NO_ADDR_MATCH, align 4
  store i32 %58, i32* %2, align 4
  br label %113

59:                                               ; preds = %50
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcplb_bounds, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @CPLB_NO_ADDR_MATCH, align 4
  store i32 %72, i32* %2, align 4
  br label %113

73:                                               ; preds = %59
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* @SIZE_4M, align 4
  %76 = sub nsw i32 %75, 1
  %77 = xor i32 %76, -1
  %78 = sext i32 %77 to i64
  %79 = and i64 %74, %78
  store i64 %79, i64* %9, align 8
  %80 = load i32, i32* @SIZE_1M, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %4, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* @PAGE_SIZE_1MB, align 8
  %87 = load i64, i64* %7, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp uge i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %73
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* @SIZE_4M, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = load i64, i64* %10, align 8
  %98 = icmp ule i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i64, i64* @PAGE_SIZE_4MB, align 8
  %101 = load i64, i64* %7, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %99, %92, %73
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @evict_one_dcplb(i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @write_dcplb_data(i32 %107, i32 %108, i64 %109, i64 %110)
  %112 = load i32, i32* @CPLB_RELOADED, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %104, %71, %57
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @bfin_read_DCPLB_FAULT_ADDR(...) #1

declare dso_local i32 @bfin_read_DCPLB_STATUS(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @evict_one_dcplb(i32) #1

declare dso_local i32 @write_dcplb_data(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
