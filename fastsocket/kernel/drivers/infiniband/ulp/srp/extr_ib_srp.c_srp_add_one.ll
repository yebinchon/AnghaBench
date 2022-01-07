; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32, i32 }
%struct.srp_device = type { i32, i32, i32*, i32, i32*, i32*, %struct.ib_device*, i64, i32 }
%struct.ib_device_attr = type { i32, i32, i32*, i32, i32*, i32*, %struct.ib_device*, i64, i32 }
%struct.ib_fmr_pool_param = type { i32, i32, i32, i32, i32, i32 }
%struct.srp_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Query device failed for %s\0A\00", align 1
@SRP_FMR_SIZE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@SRP_FMR_MIN_SIZE = common dso_local global i32 0, align 4
@SRP_FMR_POOL_SIZE = common dso_local global i32 0, align 4
@SRP_FMR_DIRTY_SIZE = common dso_local global i32 0, align 4
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@srp_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @srp_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.srp_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.ib_fmr_pool_param, align 4
  %6 = alloca %struct.srp_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.srp_device* @kmalloc(i32 64, i32 %12)
  %14 = bitcast %struct.srp_device* %13 to %struct.ib_device_attr*
  store %struct.ib_device_attr* %14, %struct.ib_device_attr** %4, align 8
  %15 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %16 = icmp ne %struct.ib_device_attr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %196

18:                                               ; preds = %1
  %19 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %20 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %21 = bitcast %struct.ib_device_attr* %20 to %struct.srp_device*
  %22 = call i64 @ib_query_device(%struct.ib_device* %19, %struct.srp_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %192

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.srp_device* @kmalloc(i32 64, i32 %30)
  store %struct.srp_device* %31, %struct.srp_device** %3, align 8
  %32 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %33 = icmp ne %struct.srp_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %192

35:                                               ; preds = %29
  %36 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %37 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ffs(i32 %38)
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @max(i32 12, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %45 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %47 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, 1
  %51 = xor i64 %50, -1
  %52 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %53 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %52, i32 0, i32 7
  store i64 %51, i64* %53, align 8
  %54 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %55 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SRP_FMR_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %60 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %62 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %61, i32 0, i32 3
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %65 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %66 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %65, i32 0, i32 6
  store %struct.ib_device* %64, %struct.ib_device** %66, align 8
  %67 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %68 = call i32* @ib_alloc_pd(%struct.ib_device* %67)
  %69 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %70 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %72 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @IS_ERR(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %35
  br label %189

77:                                               ; preds = %35
  %78 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %79 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %82 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = call i32* @ib_get_dma_mr(i32* %80, i32 %85)
  %87 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %88 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %87, i32 0, i32 5
  store i32* %86, i32** %88, align 8
  %89 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %90 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @IS_ERR(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %77
  br label %184

95:                                               ; preds = %77
  %96 = load i32, i32* @SRP_FMR_SIZE, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %131, %95
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SRP_FMR_MIN_SIZE, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %138

101:                                              ; preds = %97
  %102 = call i32 @memset(%struct.ib_fmr_pool_param* %5, i32 0, i32 24)
  %103 = load i32, i32* @SRP_FMR_POOL_SIZE, align 4
  %104 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %5, i32 0, i32 5
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @SRP_FMR_DIRTY_SIZE, align 4
  %106 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %5, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %5, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %5, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %5, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %113 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %116 = or i32 %114, %115
  %117 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %5, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %119 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i32* @ib_create_fmr_pool(i32* %120, %struct.ib_fmr_pool_param* %5)
  %122 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %123 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %122, i32 0, i32 4
  store i32* %121, i32** %123, align 8
  %124 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %125 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @IS_ERR(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %101
  br label %138

130:                                              ; preds = %101
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %7, align 4
  %134 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %135 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 2
  store i32 %137, i32* %135, align 4
  br label %97

138:                                              ; preds = %129, %97
  %139 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %140 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @IS_ERR(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %146 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %145, i32 0, i32 4
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %144, %138
  %148 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %149 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %158

154:                                              ; preds = %147
  store i32 1, i32* %9, align 4
  %155 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %156 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %177, %158
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call %struct.srp_host* @srp_add_port(%struct.srp_device* %165, i32 %166)
  store %struct.srp_host* %167, %struct.srp_host** %6, align 8
  %168 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %169 = icmp ne %struct.srp_host* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %172 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %171, i32 0, i32 0
  %173 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %174 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %173, i32 0, i32 3
  %175 = call i32 @list_add_tail(i32* %172, i32* %174)
  br label %176

176:                                              ; preds = %170, %164
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %160

180:                                              ; preds = %160
  %181 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %182 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %183 = call i32 @ib_set_client_data(%struct.ib_device* %181, i32* @srp_client, %struct.srp_device* %182)
  br label %192

184:                                              ; preds = %94
  %185 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %186 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @ib_dealloc_pd(i32* %187)
  br label %189

189:                                              ; preds = %184, %76
  %190 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %191 = call i32 @kfree(%struct.srp_device* %190)
  br label %192

192:                                              ; preds = %189, %180, %34, %24
  %193 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %194 = bitcast %struct.ib_device_attr* %193 to %struct.srp_device*
  %195 = call i32 @kfree(%struct.srp_device* %194)
  br label %196

196:                                              ; preds = %192, %17
  ret void
}

declare dso_local %struct.srp_device* @kmalloc(i32, i32) #1

declare dso_local i64 @ib_query_device(%struct.ib_device*, %struct.srp_device*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @ib_alloc_pd(%struct.ib_device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @ib_get_dma_mr(i32*, i32) #1

declare dso_local i32 @memset(%struct.ib_fmr_pool_param*, i32, i32) #1

declare dso_local i32* @ib_create_fmr_pool(i32*, %struct.ib_fmr_pool_param*) #1

declare dso_local %struct.srp_host* @srp_add_port(%struct.srp_device*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.srp_device*) #1

declare dso_local i32 @ib_dealloc_pd(i32*) #1

declare dso_local i32 @kfree(%struct.srp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
