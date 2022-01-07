; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-mpu/extr_cplbmgr.c_set_mask_dcplbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-mpu/extr_cplbmgr.c_set_mask_dcplbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@current_rwx_mask = common dso_local global i64** null, align 8
@L2_LENGTH = common dso_local global i64 0, align 8
@L2_START = common dso_local global i64 0, align 8
@L2_DMEMORY = common dso_local global i64 0, align 8
@CPLB_SUPV_WR = common dso_local global i64 0, align 8
@CPLB_VALID = common dso_local global i64 0, align 8
@CPLB_DIRTY = common dso_local global i64 0, align 8
@PAGE_SIZE_4KB = common dso_local global i64 0, align 8
@first_mask_dcplb = common dso_local global i32 0, align 4
@first_switched_dcplb = common dso_local global i32 0, align 4
@dcplb_tbl = common dso_local global %struct.TYPE_2__** null, align 8
@DCPLB_DATA0 = common dso_local global i64 0, align 8
@DCPLB_ADDR0 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@CPLB_L1_AOW = common dso_local global i64 0, align 8
@CPLB_L1_CHBL = common dso_local global i64 0, align 8
@CPLB_WT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mask_dcplbs(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64*, i64** %3, align 8
  %10 = ptrtoint i64* %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i64*, i64** %3, align 8
  %15 = load i64**, i64*** @current_rwx_mask, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64*, i64** %15, i64 %17
  store i64* %14, i64** %18, align 8
  br label %102

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @local_irq_save_hw(i64 %20)
  %22 = load i64*, i64** %3, align 8
  %23 = load i64**, i64*** @current_rwx_mask, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64*, i64** %23, i64 %25
  store i64* %22, i64** %26, align 8
  %27 = load i64, i64* @L2_LENGTH, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @L2_START, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @L2_START, align 8
  %36 = load i64, i64* @L2_LENGTH, align 8
  %37 = add i64 %35, %36
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @L2_START, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* @L2_DMEMORY, align 8
  store i64 %41, i64* %7, align 8
  br label %50

42:                                               ; preds = %33, %29, %19
  %43 = load i64, i64* @CPLB_SUPV_WR, align 8
  %44 = load i64, i64* @CPLB_VALID, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @CPLB_DIRTY, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* @PAGE_SIZE_4KB, align 8
  %49 = or i64 %47, %48
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %42, %39
  %51 = call i32 (...) @_disable_dcplb()
  %52 = load i32, i32* @first_mask_dcplb, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %95, %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @first_switched_dcplb, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @dcplb_tbl, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %58, i64* %67, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @dcplb_tbl, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i64 %68, i64* %77, align 8
  %78 = load i64, i64* @DCPLB_DATA0, align 8
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @bfin_write32(i64 %82, i64 %83)
  %85 = load i64, i64* @DCPLB_ADDR0, align 8
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @bfin_write32(i64 %89, i64 %90)
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %57
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %53

98:                                               ; preds = %53
  %99 = call i32 (...) @_enable_dcplb()
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @local_irq_restore_hw(i64 %100)
  br label %102

102:                                              ; preds = %98, %13
  ret void
}

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @_disable_dcplb(...) #1

declare dso_local i32 @bfin_write32(i64, i64) #1

declare dso_local i32 @_enable_dcplb(...) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
