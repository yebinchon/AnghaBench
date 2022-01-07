; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_destroy_ha_caches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_destroy_ha_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32*, %struct.TYPE_8__, %struct.TYPE_6__, %struct.asd_phy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32*, i32*, i32*, i64, i64 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.asd_phy = type { i32* }

@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_destroy_ha_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_destroy_ha_caches(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_phy*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %6 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %11, i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %19 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %24, i32* %28)
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %32 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %38 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %44 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %62, %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ASD_MAX_PHYS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %52 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %51, i32 0, i32 3
  %53 = load %struct.asd_phy*, %struct.asd_phy** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %53, i64 %55
  store %struct.asd_phy* %56, %struct.asd_phy** %4, align 8
  %57 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %58 = load %struct.asd_phy*, %struct.asd_phy** %4, align 8
  %59 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %57, i32* %60)
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %67 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %73 = call i32 @asd_free_escbs(%struct.asd_ha_struct* %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %76 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %82 = call i32 @asd_free_edbs(%struct.asd_ha_struct* %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %85 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %92 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %98 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %90, %83
  %102 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %103 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %109 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %114 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %119 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  store i32* null, i32** %120, align 8
  %121 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %122 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %107, %101
  %125 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %126 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %132 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %133 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %131, i32* %135)
  %137 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %138 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  %140 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %141 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %130, %124
  %144 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %145 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %169

150:                                              ; preds = %143
  %151 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %152 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %155 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %160 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dma_pool_free(i32* %153, i32* %158, i32 %163)
  %165 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %166 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %150, %143
  %170 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %171 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @dma_pool_destroy(i32* %172)
  %174 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %175 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %174, i32 0, i32 0
  store i32* null, i32** %175, align 8
  ret void
}

declare dso_local i32 @asd_free_coherent(%struct.asd_ha_struct*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @asd_free_escbs(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_free_edbs(%struct.asd_ha_struct*) #1

declare dso_local i32 @dma_pool_free(i32*, i32*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
