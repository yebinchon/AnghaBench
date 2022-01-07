; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_set_rq_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_set_rq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i8* }
%struct.ib_qp_cap = type { i64, i8* }
%struct.mlx4_ib_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }

@MLX4_IB_SQ_MAX_SPARE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_qp_cap*, i32, i32, %struct.mlx4_ib_qp*)* @set_rq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rq_size(%struct.mlx4_ib_dev* %0, %struct.ib_qp_cap* %1, i32 %2, i32 %3, %struct.mlx4_ib_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.ib_qp_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_qp*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %7, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mlx4_ib_qp* %4, %struct.mlx4_ib_qp** %11, align 8
  %12 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %13 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX4_IB_SQ_MAX_SPARE, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %14, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %5
  %25 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %26 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @min(i64 %33, i8* %39)
  %41 = icmp ugt i8* %27, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %24, %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %178

45:                                               ; preds = %24
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %50 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %178

56:                                               ; preds = %48
  %57 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %110

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %68 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %73 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %178

79:                                               ; preds = %71, %63
  %80 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %81 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @max(i32 1, i8* %83)
  %85 = call i8* @roundup_pow_of_two(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %88 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %91 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @max(i32 1, i8* %92)
  %94 = call i8* @roundup_pow_of_two(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ilog2(i32 %105)
  %107 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %79, %56
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = ptrtoint i8* %119 to i64
  %124 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %125 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %133 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  br label %177

134:                                              ; preds = %110
  %135 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MLX4_IB_SQ_MAX_SPARE, align 8
  %142 = sub nsw i64 %140, %141
  %143 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i8* @min(i64 %142, i8* %148)
  %150 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i8* %149, i8** %152, align 8
  %153 = ptrtoint i8* %149 to i64
  %154 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %155 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %162 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %168 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @min(i64 %166, i8* %172)
  %174 = call i8* @min(i64 %160, i8* %173)
  %175 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %176 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %134, %113
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %76, %53, %42
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i8* @min(i64, i8*) #1

declare dso_local i8* @roundup_pow_of_two(i32) #1

declare dso_local i32 @max(i32, i8*) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
