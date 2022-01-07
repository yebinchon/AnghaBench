; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mciWriteMemoryToGPIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mciWriteMemoryToGPIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@MCI_MEMORY_DATA_BYTE0 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE3 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE2 = common dso_local global i32 0, align 4
@MCI_MODE_MEMORY_WRITE = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx231xx*, i32, i32, i32*)* @mciWriteMemoryToGPIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mciWriteMemoryToGPIO(%struct.cx231xx* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %12 = or i32 130, %11
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 255
  %15 = shl i32 %14, 8
  %16 = or i32 %12, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 %17, 10
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, 5120
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %30 = or i32 130, %29
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 65280
  %33 = or i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 10
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, 5120
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %47 = or i32 130, %46
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 16711680
  %50 = ashr i32 %49, 8
  %51 = or i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 10
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, 5120
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  %64 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %65 = or i32 130, %64
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, -16777216
  %68 = lshr i32 %67, 16
  %69 = or i32 %65, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 10
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, 5120
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %8, align 8
  %82 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE2, align 4
  %83 = or i32 130, %82
  %84 = load i32, i32* @MCI_MODE_MEMORY_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 4128768
  %88 = ashr i32 %87, 8
  %89 = or i32 %85, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 10
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, 5120
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  %102 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE1, align 4
  %103 = or i32 130, %102
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 65280
  %106 = or i32 %103, %105
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %107, 10
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, 5120
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %8, align 8
  %119 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE0, align 4
  %120 = or i32 130, %119
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, 255
  %123 = shl i32 %122, 8
  %124 = or i32 %120, %123
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %125, 10
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32*, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, 5120
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32*, i32** %8, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %144, %4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 6
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32*, i32** %8, align 8
  store i32 -1, i32* %141, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %8, align 8
  br label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %137

147:                                              ; preds = %137
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
