; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gtt_stolen_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gtt_stolen_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@intel_gtt_stolen_size.ddt = internal constant [4 x i32] [i32 0, i32 16, i32 32, i32 64], align 16
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I830_GMCH_CTRL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82830_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82845G_HB = common dso_local global i64 0, align 8
@I830_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@I830_RDRAM_CHANNEL_TYPE = common dso_local global i64 0, align 8
@I855_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"detected %dK %s memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stolen\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"no pre-allocated video memory detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_gtt_stolen_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gtt_stolen_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @INTEL_GTT_GEN, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %102

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %11 = load i32, i32* @I830_GMCH_CTRL, align 4
  %12 = call i32 @pci_read_config_word(%struct.TYPE_3__* %10, i32 %11, i32* %2)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_DEVICE_ID_INTEL_82830_HB, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_DEVICE_ID_INTEL_82845G_HB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18, %9
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @I830_GMCH_GMS_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %48 [
    i32 140, label %28
    i32 141, label %30
    i32 139, label %32
    i32 142, label %34
  ]

28:                                               ; preds = %24
  %29 = call i32 @KB(i32 512)
  store i32 %29, i32* %5, align 4
  br label %49

30:                                               ; preds = %24
  %31 = call i32 @MB(i32 1)
  store i32 %31, i32* %5, align 4
  br label %49

32:                                               ; preds = %24
  %33 = call i32 @MB(i32 8)
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1), align 8
  %36 = load i64, i64* @I830_RDRAM_CHANNEL_TYPE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readb(i64 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @I830_RDRAM_ND(i32 %39)
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @I830_RDRAM_DDT(i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* @intel_gtt_stolen_size.ddt, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MB(i32 %45)
  %47 = mul i32 %41, %46
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %49

48:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %34, %32, %30, %28
  br label %82

50:                                               ; preds = %18
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @I855_GMCH_GMS_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %80 [
    i32 137, label %54
    i32 135, label %56
    i32 134, label %58
    i32 138, label %60
    i32 136, label %62
    i32 133, label %64
    i32 132, label %66
    i32 144, label %68
    i32 143, label %70
    i32 128, label %72
    i32 131, label %74
    i32 130, label %76
    i32 129, label %78
  ]

54:                                               ; preds = %50
  %55 = call i32 @MB(i32 1)
  store i32 %55, i32* %5, align 4
  br label %81

56:                                               ; preds = %50
  %57 = call i32 @MB(i32 4)
  store i32 %57, i32* %5, align 4
  br label %81

58:                                               ; preds = %50
  %59 = call i32 @MB(i32 8)
  store i32 %59, i32* %5, align 4
  br label %81

60:                                               ; preds = %50
  %61 = call i32 @MB(i32 16)
  store i32 %61, i32* %5, align 4
  br label %81

62:                                               ; preds = %50
  %63 = call i32 @MB(i32 32)
  store i32 %63, i32* %5, align 4
  br label %81

64:                                               ; preds = %50
  %65 = call i32 @MB(i32 48)
  store i32 %65, i32* %5, align 4
  br label %81

66:                                               ; preds = %50
  %67 = call i32 @MB(i32 64)
  store i32 %67, i32* %5, align 4
  br label %81

68:                                               ; preds = %50
  %69 = call i32 @MB(i32 128)
  store i32 %69, i32* %5, align 4
  br label %81

70:                                               ; preds = %50
  %71 = call i32 @MB(i32 256)
  store i32 %71, i32* %5, align 4
  br label %81

72:                                               ; preds = %50
  %73 = call i32 @MB(i32 96)
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %50
  %75 = call i32 @MB(i32 160)
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %50
  %77 = call i32 @MB(i32 224)
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %50
  %79 = call i32 @MB(i32 352)
  store i32 %79, i32* %5, align 4
  br label %81

80:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54
  br label %82

82:                                               ; preds = %81, %49
  %83 = load i32, i32* %5, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @KB(i32 1)
  %90 = udiv i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %95 = call i32 (i32*, i8*, ...) @dev_info(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %90, i8* %94)
  br label %100

96:                                               ; preds = %82
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = call i32 (i32*, i8*, ...) @dev_info(i32* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %85
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %1, align 4
  br label %102

102:                                              ; preds = %100, %8
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @KB(i32) #1

declare dso_local i32 @MB(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @I830_RDRAM_ND(i32) #1

declare dso_local i64 @I830_RDRAM_DDT(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
