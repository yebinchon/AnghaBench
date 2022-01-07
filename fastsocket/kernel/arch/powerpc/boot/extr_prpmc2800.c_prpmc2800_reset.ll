; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bridge_base = common dso_local global i64 0, align 8
@MV64x60_MPP_CNTL_0 = common dso_local global i64 0, align 8
@MV64x60_GPP_LEVEL_CNTL = common dso_local global i64 0, align 8
@MV64x60_GPP_IO_CNTL = common dso_local global i64 0, align 8
@MV64x60_MPP_CNTL_2 = common dso_local global i64 0, align 8
@MV64x60_GPP_VALUE_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prpmc2800_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prpmc2800_reset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @udelay(i32 5000000)
  %3 = load i64, i64* @bridge_base, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %89

5:                                                ; preds = %0
  %6 = load i64, i64* @bridge_base, align 8
  %7 = load i64, i64* @MV64x60_MPP_CNTL_0, align 8
  %8 = add nsw i64 %6, %7
  %9 = inttoptr i64 %8 to i32*
  %10 = call i32 @in_le32(i32* %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, -61441
  store i32 %12, i32* %1, align 4
  %13 = load i64, i64* @bridge_base, align 8
  %14 = load i64, i64* @MV64x60_MPP_CNTL_0, align 8
  %15 = add nsw i64 %13, %14
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @out_le32(i32* %16, i32 %17)
  %19 = load i64, i64* @bridge_base, align 8
  %20 = load i64, i64* @MV64x60_GPP_LEVEL_CNTL, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @in_le32(i32* %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = or i32 %24, 4
  store i32 %25, i32* %1, align 4
  %26 = load i64, i64* @bridge_base, align 8
  %27 = load i64, i64* @MV64x60_GPP_LEVEL_CNTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @out_le32(i32* %29, i32 %30)
  %32 = load i64, i64* @bridge_base, align 8
  %33 = load i64, i64* @MV64x60_GPP_IO_CNTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @in_le32(i32* %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = or i32 %37, 4
  store i32 %38, i32* %1, align 4
  %39 = load i64, i64* @bridge_base, align 8
  %40 = load i64, i64* @MV64x60_GPP_IO_CNTL, align 8
  %41 = add nsw i64 %39, %40
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @out_le32(i32* %42, i32 %43)
  %45 = load i64, i64* @bridge_base, align 8
  %46 = load i64, i64* @MV64x60_MPP_CNTL_2, align 8
  %47 = add nsw i64 %45, %46
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @in_le32(i32* %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = and i32 %50, -61441
  store i32 %51, i32* %1, align 4
  %52 = load i64, i64* @bridge_base, align 8
  %53 = load i64, i64* @MV64x60_MPP_CNTL_2, align 8
  %54 = add nsw i64 %52, %53
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @out_le32(i32* %55, i32 %56)
  %58 = load i64, i64* @bridge_base, align 8
  %59 = load i64, i64* @MV64x60_GPP_LEVEL_CNTL, align 8
  %60 = add nsw i64 %58, %59
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @in_le32(i32* %61)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = or i32 %63, 524288
  store i32 %64, i32* %1, align 4
  %65 = load i64, i64* @bridge_base, align 8
  %66 = load i64, i64* @MV64x60_GPP_LEVEL_CNTL, align 8
  %67 = add nsw i64 %65, %66
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @out_le32(i32* %68, i32 %69)
  %71 = load i64, i64* @bridge_base, align 8
  %72 = load i64, i64* @MV64x60_GPP_IO_CNTL, align 8
  %73 = add nsw i64 %71, %72
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @in_le32(i32* %74)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = or i32 %76, 524288
  store i32 %77, i32* %1, align 4
  %78 = load i64, i64* @bridge_base, align 8
  %79 = load i64, i64* @MV64x60_GPP_IO_CNTL, align 8
  %80 = add nsw i64 %78, %79
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %1, align 4
  %83 = call i32 @out_le32(i32* %81, i32 %82)
  %84 = load i64, i64* @bridge_base, align 8
  %85 = load i64, i64* @MV64x60_GPP_VALUE_SET, align 8
  %86 = add nsw i64 %84, %85
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @out_le32(i32* %87, i32 524292)
  br label %89

89:                                               ; preds = %5, %0
  br label %90

90:                                               ; preds = %90, %89
  br label %90
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
