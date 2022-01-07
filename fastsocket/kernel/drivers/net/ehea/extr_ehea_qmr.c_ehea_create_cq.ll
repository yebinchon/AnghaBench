; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cq = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ehea_adapter* }
%struct.TYPE_4__ = type { %struct.h_epa }
%struct.h_epa = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"no mem for cq\00", align 1
@H_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"alloc_resource_cq failed\00", align 1
@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"hw_qpageit_get_inc failed\00", align 1
@EHEA_CQ_REGISTER_ORIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"register_rpage_cq failed ehea_cq=%p hret=%llx counter=%i act_pages=%i\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"registration of pages not complete hret=%llx\0A\00", align 1
@H_PAGE_REGISTERED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"CQ: registration of page failed hret=%llx\0A\00", align 1
@FORCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_cq* @ehea_create_cq(%struct.ehea_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ehea_cq*, align 8
  %6 = alloca %struct.ehea_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehea_cq*, align 8
  %11 = alloca %struct.h_epa, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ehea_cq* @kzalloc(i32 40, i32 %20)
  store %struct.ehea_cq* %21, %struct.ehea_cq** %10, align 8
  %22 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %23 = icmp ne %struct.ehea_cq* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %175

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %29 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %33 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %37 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %40 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %41 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %40, i32 0, i32 4
  store %struct.ehea_adapter* %39, %struct.ehea_adapter** %41, align 8
  %42 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %43 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %42, i32 0, i32 0
  store i32* %43, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %44 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %48 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %47, i32 0, i32 3
  %49 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %50 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %49, i32 0, i32 0
  %51 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %52 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %51, i32 0, i32 2
  %53 = call i32 @ehea_h_alloc_resource_cq(i32 %46, %struct.TYPE_3__* %48, i32* %50, %struct.TYPE_4__* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @H_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %26
  %58 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %172

59:                                               ; preds = %26
  %60 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %61 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %60, i32 0, i32 1
  %62 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %63 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EHEA_PAGESIZE, align 4
  %67 = call i32 @hw_queue_ctor(i32* %61, i32 %65, i32 %66, i32 4)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %163

71:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %142, %71
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %75 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %145

79:                                               ; preds = %72
  %80 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %81 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %80, i32 0, i32 1
  %82 = call i8* @hw_qpageit_get_inc(i32* %81)
  store i8* %82, i8** %19, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %159

87:                                               ; preds = %79
  %88 = load i8*, i8** %19, align 8
  %89 = call i32 @virt_to_abs(i8* %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @EHEA_CQ_REGISTER_ORIG, align 4
  %94 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %95 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @ehea_h_register_rpage(i32 %92, i32 0, i32 %93, i32 %96, i32 %97, i32 1)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @H_SUCCESS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %87
  %103 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %107 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), %struct.ehea_cq* %103, i32 %104, i32 %105, i32 %109)
  br label %159

111:                                              ; preds = %87
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %114 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %112, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %121 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %120, i32 0, i32 1
  %122 = call i8* @hw_qpageit_get_inc(i32* %121)
  store i8* %122, i8** %19, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @H_SUCCESS, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = load i8*, i8** %19, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %119
  %130 = load i32, i32* %13, align 4
  %131 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %159

132:                                              ; preds = %126
  br label %141

133:                                              ; preds = %111
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @H_PAGE_REGISTERED, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  br label %159

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %132
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %72

145:                                              ; preds = %72
  %146 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %147 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %146, i32 0, i32 1
  %148 = call i32 @hw_qeit_reset(i32* %147)
  %149 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %150 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = bitcast %struct.h_epa* %11 to i8*
  %153 = bitcast %struct.h_epa* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 8 %153, i64 4, i1 false)
  %154 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %155 = call i32 @ehea_reset_cq_ep(%struct.ehea_cq* %154)
  %156 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %157 = call i32 @ehea_reset_cq_n1(%struct.ehea_cq* %156)
  %158 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  store %struct.ehea_cq* %158, %struct.ehea_cq** %5, align 8
  br label %176

159:                                              ; preds = %137, %129, %102, %85
  %160 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %161 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %160, i32 0, i32 1
  %162 = call i32 @hw_queue_dtor(i32* %161)
  br label %163

163:                                              ; preds = %159, %70
  %164 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %165 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %168 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @FORCE_FREE, align 4
  %171 = call i32 @ehea_h_free_resource(i32 %166, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %163, %57
  %173 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %174 = call i32 @kfree(%struct.ehea_cq* %173)
  br label %175

175:                                              ; preds = %172, %24
  store %struct.ehea_cq* null, %struct.ehea_cq** %5, align 8
  br label %176

176:                                              ; preds = %175, %145
  %177 = load %struct.ehea_cq*, %struct.ehea_cq** %5, align 8
  ret %struct.ehea_cq* %177
}

declare dso_local %struct.ehea_cq* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i32 @ehea_h_alloc_resource_cq(i32, %struct.TYPE_3__*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @hw_queue_ctor(i32*, i32, i32, i32) #1

declare dso_local i8* @hw_qpageit_get_inc(i32*) #1

declare dso_local i32 @virt_to_abs(i8*) #1

declare dso_local i32 @ehea_h_register_rpage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hw_qeit_reset(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ehea_reset_cq_ep(%struct.ehea_cq*) #1

declare dso_local i32 @ehea_reset_cq_n1(%struct.ehea_cq*) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehea_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
