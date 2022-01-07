; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-mpu/extr_cplbmgr.c_flush_switched_cplbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-mpu/extr_cplbmgr.c_flush_switched_cplbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@nr_cplb_flush = common dso_local global i32* null, align 8
@first_switched_icplb = common dso_local global i32 0, align 4
@MAX_CPLBS = common dso_local global i32 0, align 4
@icplb_tbl = common dso_local global %struct.TYPE_3__** null, align 8
@ICPLB_DATA0 = common dso_local global i64 0, align 8
@first_switched_dcplb = common dso_local global i32 0, align 4
@dcplb_tbl = common dso_local global %struct.TYPE_4__** null, align 8
@DCPLB_DATA0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_switched_cplbs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @nr_cplb_flush, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @local_irq_save_hw(i64 %11)
  %13 = call i32 (...) @_disable_icplb()
  %14 = load i32, i32* @first_switched_icplb, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MAX_CPLBS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @icplb_tbl, align 8
  %21 = load i32, i32* %2, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* @ICPLB_DATA0, align 8
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @bfin_write32(i64 %33, i32 0)
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %15

38:                                               ; preds = %15
  %39 = call i32 (...) @_enable_icplb()
  %40 = call i32 (...) @_disable_dcplb()
  %41 = load i32, i32* @first_switched_dcplb, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %62, %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MAX_CPLBS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @dcplb_tbl, align 8
  %48 = load i32, i32* %2, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* @DCPLB_DATA0, align 8
  %57 = load i32, i32* %3, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = call i32 @bfin_write32(i64 %60, i32 0)
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %42

65:                                               ; preds = %42
  %66 = call i32 (...) @_enable_dcplb()
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @local_irq_restore_hw(i64 %67)
  ret void
}

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @_disable_icplb(...) #1

declare dso_local i32 @bfin_write32(i64, i32) #1

declare dso_local i32 @_enable_icplb(...) #1

declare dso_local i32 @_disable_dcplb(...) #1

declare dso_local i32 @_enable_dcplb(...) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
