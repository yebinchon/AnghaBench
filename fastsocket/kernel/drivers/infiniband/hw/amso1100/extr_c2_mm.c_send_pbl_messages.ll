; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mm.c_send_pbl_messages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mm.c_send_pbl_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.c2_vq_req = type { i64 }
%struct.c2wr_nsmr_pbl_req = type { i32*, %struct.TYPE_4__, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.c2wr_nsmr_pbl_rep = type { i32 }
%union.c2wr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCWR_NSMR_PBL = common dso_local global i32 0, align 4
@MEM_PBL_COMPLETE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, i32, i64, i32, %struct.c2_vq_req*, i32)* @send_pbl_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pbl_messages(%struct.c2_dev* %0, i32 %1, i64 %2, i32 %3, %struct.c2_vq_req* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.c2_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.c2_vq_req*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.c2wr_nsmr_pbl_req*, align 8
  %17 = alloca %struct.c2wr_nsmr_pbl_rep*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.c2_vq_req* %4, %struct.c2_vq_req** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %25 [
    i32 128, label %23
    i32 129, label %24
  ]

23:                                               ; preds = %6
  store i32 1, i32* %19, align 4
  br label %28

24:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  br label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %174

28:                                               ; preds = %24, %23
  %29 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %30 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 40
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %38 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.c2wr_nsmr_pbl_req* @kmalloc(i32 %40, i32 %41)
  store %struct.c2wr_nsmr_pbl_req* %42, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %43 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %44 = icmp ne %struct.c2wr_nsmr_pbl_req* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %174

48:                                               ; preds = %28
  %49 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %50 = load i32, i32* @CCWR_NSMR_PBL, align 4
  %51 = call i32 @c2_wr_set_id(%struct.c2wr_nsmr_pbl_req* %49, i32 %50)
  %52 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %53 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %56 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %59 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %62 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %64 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %63, i32 0, i32 2
  store i8* null, i8** %64, align 8
  store i32 0, i32* %20, align 4
  br label %65

65:                                               ; preds = %140, %48
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %147

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @min(i32 %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %75 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %68
  %80 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %81 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %82 = call i32 @vq_req_get(%struct.c2_dev* %80, %struct.c2_vq_req* %81)
  %83 = load i32, i32* @MEM_PBL_COMPLETE, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %86 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %88 = ptrtoint %struct.c2_vq_req* %87 to i64
  %89 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %90 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %79, %68
  store i32 0, i32* %21, align 4
  br label %93

93:                                               ; preds = %121, %92
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i64, i64* @PAGE_SIZE, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %10, align 8
  br label %120

104:                                              ; preds = %97
  %105 = load i64, i64* %10, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @cpu_to_be64(i32 %112)
  %114 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %115 = getelementptr inbounds %struct.c2wr_nsmr_pbl_req, %struct.c2wr_nsmr_pbl_req* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %104, %100
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %93

124:                                              ; preds = %93
  %125 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %126 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %127 = bitcast %struct.c2wr_nsmr_pbl_req* %126 to %union.c2wr*
  %128 = call i32 @vq_send_wr(%struct.c2_dev* %125, %union.c2wr* %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %137 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %138 = call i32 @vq_req_put(%struct.c2_dev* %136, %struct.c2_vq_req* %137)
  br label %139

139:                                              ; preds = %135, %131
  br label %170

140:                                              ; preds = %124
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %11, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %20, align 4
  br label %65

147:                                              ; preds = %65
  %148 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %149 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %150 = call i32 @vq_wait_for_reply(%struct.c2_dev* %148, %struct.c2_vq_req* %149)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %170

154:                                              ; preds = %147
  %155 = load %struct.c2_vq_req*, %struct.c2_vq_req** %12, align 8
  %156 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.c2wr_nsmr_pbl_rep*
  store %struct.c2wr_nsmr_pbl_rep* %158, %struct.c2wr_nsmr_pbl_rep** %17, align 8
  %159 = load %struct.c2wr_nsmr_pbl_rep*, %struct.c2wr_nsmr_pbl_rep** %17, align 8
  %160 = icmp ne %struct.c2wr_nsmr_pbl_rep* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %18, align 4
  br label %170

164:                                              ; preds = %154
  %165 = load %struct.c2wr_nsmr_pbl_rep*, %struct.c2wr_nsmr_pbl_rep** %17, align 8
  %166 = call i32 @c2_errno(%struct.c2wr_nsmr_pbl_rep* %165)
  store i32 %166, i32* %18, align 4
  %167 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  %168 = load %struct.c2wr_nsmr_pbl_rep*, %struct.c2wr_nsmr_pbl_rep** %17, align 8
  %169 = call i32 @vq_repbuf_free(%struct.c2_dev* %167, %struct.c2wr_nsmr_pbl_rep* %168)
  br label %170

170:                                              ; preds = %164, %161, %153, %139
  %171 = load %struct.c2wr_nsmr_pbl_req*, %struct.c2wr_nsmr_pbl_req** %16, align 8
  %172 = call i32 @kfree(%struct.c2wr_nsmr_pbl_req* %171)
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %170, %45, %25
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local %struct.c2wr_nsmr_pbl_req* @kmalloc(i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_nsmr_pbl_req*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_nsmr_pbl_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_nsmr_pbl_rep*) #1

declare dso_local i32 @kfree(%struct.c2wr_nsmr_pbl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
