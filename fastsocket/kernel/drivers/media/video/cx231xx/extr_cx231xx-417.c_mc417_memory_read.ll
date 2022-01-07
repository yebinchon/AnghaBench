; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mc417_memory_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mc417_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@MCI_MEMORY_ADDRESS_BYTE2 = common dso_local global i32 0, align 4
@MCI_MODE_MEMORY_READ = common dso_local global i32 0, align 4
@ITVC_WRITE_DIR = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE3 = common dso_local global i32 0, align 4
@ITVC_READ_DIR = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, i32, i32*)* @mc417_memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc417_memory_read(%struct.cx231xx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE2, align 4
  %12 = or i32 130, %11
  %13 = load i32, i32* @MCI_MODE_MEMORY_READ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 4128768
  %17 = ashr i32 %16, 8
  %18 = or i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 %19, 10
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %22 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @setITVCReg(%struct.cx231xx* %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %176

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, 5120
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %33 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @setITVCReg(%struct.cx231xx* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE1, align 4
  %37 = or i32 130, %36
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 65280
  %40 = or i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 10
  store i32 %42, i32* %8, align 4
  %43 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %44 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @setITVCReg(%struct.cx231xx* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, 5120
  store i32 %48, i32* %8, align 4
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @setITVCReg(%struct.cx231xx* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE0, align 4
  %54 = or i32 130, %53
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 8
  %58 = or i32 %54, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 10
  store i32 %60, i32* %8, align 4
  %61 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %62 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @setITVCReg(%struct.cx231xx* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, 5120
  store i32 %66, i32* %8, align 4
  %67 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %68 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @setITVCReg(%struct.cx231xx* %67, i32 %68, i32 %69)
  %71 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %72 = call i32 @waitForMciComplete(%struct.cx231xx* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %74 = or i32 130, %73
  %75 = shl i32 %74, 10
  store i32 %75, i32* %8, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %77 = load i32, i32* @ITVC_READ_DIR, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @setITVCReg(%struct.cx231xx* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %81 = or i32 129, %80
  %82 = shl i32 %81, 10
  store i32 %82, i32* %8, align 4
  %83 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %84 = load i32, i32* @ITVC_READ_DIR, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @setITVCReg(%struct.cx231xx* %83, i32 %84, i32 %85)
  %87 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %88 = load i32, i32* @ITVC_READ_DIR, align 4
  %89 = call i32 @getITVCReg(%struct.cx231xx* %87, i32 %88, i32* %8)
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 66846720
  %92 = shl i32 %91, 6
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %96 = load i32, i32* @ITVC_READ_DIR, align 4
  %97 = call i32 @setITVCReg(%struct.cx231xx* %95, i32 %96, i32 138240)
  %98 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %99 = or i32 130, %98
  %100 = shl i32 %99, 10
  store i32 %100, i32* %8, align 4
  %101 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %102 = load i32, i32* @ITVC_READ_DIR, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @setITVCReg(%struct.cx231xx* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %106 = or i32 129, %105
  %107 = shl i32 %106, 10
  store i32 %107, i32* %8, align 4
  %108 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %109 = load i32, i32* @ITVC_READ_DIR, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @setITVCReg(%struct.cx231xx* %108, i32 %109, i32 %110)
  %112 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %113 = load i32, i32* @ITVC_READ_DIR, align 4
  %114 = call i32 @getITVCReg(%struct.cx231xx* %112, i32 %113, i32* %8)
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 66846720
  %117 = ashr i32 %116, 2
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %121 = load i32, i32* @ITVC_READ_DIR, align 4
  %122 = call i32 @setITVCReg(%struct.cx231xx* %120, i32 %121, i32 138240)
  %123 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %124 = or i32 130, %123
  %125 = shl i32 %124, 10
  store i32 %125, i32* %8, align 4
  %126 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %127 = load i32, i32* @ITVC_READ_DIR, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @setITVCReg(%struct.cx231xx* %126, i32 %127, i32 %128)
  %130 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %131 = or i32 129, %130
  %132 = shl i32 %131, 10
  store i32 %132, i32* %8, align 4
  %133 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %134 = load i32, i32* @ITVC_READ_DIR, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @setITVCReg(%struct.cx231xx* %133, i32 %134, i32 %135)
  %137 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %138 = load i32, i32* @ITVC_READ_DIR, align 4
  %139 = call i32 @getITVCReg(%struct.cx231xx* %137, i32 %138, i32* %8)
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 66846720
  %142 = ashr i32 %141, 10
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %146 = load i32, i32* @ITVC_READ_DIR, align 4
  %147 = call i32 @setITVCReg(%struct.cx231xx* %145, i32 %146, i32 138240)
  %148 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %149 = or i32 130, %148
  %150 = shl i32 %149, 10
  store i32 %150, i32* %8, align 4
  %151 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %152 = load i32, i32* @ITVC_READ_DIR, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @setITVCReg(%struct.cx231xx* %151, i32 %152, i32 %153)
  %155 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %156 = or i32 129, %155
  %157 = shl i32 %156, 10
  store i32 %157, i32* %8, align 4
  %158 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %159 = load i32, i32* @ITVC_READ_DIR, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @setITVCReg(%struct.cx231xx* %158, i32 %159, i32 %160)
  %162 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %163 = load i32, i32* @ITVC_READ_DIR, align 4
  %164 = call i32 @getITVCReg(%struct.cx231xx* %162, i32 %163, i32* %8)
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, 66846720
  %167 = ashr i32 %166, 18
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %171 = load i32, i32* @ITVC_READ_DIR, align 4
  %172 = call i32 @setITVCReg(%struct.cx231xx* %170, i32 %171, i32 138240)
  %173 = load i32, i32* %9, align 4
  %174 = load i32*, i32** %7, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %29, %27
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @setITVCReg(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @waitForMciComplete(%struct.cx231xx*) #1

declare dso_local i32 @getITVCReg(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
