; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_ib_sa_guid_info_rec_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_ib_sa_guid_info_rec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_sa_guidinfo_rec = type { i32 }
%struct.ib_sa_query = type { %struct.ib_sa_client*, i32, i32*, %struct.TYPE_4__*, %struct.ib_sa_port* }
%struct.TYPE_4__ = type { %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ib_sa_port = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_sa_guidinfo_query = type { void (i32, %struct.ib_sa_guidinfo_rec*, i8*)*, %struct.ib_sa_query, i8* }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }

@sa_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_SA_METHOD_DELETE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_sa_guidinfo_rec_callback = common dso_local global i32* null, align 8
@ib_sa_guidinfo_rec_release = common dso_local global i32 0, align 4
@IB_SA_ATTR_GUID_INFO_REC = common dso_local global i32 0, align 4
@guidinfo_rec_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_guid_info_rec_query(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2, %struct.ib_sa_guidinfo_rec* %3, i32 %4, i64 %5, i32 %6, i32 %7, void (i32, %struct.ib_sa_guidinfo_rec*, i8*)* %8, i8* %9, %struct.ib_sa_query** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_sa_client*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ib_sa_guidinfo_rec*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca void (i32, %struct.ib_sa_guidinfo_rec*, i8*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.ib_sa_query**, align 8
  %24 = alloca %struct.ib_sa_guidinfo_query*, align 8
  %25 = alloca %struct.ib_sa_device*, align 8
  %26 = alloca %struct.ib_sa_port*, align 8
  %27 = alloca %struct.ib_mad_agent*, align 8
  %28 = alloca %struct.ib_sa_mad*, align 8
  %29 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %13, align 8
  store %struct.ib_device* %1, %struct.ib_device** %14, align 8
  store i64 %2, i64* %15, align 8
  store %struct.ib_sa_guidinfo_rec* %3, %struct.ib_sa_guidinfo_rec** %16, align 8
  store i32 %4, i32* %17, align 4
  store i64 %5, i64* %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store void (i32, %struct.ib_sa_guidinfo_rec*, i8*)* %8, void (i32, %struct.ib_sa_guidinfo_rec*, i8*)** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.ib_sa_query** %10, %struct.ib_sa_query*** %23, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %31 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %30, i32* @sa_client)
  store %struct.ib_sa_device* %31, %struct.ib_sa_device** %25, align 8
  %32 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %33 = icmp ne %struct.ib_sa_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %11
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %168

37:                                               ; preds = %11
  %38 = load i64, i64* %18, align 8
  %39 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* @IB_SA_METHOD_DELETE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %168

52:                                               ; preds = %45, %41, %37
  %53 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %54 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %53, i32 0, i32 1
  %55 = load %struct.ib_sa_port*, %struct.ib_sa_port** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %58 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %55, i64 %60
  store %struct.ib_sa_port* %61, %struct.ib_sa_port** %26, align 8
  %62 = load %struct.ib_sa_port*, %struct.ib_sa_port** %26, align 8
  %63 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %62, i32 0, i32 0
  %64 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %63, align 8
  store %struct.ib_mad_agent* %64, %struct.ib_mad_agent** %27, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call %struct.ib_sa_guidinfo_query* @kmalloc(i32 56, i32 %65)
  store %struct.ib_sa_guidinfo_query* %66, %struct.ib_sa_guidinfo_query** %24, align 8
  %67 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %68 = icmp ne %struct.ib_sa_guidinfo_query* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %52
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %168

72:                                               ; preds = %52
  %73 = load %struct.ib_sa_port*, %struct.ib_sa_port** %26, align 8
  %74 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %75 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %75, i32 0, i32 4
  store %struct.ib_sa_port* %73, %struct.ib_sa_port** %76, align 8
  %77 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %78 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %77, i32 0, i32 1
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @alloc_mad(%struct.ib_sa_query* %78, i32 %79)
  store i32 %80, i32* %29, align 4
  %81 = load i32, i32* %29, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %164

84:                                               ; preds = %72
  %85 = load %struct.ib_sa_client*, %struct.ib_sa_client** %13, align 8
  %86 = call i32 @ib_sa_client_get(%struct.ib_sa_client* %85)
  %87 = load %struct.ib_sa_client*, %struct.ib_sa_client** %13, align 8
  %88 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %89 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %89, i32 0, i32 0
  store %struct.ib_sa_client* %87, %struct.ib_sa_client** %90, align 8
  %91 = load void (i32, %struct.ib_sa_guidinfo_rec*, i8*)*, void (i32, %struct.ib_sa_guidinfo_rec*, i8*)** %21, align 8
  %92 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %93 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %92, i32 0, i32 0
  store void (i32, %struct.ib_sa_guidinfo_rec*, i8*)* %91, void (i32, %struct.ib_sa_guidinfo_rec*, i8*)** %93, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %96 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %98 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %101, align 8
  store %struct.ib_sa_mad* %102, %struct.ib_sa_mad** %28, align 8
  %103 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %104 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %27, align 8
  %105 = call i32 @init_mad(%struct.ib_sa_mad* %103, %struct.ib_mad_agent* %104)
  %106 = load void (i32, %struct.ib_sa_guidinfo_rec*, i8*)*, void (i32, %struct.ib_sa_guidinfo_rec*, i8*)** %21, align 8
  %107 = icmp ne void (i32, %struct.ib_sa_guidinfo_rec*, i8*)* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %84
  %109 = load i32*, i32** @ib_sa_guidinfo_rec_callback, align 8
  br label %111

110:                                              ; preds = %84
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32* [ %109, %108 ], [ null, %110 ]
  %113 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %114 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %114, i32 0, i32 2
  store i32* %112, i32** %115, align 8
  %116 = load i32, i32* @ib_sa_guidinfo_rec_release, align 4
  %117 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %118 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %122 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i64 %120, i64* %123, align 8
  %124 = load i32, i32* @IB_SA_ATTR_GUID_INFO_REC, align 4
  %125 = call i32 @cpu_to_be16(i32 %124)
  %126 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %127 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %131 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @guidinfo_rec_table, align 4
  %134 = load i32, i32* @guidinfo_rec_table, align 4
  %135 = call i32 @ARRAY_SIZE(i32 %134)
  %136 = load %struct.ib_sa_guidinfo_rec*, %struct.ib_sa_guidinfo_rec** %16, align 8
  %137 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %138 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ib_pack(i32 %133, i32 %135, %struct.ib_sa_guidinfo_rec* %136, i32 %139)
  %141 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %142 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %141, i32 0, i32 1
  %143 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %23, align 8
  store %struct.ib_sa_query* %142, %struct.ib_sa_query** %143, align 8
  %144 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %145 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %144, i32 0, i32 1
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @send_mad(%struct.ib_sa_query* %145, i32 %146, i32 %147)
  store i32 %148, i32* %29, align 4
  %149 = load i32, i32* %29, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %111
  br label %154

152:                                              ; preds = %111
  %153 = load i32, i32* %29, align 4
  store i32 %153, i32* %12, align 4
  br label %168

154:                                              ; preds = %151
  %155 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %23, align 8
  store %struct.ib_sa_query* null, %struct.ib_sa_query** %155, align 8
  %156 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %157 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %157, i32 0, i32 0
  %159 = load %struct.ib_sa_client*, %struct.ib_sa_client** %158, align 8
  %160 = call i32 @ib_sa_client_put(%struct.ib_sa_client* %159)
  %161 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %162 = getelementptr inbounds %struct.ib_sa_guidinfo_query, %struct.ib_sa_guidinfo_query* %161, i32 0, i32 1
  %163 = call i32 @free_mad(%struct.ib_sa_query* %162)
  br label %164

164:                                              ; preds = %154, %83
  %165 = load %struct.ib_sa_guidinfo_query*, %struct.ib_sa_guidinfo_query** %24, align 8
  %166 = call i32 @kfree(%struct.ib_sa_guidinfo_query* %165)
  %167 = load i32, i32* %29, align 4
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %164, %152, %69, %49, %34
  %169 = load i32, i32* %12, align 4
  ret i32 %169
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local %struct.ib_sa_guidinfo_query* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_mad(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @ib_sa_client_get(%struct.ib_sa_client*) #1

declare dso_local i32 @init_mad(%struct.ib_sa_mad*, %struct.ib_mad_agent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_pack(i32, i32, %struct.ib_sa_guidinfo_rec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @send_mad(%struct.ib_sa_query*, i32, i32) #1

declare dso_local i32 @ib_sa_client_put(%struct.ib_sa_client*) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @kfree(%struct.ib_sa_guidinfo_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
