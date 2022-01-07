; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_alloc_srq_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_alloc_srq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_pd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mthca_srq = type { i32, i32, i8*, i32, i32, i32, i32 }
%struct.mthca_data_seg = type { i32 }
%struct.mthca_next_seg = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_MAX_DIRECT_SRQ_SIZE = common dso_local global i32 0, align 4
@MTHCA_INVAL_LKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*)* @mthca_alloc_srq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_srq_buf(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.mthca_srq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_pd*, align 8
  %7 = alloca %struct.mthca_srq*, align 8
  %8 = alloca %struct.mthca_data_seg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mthca_next_seg*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %6, align 8
  store %struct.mthca_srq* %2, %struct.mthca_srq** %7, align 8
  %13 = load %struct.mthca_pd*, %struct.mthca_pd** %6, align 8
  %14 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %137

19:                                               ; preds = %3
  %20 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %21 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %29 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %31 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %137

37:                                               ; preds = %19
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %39 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %40 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %43 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %41, %44
  %46 = load i32, i32* @MTHCA_MAX_DIRECT_SRQ_SIZE, align 4
  %47 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %48 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %47, i32 0, i32 6
  %49 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %50 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %49, i32 0, i32 5
  %51 = load %struct.mthca_pd*, %struct.mthca_pd** %6, align 8
  %52 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %53 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %52, i32 0, i32 4
  %54 = call i32 @mthca_buf_alloc(%struct.mthca_dev* %38, i32 %45, i32 %46, i32* %48, i32* %50, %struct.mthca_pd* %51, i32 1, i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %37
  %58 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %59 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kfree(i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %137

63:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %125, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %67 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %64
  %71 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @get_wqe(%struct.mthca_srq* %71, i32 %72)
  store i8* %73, i8** %9, align 8
  %74 = bitcast i8* %73 to %struct.mthca_next_seg*
  store %struct.mthca_next_seg* %74, %struct.mthca_next_seg** %12, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %77 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %70
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i8*, i8** %9, align 8
  %85 = call i32* @wqe_to_link(i8* %84)
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %89 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %87, %90
  %92 = or i32 %91, 1
  %93 = call i64 @htonl(i32 %92)
  %94 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %12, align 8
  %95 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %101

96:                                               ; preds = %70
  %97 = load i8*, i8** %9, align 8
  %98 = call i32* @wqe_to_link(i8* %97)
  store i32 -1, i32* %98, align 4
  %99 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %12, align 8
  %100 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %81
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr i8, i8* %102, i64 8
  %104 = bitcast i8* %103 to %struct.mthca_data_seg*
  store %struct.mthca_data_seg* %104, %struct.mthca_data_seg** %8, align 8
  br label %105

105:                                              ; preds = %121, %101
  %106 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %8, align 8
  %107 = bitcast %struct.mthca_data_seg* %106 to i8*
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %110 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %108, i64 %113
  %115 = icmp ult i8* %107, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load i32, i32* @MTHCA_INVAL_LKEY, align 4
  %118 = call i32 @cpu_to_be32(i32 %117)
  %119 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %8, align 8
  %120 = getelementptr inbounds %struct.mthca_data_seg, %struct.mthca_data_seg* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %116
  %122 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %8, align 8
  %123 = getelementptr inbounds %struct.mthca_data_seg, %struct.mthca_data_seg* %122, i32 1
  store %struct.mthca_data_seg* %123, %struct.mthca_data_seg** %8, align 8
  br label %105

124:                                              ; preds = %105
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %64

128:                                              ; preds = %64
  %129 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %130 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %131 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = call i8* @get_wqe(%struct.mthca_srq* %129, i32 %133)
  %135 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %136 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %128, %57, %34, %18
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @mthca_buf_alloc(%struct.mthca_dev*, i32, i32, i32*, i32*, %struct.mthca_pd*, i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i8* @get_wqe(%struct.mthca_srq*, i32) #1

declare dso_local i32* @wqe_to_link(i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
