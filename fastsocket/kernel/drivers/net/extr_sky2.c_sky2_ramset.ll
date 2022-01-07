; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_ramset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_ramset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_CLR = common dso_local global i32 0, align 4
@RB_START = common dso_local global i32 0, align 4
@RB_END = common dso_local global i32 0, align 4
@RB_WP = common dso_local global i32 0, align 4
@RB_RP = common dso_local global i32 0, align 4
@Q_R1 = common dso_local global i64 0, align 8
@Q_R2 = common dso_local global i64 0, align 8
@RB_RX_UTHP = common dso_local global i32 0, align 4
@RB_RX_LTHP = common dso_local global i32 0, align 4
@RB_RX_UTPP = common dso_local global i32 0, align 4
@RB_RX_LTPP = common dso_local global i32 0, align 4
@RB_ENA_STFWD = common dso_local global i32 0, align 4
@RB_ENA_OP_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i64, i32, i32)* @sky2_ramset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_ramset(%struct.sky2_hw* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 128
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 %13, 128
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %15, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @RB_CTRL, align 4
  %22 = call i32 @RB_ADDR(i64 %20, i32 %21)
  %23 = load i32, i32* @RB_RST_CLR, align 4
  %24 = call i32 @sky2_write8(%struct.sky2_hw* %19, i32 %22, i32 %23)
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @RB_START, align 4
  %28 = call i32 @RB_ADDR(i64 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sky2_write32(%struct.sky2_hw* %25, i32 %28, i32 %29)
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @RB_END, align 4
  %34 = call i32 @RB_ADDR(i64 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @sky2_write32(%struct.sky2_hw* %31, i32 %34, i32 %35)
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @RB_WP, align 4
  %40 = call i32 @RB_ADDR(i64 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @sky2_write32(%struct.sky2_hw* %37, i32 %40, i32 %41)
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @RB_RP, align 4
  %46 = call i32 @RB_ADDR(i64 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @sky2_write32(%struct.sky2_hw* %43, i32 %46, i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @Q_R1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %4
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @Q_R2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52, %4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sdiv i32 %58, 4
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @RB_RX_UTHP, align 4
  %64 = call i32 @RB_ADDR(i64 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @sky2_write32(%struct.sky2_hw* %61, i32 %64, i32 %65)
  %67 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* @RB_RX_LTHP, align 4
  %70 = call i32 @RB_ADDR(i64 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %71, 2
  %73 = call i32 @sky2_write32(%struct.sky2_hw* %67, i32 %70, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 256
  store i32 %75, i32* %10, align 4
  %76 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @RB_RX_UTPP, align 4
  %79 = call i32 @RB_ADDR(i64 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @sky2_write32(%struct.sky2_hw* %76, i32 %79, i32 %80)
  %82 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @RB_RX_LTPP, align 4
  %85 = call i32 @RB_ADDR(i64 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %86, 4
  %88 = call i32 @sky2_write32(%struct.sky2_hw* %82, i32 %85, i32 %87)
  br label %96

89:                                               ; preds = %52
  %90 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* @RB_CTRL, align 4
  %93 = call i32 @RB_ADDR(i64 %91, i32 %92)
  %94 = load i32, i32* @RB_ENA_STFWD, align 4
  %95 = call i32 @sky2_write8(%struct.sky2_hw* %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %56
  %97 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i32, i32* @RB_CTRL, align 4
  %100 = call i32 @RB_ADDR(i64 %98, i32 %99)
  %101 = load i32, i32* @RB_ENA_OP_MD, align 4
  %102 = call i32 @sky2_write8(%struct.sky2_hw* %97, i32 %100, i32 %101)
  %103 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i32, i32* @RB_CTRL, align 4
  %106 = call i32 @RB_ADDR(i64 %104, i32 %105)
  %107 = call i32 @sky2_read8(%struct.sky2_hw* %103, i32 %106)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i64, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read8(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
