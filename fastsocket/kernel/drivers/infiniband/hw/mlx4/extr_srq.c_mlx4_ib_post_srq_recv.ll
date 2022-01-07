; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_4__*, i32, %struct.ib_recv_wr* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mlx4_ib_srq = type { i64, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_wqe_srq_next_seg = type { i32 }
%struct.mlx4_wqe_data_seg = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mlx4_ib_srq*, align 8
  %8 = alloca %struct.mlx4_wqe_srq_next_seg*, align 8
  %9 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = call %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq* %14)
  store %struct.mlx4_ib_srq* %15, %struct.mlx4_ib_srq** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %16, i32 0, i32 3
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %159, %3
  %21 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %22 = icmp ne %struct.ib_recv_wr* %21, null
  br i1 %22, label %23, label %165

23:                                               ; preds = %20
  %24 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %25 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %39 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %38, %struct.ib_recv_wr** %39, align 8
  br label %165

40:                                               ; preds = %23
  %41 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %55 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %54, %struct.ib_recv_wr** %55, align 8
  br label %165

56:                                               ; preds = %40
  %57 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %58 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %68 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq* %67, i64 %70)
  store %struct.mlx4_wqe_srq_next_seg* %71, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %72 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %73 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @be16_to_cpu(i32 %74)
  %76 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %78, i64 1
  %80 = bitcast %struct.mlx4_wqe_srq_next_seg* %79 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %80, %struct.mlx4_wqe_data_seg** %9, align 8
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %130, %56
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %81
  %88 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %89 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %97, i64 %99
  %101 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %100, i32 0, i32 2
  store i8* %96, i8** %101, align 8
  %102 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %103 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %111, i64 %113
  %115 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %114, i32 0, i32 1
  store i8* %110, i8** %115, align 8
  %116 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %117 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @cpu_to_be64(i32 %123)
  %125 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %125, i64 %127
  %129 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %128, i32 0, i32 0
  store i64 %124, i64* %129, align 8
  br label %130

130:                                              ; preds = %87
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %81

133:                                              ; preds = %81
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %133
  %141 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %141, i64 %143
  %145 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %144, i32 0, i32 2
  store i8* null, i8** %145, align 8
  %146 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %147 = call i8* @cpu_to_be32(i32 %146)
  %148 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %148, i64 %150
  %152 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %151, i32 0, i32 1
  store i8* %147, i8** %152, align 8
  %153 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %153, i64 %155
  %157 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %140, %133
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  %162 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %163 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %162, i32 0, i32 3
  %164 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %163, align 8
  store %struct.ib_recv_wr* %164, %struct.ib_recv_wr** %5, align 8
  br label %20

165:                                              ; preds = %51, %35, %20
  %166 = load i32, i32* %12, align 4
  %167 = call i64 @likely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = call i32 (...) @wmb()
  %176 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @cpu_to_be32(i32 %178)
  %180 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %181 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i8**, i8*** %182, align 8
  store i8* %179, i8** %183, align 8
  br label %184

184:                                              ; preds = %169, %165
  %185 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %7, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %185, i32 0, i32 3
  %187 = load i64, i64* %10, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load i32, i32* %11, align 4
  ret i32 %189
}

declare dso_local %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq*, i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
