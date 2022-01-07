; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mc417_register_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mc417_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@MCI_REGISTER_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@ITVC_WRITE_DIR = common dso_local global i32 0, align 4
@MCI_REGISTER_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_REGISTER_MODE = common dso_local global i32 0, align 4
@MCI_MODE_REGISTER_READ = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE0 = common dso_local global i32 0, align 4
@ITVC_READ_DIR = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, i32, i32*)* @mc417_register_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc417_register_read(%struct.cx231xx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @MCI_REGISTER_ADDRESS_BYTE0, align 4
  %11 = or i32 130, %10
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = shl i32 %13, 8
  %15 = or i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 10
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %19 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @setITVCReg(%struct.cx231xx* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 5120
  store i32 %23, i32* %7, align 4
  %24 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %25 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @setITVCReg(%struct.cx231xx* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @MCI_REGISTER_ADDRESS_BYTE1, align 4
  %29 = or i32 130, %28
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 65280
  %32 = or i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 10
  store i32 %34, i32* %7, align 4
  %35 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %36 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @setITVCReg(%struct.cx231xx* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 5120
  store i32 %40, i32* %7, align 4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %42 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @setITVCReg(%struct.cx231xx* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @MCI_REGISTER_MODE, align 4
  %46 = or i32 130, %45
  %47 = load i32, i32* @MCI_MODE_REGISTER_READ, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 10
  store i32 %50, i32* %7, align 4
  %51 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %52 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @setITVCReg(%struct.cx231xx* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 5120
  store i32 %56, i32* %7, align 4
  %57 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %58 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @setITVCReg(%struct.cx231xx* %57, i32 %58, i32 %59)
  %61 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %62 = call i32 @waitForMciComplete(%struct.cx231xx* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @MCI_REGISTER_DATA_BYTE0, align 4
  %64 = or i32 130, %63
  %65 = shl i32 %64, 10
  store i32 %65, i32* %7, align 4
  %66 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %67 = load i32, i32* @ITVC_READ_DIR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @setITVCReg(%struct.cx231xx* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @MCI_REGISTER_DATA_BYTE0, align 4
  %71 = or i32 129, %70
  %72 = shl i32 %71, 10
  store i32 %72, i32* %7, align 4
  %73 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %74 = load i32, i32* @ITVC_READ_DIR, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @setITVCReg(%struct.cx231xx* %73, i32 %74, i32 %75)
  %77 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %78 = load i32, i32* @ITVC_READ_DIR, align 4
  %79 = call i32 @getITVCReg(%struct.cx231xx* %77, i32 %78, i32* %7)
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 66846720
  %82 = ashr i32 %81, 18
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %86 = load i32, i32* @ITVC_READ_DIR, align 4
  %87 = call i32 @setITVCReg(%struct.cx231xx* %85, i32 %86, i32 138240)
  %88 = load i32, i32* @MCI_REGISTER_DATA_BYTE1, align 4
  %89 = or i32 130, %88
  %90 = shl i32 %89, 10
  store i32 %90, i32* %7, align 4
  %91 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %92 = load i32, i32* @ITVC_READ_DIR, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @setITVCReg(%struct.cx231xx* %91, i32 %92, i32 %93)
  %95 = load i32, i32* @MCI_REGISTER_DATA_BYTE1, align 4
  %96 = or i32 129, %95
  %97 = shl i32 %96, 10
  store i32 %97, i32* %7, align 4
  %98 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %99 = load i32, i32* @ITVC_READ_DIR, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @setITVCReg(%struct.cx231xx* %98, i32 %99, i32 %100)
  %102 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %103 = load i32, i32* @ITVC_READ_DIR, align 4
  %104 = call i32 @getITVCReg(%struct.cx231xx* %102, i32 %103, i32* %7)
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 66846720
  %107 = ashr i32 %106, 10
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %111 = load i32, i32* @ITVC_READ_DIR, align 4
  %112 = call i32 @setITVCReg(%struct.cx231xx* %110, i32 %111, i32 138240)
  %113 = load i32, i32* @MCI_REGISTER_DATA_BYTE2, align 4
  %114 = or i32 130, %113
  %115 = shl i32 %114, 10
  store i32 %115, i32* %7, align 4
  %116 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %117 = load i32, i32* @ITVC_READ_DIR, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @setITVCReg(%struct.cx231xx* %116, i32 %117, i32 %118)
  %120 = load i32, i32* @MCI_REGISTER_DATA_BYTE2, align 4
  %121 = or i32 129, %120
  %122 = shl i32 %121, 10
  store i32 %122, i32* %7, align 4
  %123 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %124 = load i32, i32* @ITVC_READ_DIR, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @setITVCReg(%struct.cx231xx* %123, i32 %124, i32 %125)
  %127 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %128 = load i32, i32* @ITVC_READ_DIR, align 4
  %129 = call i32 @getITVCReg(%struct.cx231xx* %127, i32 %128, i32* %7)
  %130 = load i32, i32* %7, align 4
  %131 = and i32 %130, 66846720
  %132 = ashr i32 %131, 2
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %136 = load i32, i32* @ITVC_READ_DIR, align 4
  %137 = call i32 @setITVCReg(%struct.cx231xx* %135, i32 %136, i32 138240)
  %138 = load i32, i32* @MCI_REGISTER_DATA_BYTE3, align 4
  %139 = or i32 130, %138
  %140 = shl i32 %139, 10
  store i32 %140, i32* %7, align 4
  %141 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %142 = load i32, i32* @ITVC_READ_DIR, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @setITVCReg(%struct.cx231xx* %141, i32 %142, i32 %143)
  %145 = load i32, i32* @MCI_REGISTER_DATA_BYTE3, align 4
  %146 = or i32 129, %145
  %147 = shl i32 %146, 10
  store i32 %147, i32* %7, align 4
  %148 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %149 = load i32, i32* @ITVC_READ_DIR, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @setITVCReg(%struct.cx231xx* %148, i32 %149, i32 %150)
  %152 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %153 = load i32, i32* @ITVC_READ_DIR, align 4
  %154 = call i32 @getITVCReg(%struct.cx231xx* %152, i32 %153, i32* %7)
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 66846720
  %157 = shl i32 %156, 6
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  %160 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %161 = load i32, i32* @ITVC_READ_DIR, align 4
  %162 = call i32 @setITVCReg(%struct.cx231xx* %160, i32 %161, i32 138240)
  %163 = load i32, i32* %8, align 4
  %164 = load i32*, i32** %6, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  ret i32 %165
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
