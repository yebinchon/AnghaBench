; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_make_gl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_make_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_gather_list = type { i32, i32, i32, %struct.page**, i32* }
%struct.page = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.pci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DDP_THRESHOLD = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"xfer %u < threshold %u, no ddp.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"xfer %u, %u pages, OOM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"xfer %u, sgl %u, gl max %u.\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"page %d/%u, %u + %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"page %d/%u, offset %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxgbi_gather_list* (i32, %struct.scatterlist*, i32, %struct.pci_dev*, i32)* @ddp_make_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxgbi_gather_list* @ddp_make_gl(i32 %0, %struct.scatterlist* %1, i32 %2, %struct.pci_dev* %3, i32 %4) #0 {
  %6 = alloca %struct.cxgbi_gather_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cxgbi_gather_list*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.pci_dev* %3, %struct.pci_dev** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %21, %struct.scatterlist** %13, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %23 = call %struct.page* @sg_page(%struct.scatterlist* %22)
  store %struct.page* %23, %struct.page** %14, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %28 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %16, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = add i32 %32, %33
  %35 = sub i32 %34, 1
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = lshr i32 %35, %36
  store i32 %37, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DDP_THRESHOLD, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %5
  %42 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @DDP_THRESHOLD, align 4
  %46 = call i32 (i32, i8*, i32, i32, ...) @log_debug(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  store %struct.cxgbi_gather_list* null, %struct.cxgbi_gather_list** %6, align 8
  br label %206

47:                                               ; preds = %5
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = mul i64 %49, 12
  %51 = add i64 32, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.cxgbi_gather_list* @kzalloc(i32 %52, i32 %53)
  store %struct.cxgbi_gather_list* %54, %struct.cxgbi_gather_list** %12, align 8
  %55 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %56 = icmp ne %struct.cxgbi_gather_list* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 (i32, i8*, i32, i32, ...) @log_debug(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  store %struct.cxgbi_gather_list* null, %struct.cxgbi_gather_list** %6, align 8
  br label %206

63:                                               ; preds = %47
  %64 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 (i32, i8*, i32, i32, ...) @log_debug(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %71 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = bitcast i32* %75 to %struct.page**
  %77 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %78 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %77, i32 0, i32 3
  store %struct.page** %76, %struct.page*** %78, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %81 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %84 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %87 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.page*, %struct.page** %14, align 8
  %89 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %90 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %89, i32 0, i32 3
  %91 = load %struct.page**, %struct.page*** %90, align 8
  %92 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 0
  store %struct.page* %88, %struct.page** %92, align 8
  store i32 1, i32* %18, align 4
  %93 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %94 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %93)
  store %struct.scatterlist* %94, %struct.scatterlist** %13, align 8
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %186, %63
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %191

99:                                               ; preds = %95
  %100 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %101 = call %struct.page* @sg_page(%struct.scatterlist* %100)
  store %struct.page* %101, %struct.page** %20, align 8
  %102 = load %struct.page*, %struct.page** %14, align 8
  %103 = load %struct.page*, %struct.page** %20, align 8
  %104 = icmp eq %struct.page* %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %107 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = add i32 %109, %110
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %115 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %15, align 4
  br label %185

119:                                              ; preds = %105, %99
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub i32 %127, 1
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = add i32 %131, %132
  %134 = load i32, i32* @PAGE_MASK, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %130, %122
  %139 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 (i32, i8*, i32, i32, ...) @log_debug(i32 %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %142, i32 %143, i32 %144)
  br label %203

146:                                              ; preds = %130, %125
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %151 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %146
  %155 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %156 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154, %146
  %160 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %161 = shl i32 1, %160
  %162 = load i32, i32* %19, align 4
  %163 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %164 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %167 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, i32, i32, ...) @log_debug(i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %165, i32 %168)
  br label %203

170:                                              ; preds = %154
  %171 = load %struct.page*, %struct.page** %20, align 8
  %172 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %173 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %172, i32 0, i32 3
  %174 = load %struct.page**, %struct.page*** %173, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.page*, %struct.page** %174, i64 %176
  store %struct.page* %171, %struct.page** %177, align 8
  %178 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %179 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %15, align 4
  %181 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %182 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %16, align 4
  %184 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %184, %struct.page** %14, align 8
  br label %185

185:                                              ; preds = %170, %113
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %18, align 4
  %189 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %190 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %189)
  store %struct.scatterlist* %190, %struct.scatterlist** %13, align 8
  br label %95

191:                                              ; preds = %95
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %19, align 4
  %194 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %195 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %197 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %198 = call i64 @ddp_gl_map(%struct.pci_dev* %196, %struct.cxgbi_gather_list* %197)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %203

201:                                              ; preds = %191
  %202 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  store %struct.cxgbi_gather_list* %202, %struct.cxgbi_gather_list** %6, align 8
  br label %206

203:                                              ; preds = %200, %159, %138
  %204 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %205 = call i32 @kfree(%struct.cxgbi_gather_list* %204)
  store %struct.cxgbi_gather_list* null, %struct.cxgbi_gather_list** %6, align 8
  br label %206

206:                                              ; preds = %203, %201, %57, %41
  %207 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %6, align 8
  ret %struct.cxgbi_gather_list* %207
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.cxgbi_gather_list* @kzalloc(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @ddp_gl_map(%struct.pci_dev*, %struct.cxgbi_gather_list*) #1

declare dso_local i32 @kfree(%struct.cxgbi_gather_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
