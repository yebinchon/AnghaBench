; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_risc_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_risc_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@NO_SYNC_LINE = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4
@RISC_WRITE = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32)* @cx88_risc_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx88_risc_field(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @NO_SYNC_LINE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load i32, i32* @RISC_RESYNC, align 4
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %24, %8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %33, %struct.scatterlist** %17, align 8
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %184, %32
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %187

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %45 = call i32 @sg_dma_len(%struct.scatterlist* %44)
  %46 = icmp uge i32 %43, %45
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %51 = call i32 @sg_dma_len(%struct.scatterlist* %50)
  %52 = load i32, i32* %11, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 1
  store %struct.scatterlist* %55, %struct.scatterlist** %17, align 8
  br label %39

56:                                               ; preds = %47
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* %18, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %16, align 4
  %65 = urem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @RISC_SOL, align 4
  %69 = load i32, i32* @RISC_IRQ1, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RISC_CNT_INC, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %20, align 4
  br label %75

73:                                               ; preds = %62, %59, %56
  %74 = load i32, i32* @RISC_SOL, align 4
  store i32 %74, i32* %20, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %78 = call i32 @sg_dma_len(%struct.scatterlist* %77)
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %78, %79
  %81 = icmp ule i32 %76, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %75
  %83 = load i32, i32* @RISC_WRITE, align 4
  %84 = load i32, i32* %20, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RISC_EOL, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %87, %88
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %95 = call i32 @sg_dma_address(%struct.scatterlist* %94)
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %95, %96
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %180

105:                                              ; preds = %75
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* @RISC_WRITE, align 4
  %108 = load i32, i32* %20, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %111 = call i32 @sg_dma_len(%struct.scatterlist* %110)
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %111, %112
  %114 = or i32 %109, %113
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  %119 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %120 = call i32 @sg_dma_address(%struct.scatterlist* %119)
  %121 = load i32, i32* %11, align 4
  %122 = add i32 %120, %121
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %127 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %128 = call i32 @sg_dma_len(%struct.scatterlist* %127)
  %129 = load i32, i32* %11, align 4
  %130 = sub i32 %128, %129
  %131 = load i32, i32* %19, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %19, align 4
  store i32 0, i32* %11, align 4
  %133 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %134 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %133, i32 1
  store %struct.scatterlist* %134, %struct.scatterlist** %17, align 8
  br label %135

135:                                              ; preds = %140, %105
  %136 = load i32, i32* %19, align 4
  %137 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %138 = call i32 @sg_dma_len(%struct.scatterlist* %137)
  %139 = icmp ugt i32 %136, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load i32, i32* @RISC_WRITE, align 4
  %142 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %143 = call i32 @sg_dma_len(%struct.scatterlist* %142)
  %144 = or i32 %141, %143
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %9, align 8
  store i32 %146, i32* %147, align 4
  %149 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %150 = call i32 @sg_dma_address(%struct.scatterlist* %149)
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  %155 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %156 = call i32 @sg_dma_len(%struct.scatterlist* %155)
  %157 = load i32, i32* %19, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %19, align 4
  %159 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %160 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %159, i32 1
  store %struct.scatterlist* %160, %struct.scatterlist** %17, align 8
  br label %135

161:                                              ; preds = %135
  %162 = load i32, i32* @RISC_WRITE, align 4
  %163 = load i32, i32* @RISC_EOL, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %19, align 4
  %166 = or i32 %164, %165
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  %171 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %172 = call i32 @sg_dma_address(%struct.scatterlist* %171)
  %173 = call i8* @cpu_to_le32(i32 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load i32*, i32** %9, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %9, align 8
  store i32 %174, i32* %175, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, %177
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %161, %82
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %18, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %34

187:                                              ; preds = %34
  %188 = load i32*, i32** %9, align 8
  ret i32* %188
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
