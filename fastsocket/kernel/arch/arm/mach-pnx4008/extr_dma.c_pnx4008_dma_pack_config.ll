; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_pack_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_pack_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx4008_dma_ch_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_dma_pack_config(%struct.pnx4008_dma_ch_config* %0, i64* %1) #0 {
  %3 = alloca %struct.pnx4008_dma_ch_config*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.pnx4008_dma_ch_config* %0, %struct.pnx4008_dma_ch_config** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64*, i64** %4, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %10 = icmp ne %struct.pnx4008_dma_ch_config* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %157

14:                                               ; preds = %8
  %15 = load i64*, i64** %4, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %17 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %24 [
    i32 0, label %19
    i32 1, label %20
  ]

19:                                               ; preds = %14
  br label %27

20:                                               ; preds = %14
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %22, 262144
  store i64 %23, i64* %21, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %157

27:                                               ; preds = %20, %19
  %28 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %29 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %36 [
    i32 0, label %31
    i32 1, label %32
  ]

31:                                               ; preds = %27
  br label %39

32:                                               ; preds = %27
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = or i64 %34, 131072
  store i64 %35, i64* %33, align 8
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %157

39:                                               ; preds = %32, %31
  %40 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %41 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %48 [
    i32 0, label %43
    i32 1, label %44
  ]

43:                                               ; preds = %39
  br label %51

44:                                               ; preds = %39
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, 65536
  store i64 %47, i64* %45, align 8
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %157

51:                                               ; preds = %44, %43
  %52 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %53 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %60 [
    i32 0, label %55
    i32 1, label %56
  ]

55:                                               ; preds = %51
  br label %63

56:                                               ; preds = %51
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, 32768
  store i64 %59, i64* %57, align 8
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %157

63:                                               ; preds = %56, %55
  %64 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %65 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %72 [
    i32 0, label %67
    i32 1, label %68
  ]

67:                                               ; preds = %63
  br label %75

68:                                               ; preds = %63
  %69 = load i64*, i64** %4, align 8
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, 16384
  store i64 %71, i64* %69, align 8
  br label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %157

75:                                               ; preds = %68, %67
  %76 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %77 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %129 [
    i32 135, label %79
    i32 134, label %83
    i32 132, label %90
    i32 130, label %97
    i32 129, label %104
    i32 133, label %111
    i32 131, label %118
    i32 128, label %125
  ]

79:                                               ; preds = %75
  %80 = load i64*, i64** %4, align 8
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, -14337
  store i64 %82, i64* %80, align 8
  br label %132

83:                                               ; preds = %75
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %85, -14337
  store i64 %86, i64* %84, align 8
  %87 = load i64*, i64** %4, align 8
  %88 = load i64, i64* %87, align 8
  %89 = or i64 %88, 2048
  store i64 %89, i64* %87, align 8
  br label %132

90:                                               ; preds = %75
  %91 = load i64*, i64** %4, align 8
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, -14337
  store i64 %93, i64* %91, align 8
  %94 = load i64*, i64** %4, align 8
  %95 = load i64, i64* %94, align 8
  %96 = or i64 %95, 4096
  store i64 %96, i64* %94, align 8
  br label %132

97:                                               ; preds = %75
  %98 = load i64*, i64** %4, align 8
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, -14337
  store i64 %100, i64* %98, align 8
  %101 = load i64*, i64** %4, align 8
  %102 = load i64, i64* %101, align 8
  %103 = or i64 %102, 6144
  store i64 %103, i64* %101, align 8
  br label %132

104:                                              ; preds = %75
  %105 = load i64*, i64** %4, align 8
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, -14337
  store i64 %107, i64* %105, align 8
  %108 = load i64*, i64** %4, align 8
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, 8192
  store i64 %110, i64* %108, align 8
  br label %132

111:                                              ; preds = %75
  %112 = load i64*, i64** %4, align 8
  %113 = load i64, i64* %112, align 8
  %114 = and i64 %113, -14337
  store i64 %114, i64* %112, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, 10240
  store i64 %117, i64* %115, align 8
  br label %132

118:                                              ; preds = %75
  %119 = load i64*, i64** %4, align 8
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, -14337
  store i64 %121, i64* %119, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = load i64, i64* %122, align 8
  %124 = or i64 %123, 12288
  store i64 %124, i64* %122, align 8
  br label %132

125:                                              ; preds = %75
  %126 = load i64*, i64** %4, align 8
  %127 = load i64, i64* %126, align 8
  %128 = or i64 %127, 14336
  store i64 %128, i64* %126, align 8
  br label %132

129:                                              ; preds = %75
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %157

132:                                              ; preds = %125, %118, %111, %104, %97, %90, %83, %79
  %133 = load i64*, i64** %4, align 8
  %134 = load i64, i64* %133, align 8
  %135 = and i64 %134, -1985
  store i64 %135, i64* %133, align 8
  %136 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %137 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 31
  %140 = shl i32 %139, 6
  %141 = sext i32 %140 to i64
  %142 = load i64*, i64** %4, align 8
  %143 = load i64, i64* %142, align 8
  %144 = or i64 %143, %141
  store i64 %144, i64* %142, align 8
  %145 = load i64*, i64** %4, align 8
  %146 = load i64, i64* %145, align 8
  %147 = and i64 %146, -63
  store i64 %147, i64* %145, align 8
  %148 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %3, align 8
  %149 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 31
  %152 = shl i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = load i64*, i64** %4, align 8
  %155 = load i64, i64* %154, align 8
  %156 = or i64 %155, %153
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %132, %129, %72, %60, %48, %36, %24, %11
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
