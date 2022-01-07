; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_erase_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.alauda* }
%struct.alauda = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.alauda_sg_request = type { i32**, i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_ERASE_BLOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@alauda_complete = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @alauda_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_erase_block(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alauda_sg_request, align 8
  %6 = alloca %struct.alauda*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load %struct.alauda*, %struct.alauda** %13, align 8
  store %struct.alauda* %14, %struct.alauda** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.alauda*, %struct.alauda** %6, align 8
  %17 = getelementptr inbounds %struct.alauda, %struct.alauda* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %15, %20
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @ALAUDA_BULK_ERASE_BLOCK, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PBA_HI(i32 %27)
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds i32, i32* %26, i64 1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @PBA_ZONE(i32 %30)
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @PBA_LO(i32 %34)
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 2, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load %struct.alauda*, %struct.alauda** %6, align 8
  %40 = getelementptr inbounds %struct.alauda, %struct.alauda* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %51, %2
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %77, %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32, i32* @GFP_NOIO, align 4
  %62 = call i32* @usb_alloc_urb(i32 0, i32 %61)
  %63 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %62, i32** %67, align 8
  %68 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %60
  br label %160

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %57

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 1
  %82 = call i32 @init_completion(i32* %81)
  %83 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.alauda*, %struct.alauda** %6, align 8
  %88 = getelementptr inbounds %struct.alauda, %struct.alauda* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.alauda*, %struct.alauda** %6, align 8
  %91 = getelementptr inbounds %struct.alauda, %struct.alauda* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %94 = load i32, i32* @alauda_complete, align 4
  %95 = call i32 @usb_fill_bulk_urb(i32* %86, i32 %89, i32 %92, i32* %93, i32 9, i32 %94, i32* null)
  %96 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.alauda*, %struct.alauda** %6, align 8
  %101 = getelementptr inbounds %struct.alauda, %struct.alauda* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.alauda*, %struct.alauda** %6, align 8
  %104 = getelementptr inbounds %struct.alauda, %struct.alauda* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %107 = load i32, i32* @alauda_complete, align 4
  %108 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 1
  %109 = call i32 @usb_fill_bulk_urb(i32* %99, i32 %102, i32 %105, i32* %106, i32 2, i32 %107, i32* %108)
  %110 = load %struct.alauda*, %struct.alauda** %6, align 8
  %111 = getelementptr inbounds %struct.alauda, %struct.alauda* %110, i32 0, i32 1
  %112 = call i32 @mutex_lock(i32* %111)
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %129, %80
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @GFP_NOIO, align 4
  %124 = call i32 @usb_submit_urb(i32* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %140

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %113

132:                                              ; preds = %113
  %133 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 1
  %134 = load i32, i32* @TIMEOUT, align 4
  %135 = call i32 @wait_for_completion_timeout(i32* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @ETIMEDOUT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137, %127
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @usb_kill_urb(i32* %150)
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %141

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %132
  %157 = load %struct.alauda*, %struct.alauda** %6, align 8
  %158 = getelementptr inbounds %struct.alauda, %struct.alauda* %157, i32 0, i32 1
  %159 = call i32 @mutex_unlock(i32* %158)
  br label %160

160:                                              ; preds = %156, %75
  %161 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @usb_free_urb(i32* %164)
  %166 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %5, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @usb_free_urb(i32* %169)
  %171 = load i32, i32* %11, align 4
  ret i32 %171
}

declare dso_local i32 @PBA_HI(i32) #1

declare dso_local i32 @PBA_ZONE(i32) #1

declare dso_local i32 @PBA_LO(i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
