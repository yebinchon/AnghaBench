; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__*, %struct.b43_dma }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.b43_dma = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%u-bit DMA initialized\0A\00", align 1
@tx_ring_mcast = common dso_local global i32 0, align 4
@tx_ring_AC_VO = common dso_local global i32 0, align 4
@tx_ring_AC_VI = common dso_local global i32 0, align 4
@tx_ring_AC_BE = common dso_local global i32 0, align 4
@tx_ring_AC_BK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_dma_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  store %struct.b43_dma* %9, %struct.b43_dma** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = call i32 @supported_dma_mask(%struct.b43_wldev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dma_mask_to_engine_type(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @b43_dma_set_mask(%struct.b43_wldev* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %139

21:                                               ; preds = %1
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %27 [
  ]

27:                                               ; preds = %21
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @b43_dma_translation_in_low_word(%struct.b43_wldev* %28, i32 %29)
  %31 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %32 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %34 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %37, i32 0, i32 1, i32 %38)
  %40 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %41 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %43 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %27
  br label %116

47:                                               ; preds = %27
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %48, i32 1, i32 1, i32 %49)
  %51 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %52 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %54 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %134

58:                                               ; preds = %47
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %59, i32 2, i32 1, i32 %60)
  %62 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %63 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %65 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %130

69:                                               ; preds = %58
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %70, i32 3, i32 1, i32 %71)
  %73 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %74 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %76 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %126

80:                                               ; preds = %69
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %81, i32 4, i32 1, i32 %82)
  %84 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %85 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %87 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  br label %122

91:                                               ; preds = %80
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %92, i32 0, i32 0, i32 %93)
  %95 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %96 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %98 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  br label %118

102:                                              ; preds = %91
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %104 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 5
  %109 = zext i1 %108 to i32
  %110 = call i32 @B43_WARN_ON(i32 %109)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @b43dbg(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %102, %46
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %139

118:                                              ; preds = %101
  %119 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %120 = load i32, i32* @tx_ring_mcast, align 4
  %121 = call i32 @destroy_ring(%struct.b43_dma* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %90
  %123 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %124 = load i32, i32* @tx_ring_AC_VO, align 4
  %125 = call i32 @destroy_ring(%struct.b43_dma* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %79
  %127 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %128 = load i32, i32* @tx_ring_AC_VI, align 4
  %129 = call i32 @destroy_ring(%struct.b43_dma* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %68
  %131 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %132 = load i32, i32* @tx_ring_AC_BE, align 4
  %133 = call i32 @destroy_ring(%struct.b43_dma* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %57
  %135 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %136 = load i32, i32* @tx_ring_AC_BK, align 4
  %137 = call i32 @destroy_ring(%struct.b43_dma* %135, i32 %136)
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %134, %116, %19
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @supported_dma_mask(%struct.b43_wldev*) #1

declare dso_local i32 @dma_mask_to_engine_type(i32) #1

declare dso_local i32 @b43_dma_set_mask(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_dma_translation_in_low_word(%struct.b43_wldev*, i32) #1

declare dso_local i8* @b43_setup_dmaring(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

declare dso_local i32 @destroy_ring(%struct.b43_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
