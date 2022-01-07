; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_write_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.alauda* }
%struct.alauda = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.alauda_sg_request = type { i32**, i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_WRITE_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@alauda_complete = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i8*, i8*)* @alauda_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_write_page(%struct.mtd_info* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alauda_sg_request, align 8
  %10 = alloca %struct.alauda*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [9 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 1
  %18 = load %struct.alauda*, %struct.alauda** %17, align 8
  store %struct.alauda* %18, %struct.alauda** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.alauda*, %struct.alauda** %10, align 8
  %21 = getelementptr inbounds %struct.alauda, %struct.alauda* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %19, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.alauda*, %struct.alauda** %10, align 8
  %28 = getelementptr inbounds %struct.alauda, %struct.alauda* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %26, %31
  %33 = load %struct.alauda*, %struct.alauda** %10, align 8
  %34 = getelementptr inbounds %struct.alauda, %struct.alauda* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 0
  %38 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @ALAUDA_BULK_WRITE_PAGE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @PBA_HI(i32 %42)
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds i32, i32* %41, i64 1
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @PBA_ZONE(i32 %45)
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @PBA_LO(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %48, align 4
  %53 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 32, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load %struct.alauda*, %struct.alauda** %10, align 8
  %57 = getelementptr inbounds %struct.alauda, %struct.alauda* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %55, align 4
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %68, %4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %59

71:                                               ; preds = %59
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %94, %71
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load i32, i32* @GFP_NOIO, align 4
  %79 = call i32* @usb_alloc_urb(i32 0, i32 %78)
  %80 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %79, i32** %84, align 8
  %85 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %77
  br label %194

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %74

97:                                               ; preds = %74
  %98 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 1
  %99 = call i32 @init_completion(i32* %98)
  %100 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.alauda*, %struct.alauda** %10, align 8
  %105 = getelementptr inbounds %struct.alauda, %struct.alauda* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.alauda*, %struct.alauda** %10, align 8
  %108 = getelementptr inbounds %struct.alauda, %struct.alauda* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 0
  %111 = bitcast i32* %110 to i8*
  %112 = load i32, i32* @alauda_complete, align 4
  %113 = call i32 @usb_fill_bulk_urb(i32* %103, i32 %106, i32 %109, i8* %111, i32 9, i32 %112, i32* null)
  %114 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.alauda*, %struct.alauda** %10, align 8
  %119 = getelementptr inbounds %struct.alauda, %struct.alauda* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.alauda*, %struct.alauda** %10, align 8
  %122 = getelementptr inbounds %struct.alauda, %struct.alauda* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %126 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @alauda_complete, align 4
  %129 = call i32 @usb_fill_bulk_urb(i32* %117, i32 %120, i32 %123, i8* %124, i32 %127, i32 %128, i32* null)
  %130 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.alauda*, %struct.alauda** %10, align 8
  %135 = getelementptr inbounds %struct.alauda, %struct.alauda* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.alauda*, %struct.alauda** %10, align 8
  %138 = getelementptr inbounds %struct.alauda, %struct.alauda* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* @alauda_complete, align 4
  %142 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 1
  %143 = call i32 @usb_fill_bulk_urb(i32* %133, i32 %136, i32 %139, i8* %140, i32 16, i32 %141, i32* %142)
  %144 = load %struct.alauda*, %struct.alauda** %10, align 8
  %145 = getelementptr inbounds %struct.alauda, %struct.alauda* %144, i32 0, i32 2
  %146 = call i32 @mutex_lock(i32* %145)
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %163, %97
  %148 = load i32, i32* %14, align 4
  %149 = icmp slt i32 %148, 3
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @GFP_NOIO, align 4
  %158 = call i32 @usb_submit_urb(i32* %156, i32 %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %174

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %147

166:                                              ; preds = %147
  %167 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 1
  %168 = load i32, i32* @TIMEOUT, align 4
  %169 = call i32 @wait_for_completion_timeout(i32* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @ETIMEDOUT, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %171, %161
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %186, %174
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @usb_kill_urb(i32* %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %175

189:                                              ; preds = %175
  br label %190

190:                                              ; preds = %189, %166
  %191 = load %struct.alauda*, %struct.alauda** %10, align 8
  %192 = getelementptr inbounds %struct.alauda, %struct.alauda* %191, i32 0, i32 2
  %193 = call i32 @mutex_unlock(i32* %192)
  br label %194

194:                                              ; preds = %190, %92
  %195 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %196 = load i32**, i32*** %195, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 0
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @usb_free_urb(i32* %198)
  %200 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @usb_free_urb(i32* %203)
  %205 = getelementptr inbounds %struct.alauda_sg_request, %struct.alauda_sg_request* %9, i32 0, i32 0
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 2
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @usb_free_urb(i32* %208)
  %210 = load i32, i32* %15, align 4
  ret i32 %210
}

declare dso_local i32 @PBA_HI(i32) #1

declare dso_local i32 @PBA_ZONE(i32) #1

declare dso_local i32 @PBA_LO(i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i8*, i32, i32, i32*) #1

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
