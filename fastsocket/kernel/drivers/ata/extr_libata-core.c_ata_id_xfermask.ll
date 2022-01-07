; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_id_xfermask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_id_xfermask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@ATA_ID_PIO_MODES = common dso_local global i64 0, align 8
@ATA_ID_OLD_PIO_MODES = common dso_local global i64 0, align 8
@ATA_ID_MWDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_CFA_MODES = common dso_local global i64 0, align 8
@ATA_ID_UDMA_MODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ata_id_xfermask(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i64, i64* @ATA_ID_PIO_MODES, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = shl i64 %22, 3
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, 7
  store i64 %25, i64* %3, align 8
  br label %42

26:                                               ; preds = %1
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* @ATA_ID_OLD_PIO_MODES, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 2, %36
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  br label %41

40:                                               ; preds = %26
  store i64 1, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32*, i32** %2, align 8
  %44 = load i64, i64* @ATA_ID_MWDMA_MODES, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 7
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %4, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @ata_id_is_cfa(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %42
  %53 = load i32*, i32** %2, align 8
  %54 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 0
  %58 = and i32 %57, 7
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 3
  %64 = and i32 %63, 7
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load i64, i64* %3, align 8
  %69 = or i64 %68, 32
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %67, %52
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %3, align 8
  %75 = or i64 %74, 64
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %4, align 8
  %81 = or i64 %80, 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %4, align 8
  %87 = or i64 %86, 16
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %42
  store i64 0, i64* %5, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32*, i32** %2, align 8
  %98 = load i64, i64* @ATA_ID_UDMA_MODES, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 255
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @ata_pack_xfermask(i64 %104, i64 %105, i64 %106)
  ret i64 %107
}

declare dso_local i64 @ata_id_is_cfa(i32*) #1

declare dso_local i64 @ata_pack_xfermask(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
