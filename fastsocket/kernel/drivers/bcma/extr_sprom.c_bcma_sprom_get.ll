; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_sprom.c_bcma_sprom_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_sprom.c_bcma_sprom_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BCMA_CC_SPROM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SSB_SPROMSIZE_WORDS_R4 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4331 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43431 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"SPROM offset 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"invalid sprom read from the PCIe card, try to use fallback sprom\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_sprom_get(%struct.bcma_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  %8 = load i32, i32* @BCMA_CC_SPROM, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %1
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %19 = call i32 @bcma_sprom_ext_available(%struct.bcma_bus* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %23 = call i32 @bcma_sprom_onchip_available(%struct.bcma_bus* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %28 = call i32 @bcma_sprom_onchip_offset(%struct.bcma_bus* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %37 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %38 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %37, i32 0, i32 0
  %39 = call i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus* %36, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %114

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* @SSB_SPROMSIZE_WORDS_R4, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @kcalloc(i32 %43, i32 4, i32 %44)
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %114

51:                                               ; preds = %42
  %52 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %53 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BCMA_CHIP_ID_BCM4331, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %60 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BCMA_CHIP_ID_BCM43431, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58, %51
  %66 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %67 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %66, i32 0, i32 1
  %68 = call i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.TYPE_4__* %67, i32 0)
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @bcma_debug(%struct.bcma_bus* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @bcma_sprom_read(%struct.bcma_bus* %73, i32 %74, i32* %75)
  %77 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %78 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BCMA_CHIP_ID_BCM4331, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %69
  %84 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %85 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BCMA_CHIP_ID_BCM43431, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83, %69
  %91 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %92 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %91, i32 0, i32 1
  %93 = call i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.TYPE_4__* %92, i32 1)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @bcma_sprom_valid(i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %101 = call i32 @bcma_warn(%struct.bcma_bus* %100, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %103 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %104 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %103, i32 0, i32 0
  %105 = call i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus* %102, i32* %104)
  store i32 %105, i32* %6, align 4
  br label %110

106:                                              ; preds = %94
  %107 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @bcma_sprom_extract_r8(%struct.bcma_bus* %107, i32* %108)
  br label %110

110:                                              ; preds = %106, %99
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %48, %35, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @bcma_sprom_ext_available(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_sprom_onchip_available(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_sprom_onchip_offset(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus*, i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32) #1

declare dso_local i32 @bcma_sprom_read(%struct.bcma_bus*, i32, i32*) #1

declare dso_local i32 @bcma_sprom_valid(i32*) #1

declare dso_local i32 @bcma_warn(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_sprom_extract_r8(%struct.bcma_bus*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
