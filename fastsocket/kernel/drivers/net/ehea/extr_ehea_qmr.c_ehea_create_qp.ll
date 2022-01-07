; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_create_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { i32, i32, i32, i32, %struct.ehea_qp_init_attr, i32, i32, %struct.ehea_adapter* }
%struct.ehea_qp_init_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"no mem for qp\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ehea_h_alloc_resource_qp failed\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"can't register for sq ret=%x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"can't register for rq1 ret=%x\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"can't register for rq2 ret=%x\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't register for rq3 ret=%x\00", align 1
@FORCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_qp* @ehea_create_qp(%struct.ehea_adapter* %0, i32 %1, %struct.ehea_qp_init_attr* %2) #0 {
  %4 = alloca %struct.ehea_qp*, align 8
  %5 = alloca %struct.ehea_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_qp_init_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ehea_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ehea_qp_init_attr* %2, %struct.ehea_qp_init_attr** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ehea_qp* @kzalloc(i32 72, i32 %15)
  store %struct.ehea_qp* %16, %struct.ehea_qp** %10, align 8
  %17 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %18 = icmp ne %struct.ehea_qp* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.ehea_qp* null, %struct.ehea_qp** %4, align 8
  br label %178

21:                                               ; preds = %3
  %22 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %23 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %24 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %23, i32 0, i32 7
  store %struct.ehea_adapter* %22, %struct.ehea_adapter** %24, align 8
  %25 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %31 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %30, i32 0, i32 0
  %32 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %33 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %32, i32 0, i32 6
  %34 = call i64 @ehea_h_alloc_resource_qp(i32 %27, %struct.ehea_qp_init_attr* %28, i32 %29, i32* %31, i32* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @H_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %175

40:                                               ; preds = %21
  %41 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @map_wqe_size(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %46 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @map_wqe_size(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %50 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @map_wqe_size(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @map_wqe_size(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %58 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %59 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %58, i32 0, i32 1
  %60 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %65 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %68 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %57, i32* %59, i32 %62, i32 %63, i32 %66, %struct.ehea_adapter* %67, i32 0)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %40
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %159

74:                                               ; preds = %40
  %75 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %76 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %77 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %76, i32 0, i32 2
  %78 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %83 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %86 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %75, i32* %77, i32 %80, i32 %81, i32 %84, %struct.ehea_adapter* %85, i32 1)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %155

92:                                               ; preds = %74
  %93 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %94 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %99 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %100 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %99, i32 0, i32 3
  %101 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %102 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %106 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %109 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %98, i32* %100, i32 %103, i32 %104, i32 %107, %struct.ehea_adapter* %108, i32 2)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %97
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %151

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %118 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 2
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  %122 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %123 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %124 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %123, i32 0, i32 5
  %125 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %126 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %130 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %133 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %122, i32* %124, i32 %127, i32 %128, i32 %131, %struct.ehea_adapter* %132, i32 3)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %121
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  br label %147

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %142 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %141, i32 0, i32 4
  %143 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %144 = bitcast %struct.ehea_qp_init_attr* %142 to i8*
  %145 = bitcast %struct.ehea_qp_init_attr* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 4 %145, i64 36, i1 false)
  %146 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  store %struct.ehea_qp* %146, %struct.ehea_qp** %4, align 8
  br label %178

147:                                              ; preds = %136
  %148 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %149 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %148, i32 0, i32 3
  %150 = call i32 @hw_queue_dtor(i32* %149)
  br label %151

151:                                              ; preds = %147, %112
  %152 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %153 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %152, i32 0, i32 2
  %154 = call i32 @hw_queue_dtor(i32* %153)
  br label %155

155:                                              ; preds = %151, %89
  %156 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %157 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %156, i32 0, i32 1
  %158 = call i32 @hw_queue_dtor(i32* %157)
  br label %159

159:                                              ; preds = %155, %71
  %160 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %161 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %164 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ehea_h_disable_and_get_hea(i32 %162, i32 %165)
  %167 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %168 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %171 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @FORCE_FREE, align 4
  %174 = call i32 @ehea_h_free_resource(i32 %169, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %159, %38
  %176 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %177 = call i32 @kfree(%struct.ehea_qp* %176)
  store %struct.ehea_qp* null, %struct.ehea_qp** %4, align 8
  br label %178

178:                                              ; preds = %175, %140, %19
  %179 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  ret %struct.ehea_qp* %179
}

declare dso_local %struct.ehea_qp* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i64 @ehea_h_alloc_resource_qp(i32, %struct.ehea_qp_init_attr*, i32, i32*, i32*) #1

declare dso_local i32 @map_wqe_size(i32) #1

declare dso_local i32 @ehea_qp_alloc_register(%struct.ehea_qp*, i32*, i32, i32, i32, %struct.ehea_adapter*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @ehea_h_disable_and_get_hea(i32, i32) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehea_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
