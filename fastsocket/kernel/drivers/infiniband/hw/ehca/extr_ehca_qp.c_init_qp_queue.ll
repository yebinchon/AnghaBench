; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_init_qp_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_init_qp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.ipz_adapter_handle, %struct.ib_device }
%struct.ipz_adapter_handle = type { i32 }
%struct.ib_device = type { i32 }
%struct.ehca_pd = type { i32 }
%struct.ehca_qp = type { %struct.ipz_queue, %struct.TYPE_2__, i32 }
%struct.ipz_queue = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ehca_alloc_queue_parms = type { i32, i32, i64, i32 }

@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot allocate page for queue. ipz_rc=%i\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ipz_qpageit_get_inc() failed p_vpage= %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"hipz_qp_register_rpage() h_ret=%lli\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"ipz_qpageit_get_inc() should not succeed vpage=%p\00", align 1
@H_PAGE_REGISTERED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_shca*, %struct.ehca_pd*, %struct.ehca_qp*, %struct.ipz_queue*, i32, i8*, %struct.ehca_alloc_queue_parms*, i32)* @init_qp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_qp_queue(%struct.ehca_shca* %0, %struct.ehca_pd* %1, %struct.ehca_qp* %2, %struct.ipz_queue* %3, i32 %4, i8* %5, %struct.ehca_alloc_queue_parms* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehca_shca*, align 8
  %11 = alloca %struct.ehca_pd*, align 8
  %12 = alloca %struct.ehca_qp*, align 8
  %13 = alloca %struct.ipz_queue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ehca_alloc_queue_parms*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.ib_device*, align 8
  %26 = alloca %struct.ipz_adapter_handle, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %10, align 8
  store %struct.ehca_pd* %1, %struct.ehca_pd** %11, align 8
  store %struct.ehca_qp* %2, %struct.ehca_qp** %12, align 8
  store %struct.ipz_queue* %3, %struct.ipz_queue** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store %struct.ehca_alloc_queue_parms* %6, %struct.ehca_alloc_queue_parms** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %28 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %27, i32 0, i32 1
  store %struct.ib_device* %28, %struct.ib_device** %25, align 8
  %29 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %30 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %29, i32 0, i32 0
  %31 = bitcast %struct.ipz_adapter_handle* %26 to i8*
  %32 = bitcast %struct.ipz_adapter_handle* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %34 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %167

38:                                               ; preds = %8
  %39 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %40 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  store i32 1, i32* %21, align 4
  %44 = load %struct.ehca_pd*, %struct.ehca_pd** %11, align 8
  %45 = load %struct.ipz_queue*, %struct.ipz_queue** %13, align 8
  %46 = load i32, i32* %21, align 4
  %47 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %48 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 128, %49
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %53 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ipz_queue_ctor(%struct.ehca_pd* %44, %struct.ipz_queue* %45, i32 %46, i32 %50, i32 %51, i32 %54, i32 1)
  store i32 %55, i32* %20, align 4
  br label %69

56:                                               ; preds = %38
  %57 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %58 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %21, align 4
  %60 = load %struct.ehca_pd*, %struct.ehca_pd** %11, align 8
  %61 = load %struct.ipz_queue*, %struct.ipz_queue** %13, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* @EHCA_PAGESIZE, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %66 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ipz_queue_ctor(%struct.ehca_pd* %60, %struct.ipz_queue* %61, i32 %62, i32 %63, i32 %64, i32 %67, i32 0)
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %56, %43
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @ehca_err(%struct.ib_device* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %167

80:                                               ; preds = %69
  store i32 0, i32* %19, align 4
  br label %81

81:                                               ; preds = %156, %80
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %159

85:                                               ; preds = %81
  %86 = load %struct.ipz_queue*, %struct.ipz_queue** %13, align 8
  %87 = call i8* @ipz_qpageit_get_inc(%struct.ipz_queue* %86)
  store i8* %87, i8** %22, align 8
  %88 = load i8*, i8** %22, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = call i32 @ehca_err(%struct.ib_device* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %18, align 4
  br label %162

96:                                               ; preds = %85
  %97 = load i8*, i8** %22, align 8
  %98 = call i8* @virt_to_abs(i8* %97)
  store i8* %98, i8** %23, align 8
  %99 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %100 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i8*, i8** %23, align 8
  %104 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %16, align 8
  %105 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 0, i32 1
  %110 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %111 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %26, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @hipz_h_register_rpage_qp(i32 %115, i32 %101, i32* null, i32 0, i32 %102, i8* %103, i32 %109, i32 %113)
  store i8* %116, i8** %24, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %21, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %96
  %122 = load i8*, i8** %24, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = icmp ne i8* %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  %127 = load i8*, i8** %24, align 8
  %128 = call i32 @ehca_err(%struct.ib_device* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** %24, align 8
  %130 = call i32 @ehca2ib_return_code(i8* %129)
  store i32 %130, i32* %18, align 4
  br label %162

131:                                              ; preds = %121
  %132 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %133 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %132, i32 0, i32 0
  %134 = call i8* @ipz_qpageit_get_inc(%struct.ipz_queue* %133)
  store i8* %134, i8** %22, align 8
  %135 = load i8*, i8** %22, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  %139 = load i8*, i8** %22, align 8
  %140 = call i32 @ehca_err(%struct.ib_device* %138, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %18, align 4
  br label %162

143:                                              ; preds = %131
  br label %155

144:                                              ; preds = %96
  %145 = load i8*, i8** %24, align 8
  %146 = load i8*, i8** @H_PAGE_REGISTERED, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  %150 = load i8*, i8** %24, align 8
  %151 = call i32 @ehca_err(%struct.ib_device* %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %150)
  %152 = load i8*, i8** %24, align 8
  %153 = call i32 @ehca2ib_return_code(i8* %152)
  store i32 %153, i32* %18, align 4
  br label %162

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %143
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  br label %81

159:                                              ; preds = %81
  %160 = load %struct.ipz_queue*, %struct.ipz_queue** %13, align 8
  %161 = call i32 @ipz_qeit_reset(%struct.ipz_queue* %160)
  store i32 0, i32* %9, align 4
  br label %167

162:                                              ; preds = %148, %137, %125, %90
  %163 = load %struct.ehca_pd*, %struct.ehca_pd** %11, align 8
  %164 = load %struct.ipz_queue*, %struct.ipz_queue** %13, align 8
  %165 = call i32 @ipz_queue_dtor(%struct.ehca_pd* %163, %struct.ipz_queue* %164)
  %166 = load i32, i32* %18, align 4
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %162, %159, %72, %37
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ipz_queue_ctor(%struct.ehca_pd*, %struct.ipz_queue*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ehca_err(%struct.ib_device*, i8*, i8*) #2

declare dso_local i8* @ipz_qpageit_get_inc(%struct.ipz_queue*) #2

declare dso_local i8* @virt_to_abs(i8*) #2

declare dso_local i8* @hipz_h_register_rpage_qp(i32, i32, i32*, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @ehca2ib_return_code(i8*) #2

declare dso_local i32 @ipz_qeit_reset(%struct.ipz_queue*) #2

declare dso_local i32 @ipz_queue_dtor(%struct.ehca_pd*, %struct.ipz_queue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
