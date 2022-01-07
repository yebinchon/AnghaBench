; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_tag_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_tag_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { %struct.cxgbi_device* }
%struct.cxgbi_device = type { i32 (%struct.cxgbi_sock*, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*)*, %struct.cxgbi_tag_format, %struct.cxgbi_ddp_info* }
%struct.cxgbi_pagepod_hdr = type { i8*, i8*, i8*, i8*, i64 }
%struct.cxgbi_tag_format = type { i32 }
%struct.cxgbi_ddp_info = type { i32, i32, i32 }
%struct.cxgbi_gather_list = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PPOD_PAGES_MAX = common dso_local global i32 0, align 4
@PPOD_PAGES_SHIFT = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"xferlen %u, gl %u, npods %u NO DDP.\0A\00", align 1
@PPOD_IDX_SHIFT = common dso_local global i32 0, align 4
@PPOD_VALID_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"xfer %u, gl %u,%u, tid 0x%x, tag 0x%x->0x%x(%u,%u).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, i32, i32, i32*, %struct.cxgbi_gather_list*, i32)* @ddp_tag_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_tag_reserve(%struct.cxgbi_sock* %0, i32 %1, i32 %2, i32* %3, %struct.cxgbi_gather_list* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgbi_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cxgbi_gather_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cxgbi_device*, align 8
  %15 = alloca %struct.cxgbi_ddp_info*, align 8
  %16 = alloca %struct.cxgbi_tag_format*, align 8
  %17 = alloca %struct.cxgbi_pagepod_hdr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.cxgbi_gather_list* %4, %struct.cxgbi_gather_list** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 0
  %24 = load %struct.cxgbi_device*, %struct.cxgbi_device** %23, align 8
  store %struct.cxgbi_device* %24, %struct.cxgbi_device** %14, align 8
  %25 = load %struct.cxgbi_device*, %struct.cxgbi_device** %14, align 8
  %26 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %25, i32 0, i32 2
  %27 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %26, align 8
  store %struct.cxgbi_ddp_info* %27, %struct.cxgbi_ddp_info** %15, align 8
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %14, align 8
  %29 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %28, i32 0, i32 1
  store %struct.cxgbi_tag_format* %29, %struct.cxgbi_tag_format** %16, align 8
  store i32 -1, i32* %19, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %20, align 4
  %32 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %33 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PPOD_PAGES_MAX, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @PPOD_PAGES_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %18, align 4
  %40 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %41 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %44 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %6
  %48 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %49 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %50 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %54 = call i32 @ddp_find_unused_entries(%struct.cxgbi_ddp_info* %48, i32 0, i32 %51, i32 %52, %struct.cxgbi_gather_list* %53)
  store i32 %54, i32* %19, align 4
  br label %90

55:                                               ; preds = %6
  %56 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %57 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %58 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %62 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %66 = call i32 @ddp_find_unused_entries(%struct.cxgbi_ddp_info* %56, i32 %60, i32 %63, i32 %64, %struct.cxgbi_gather_list* %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %55
  %70 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %71 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %77 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %78 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %18, align 4
  %81 = add i32 %79, %80
  %82 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %83 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @min(i32 %81, i32 %84)
  %86 = load i32, i32* %18, align 4
  %87 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %88 = call i32 @ddp_find_unused_entries(%struct.cxgbi_ddp_info* %76, i32 0, i32 %85, i32 %86, %struct.cxgbi_gather_list* %87)
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %75, %69, %55
  br label %90

90:                                               ; preds = %89, %47
  %91 = load i32, i32* %19, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %95 = shl i32 1, %94
  %96 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %97 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %100 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 (i32, i8*, i32, i32, i32, ...) @log_debug(i32 %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101, i32 %102)
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %7, align 4
  br label %178

105:                                              ; preds = %90
  %106 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %16, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @cxgbi_ddp_tag_base(%struct.cxgbi_tag_format* %106, i32 %107)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %21, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %21, align 4
  %114 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %17, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @PPOD_VALID_FLAG, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @PPOD_TID(i32 %116)
  %118 = or i32 %115, %117
  %119 = call i8* @htonl(i32 %118)
  %120 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %17, i32 0, i32 3
  store i8* %119, i8** %120, align 8
  %121 = load i32, i32* %21, align 4
  %122 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %123 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %121, %124
  %126 = call i8* @htonl(i32 %125)
  %127 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %17, i32 0, i32 2
  store i8* %126, i8** %127, align 8
  %128 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %129 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @htonl(i32 %130)
  %132 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %17, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %134 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @htonl(i32 %135)
  %137 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %17, i32 0, i32 0
  store i8* %136, i8** %137, align 8
  %138 = load %struct.cxgbi_device*, %struct.cxgbi_device** %14, align 8
  %139 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %138, i32 0, i32 0
  %140 = load i32 (%struct.cxgbi_sock*, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*)*, i32 (%struct.cxgbi_sock*, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*)** %139, align 8
  %141 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %145 = call i32 %140(%struct.cxgbi_sock* %141, %struct.cxgbi_pagepod_hdr* %17, i32 %142, i32 %143, %struct.cxgbi_gather_list* %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %105
  br label %172

149:                                              ; preds = %105
  %150 = load i32, i32* %19, align 4
  %151 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %152 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %154 = shl i32 1, %153
  %155 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %156 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %159 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %12, align 8
  %162 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %18, align 4
  %169 = call i32 (i32, i8*, i32, i32, i32, ...) @log_debug(i32 %154, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %160, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %21, align 4
  %171 = load i32*, i32** %11, align 8
  store i32 %170, i32* %171, align 4
  store i32 0, i32* %7, align 4
  br label %178

172:                                              ; preds = %148
  %173 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %15, align 8
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @ddp_unmark_entries(%struct.cxgbi_ddp_info* %173, i32 %174, i32 %175)
  %177 = load i32, i32* %20, align 4
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %172, %149, %93
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local i32 @ddp_find_unused_entries(%struct.cxgbi_ddp_info*, i32, i32, i32, %struct.cxgbi_gather_list*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @cxgbi_ddp_tag_base(%struct.cxgbi_tag_format*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @PPOD_TID(i32) #1

declare dso_local i32 @ddp_unmark_entries(%struct.cxgbi_ddp_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
