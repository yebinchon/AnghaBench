; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_tavor_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_tavor_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, i32, i64, %struct.ib_recv_wr* }
%struct.mthca_dev = type { i32, i64 }
%struct.mthca_srq = type { i32, i32, i32, i32, i32, i32*, i8* }
%struct.mthca_next_seg = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"SRQ %06x full\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTHCA_NEXT_DBD = common dso_local global i32 0, align 4
@MTHCA_TAVOR_MAX_WQES_PER_RECV_DB = common dso_local global i32 0, align 4
@MTHCA_RECEIVE_DOORBELL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_tavor_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_srq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %19 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mthca_dev* @to_mdev(i32 %20)
  store %struct.mthca_dev* %21, %struct.mthca_dev** %7, align 8
  %22 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %23 = call %struct.mthca_srq* @to_msrq(%struct.ib_srq* %22)
  store %struct.mthca_srq* %23, %struct.mthca_srq** %8, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %25 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %24, i32 0, i32 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %29 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %169, %3
  %32 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %33 = icmp ne %struct.ib_recv_wr* %32, null
  br i1 %33, label %34, label %173

34:                                               ; preds = %31
  %35 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %36 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i8* @get_wqe(%struct.mthca_srq* %38, i32 %39)
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = call i32* @wqe_to_link(i8* %41)
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %34
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %51 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %52 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mthca_err(%struct.mthca_dev* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %58 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %57, %struct.ib_recv_wr** %58, align 8
  br label %173

59:                                               ; preds = %34
  %60 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %61 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %17, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %65 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = bitcast i8* %66 to %struct.mthca_next_seg*
  %68 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = getelementptr i8, i8* %69, i64 8
  store i8* %70, i8** %16, align 8
  %71 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %72 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %75 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %59
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %85 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %84, %struct.ib_recv_wr** %85, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %88 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  br label %173

89:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %93 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i8*, i8** %16, align 8
  %98 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %99 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @mthca_set_data_seg(i8* %97, i64 %103)
  %105 = load i8*, i8** %16, align 8
  %106 = getelementptr i8, i8* %105, i64 4
  store i8* %106, i8** %16, align 8
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %90

110:                                              ; preds = %90
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %113 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @mthca_set_data_seg_inval(i8* %117)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32, i32* @MTHCA_NEXT_DBD, align 4
  %121 = call i64 @cpu_to_be32(i32 %120)
  %122 = load i8*, i8** %17, align 8
  %123 = bitcast i8* %122 to %struct.mthca_next_seg*
  %124 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %126 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %129 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %136 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @MTHCA_TAVOR_MAX_WQES_PER_RECV_DB, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %119
  store i32 0, i32* %14, align 4
  %146 = call i32 (...) @wmb()
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %149 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %147, %150
  %152 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %153 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %157 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MTHCA_RECEIVE_DOORBELL, align 8
  %160 = add nsw i64 %158, %159
  %161 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %162 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %161, i32 0, i32 0
  %163 = call i32 @MTHCA_GET_DOORBELL_LOCK(i32* %162)
  %164 = call i32 @mthca_write64(i32 %151, i32 %155, i64 %160, i32 %163)
  %165 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %166 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %145, %119
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %171 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %170, i32 0, i32 3
  %172 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %171, align 8
  store %struct.ib_recv_wr* %172, %struct.ib_recv_wr** %5, align 8
  br label %31

173:                                              ; preds = %81, %49, %31
  %174 = load i32, i32* %14, align 4
  %175 = call i64 @likely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %173
  %178 = call i32 (...) @wmb()
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %181 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %179, %182
  %184 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %185 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 8
  %188 = load i32, i32* %14, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %191 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MTHCA_RECEIVE_DOORBELL, align 8
  %194 = add nsw i64 %192, %193
  %195 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %196 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %195, i32 0, i32 0
  %197 = call i32 @MTHCA_GET_DOORBELL_LOCK(i32* %196)
  %198 = call i32 @mthca_write64(i32 %183, i32 %189, i64 %194, i32 %197)
  br label %199

199:                                              ; preds = %177, %173
  %200 = call i32 (...) @mmiowb()
  %201 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %202 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %201, i32 0, i32 4
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  %205 = load i32, i32* %10, align 4
  ret i32 %205
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @get_wqe(%struct.mthca_srq*, i32) #1

declare dso_local i32* @wqe_to_link(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_set_data_seg(i8*, i64) #1

declare dso_local i32 @mthca_set_data_seg_inval(i8*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mthca_write64(i32, i32, i64, i32) #1

declare dso_local i32 @MTHCA_GET_DOORBELL_LOCK(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
