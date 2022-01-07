; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_update_rqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_update_rqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { %struct.ehea_qp_init_attr }
%struct.ehea_qp_init_attr = type { i32, i32 }
%struct.ehea_port_res = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { %struct.sk_buff** }
%struct.ehea_rwqe = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@EHEA_WR_ID_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_qp*, %struct.ehea_port_res*)* @ehea_update_rqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_update_rqs(%struct.ehea_qp* %0, %struct.ehea_port_res* %1) #0 {
  %3 = alloca %struct.ehea_qp*, align 8
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca %struct.ehea_qp, align 4
  %6 = alloca %struct.ehea_qp_init_attr*, align 8
  %7 = alloca %struct.ehea_rwqe*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ehea_qp* %0, %struct.ehea_qp** %3, align 8
  store %struct.ehea_port_res* %1, %struct.ehea_port_res** %4, align 8
  %14 = load %struct.ehea_qp*, %struct.ehea_qp** %3, align 8
  %15 = bitcast %struct.ehea_qp* %5 to i8*
  %16 = bitcast %struct.ehea_qp* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %5, i32 0, i32 0
  store %struct.ehea_qp_init_attr* %17, %struct.ehea_qp_init_attr** %6, align 8
  %18 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %19 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %20, align 8
  store %struct.sk_buff** %21, %struct.sk_buff*** %8, align 8
  %22 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %23 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  store %struct.sk_buff** %25, %struct.sk_buff*** %9, align 8
  %26 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %27 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %68, %2
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %30
  %38 = call %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp* %5, i32 2)
  store %struct.ehea_rwqe* %38, %struct.ehea_rwqe** %7, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %7, align 8
  %41 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  %45 = load i32, i32* @EHEA_WR_ID_INDEX, align 4
  %46 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %7, align 8
  %47 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @EHEA_BMASK_GET(i32 %45, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %10, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %37
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @ehea_map_vaddr(i32 %60)
  %62 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %7, align 8
  %63 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i8* %61, i8** %66, align 8
  br label %67

67:                                               ; preds = %57, %37
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %30

71:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %110, %71
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %72
  %80 = call %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp* %5, i32 3)
  store %struct.ehea_rwqe* %80, %struct.ehea_rwqe** %7, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %7, align 8
  %83 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i8* %81, i8** %86, align 8
  %87 = load i32, i32* @EHEA_WR_ID_INDEX, align 4
  %88 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %7, align 8
  %89 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @EHEA_BMASK_GET(i32 %87, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %92, i64 %94
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  store %struct.sk_buff* %96, %struct.sk_buff** %10, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %79
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @ehea_map_vaddr(i32 %102)
  %104 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %7, align 8
  %105 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i8* %103, i8** %108, align 8
  br label %109

109:                                              ; preds = %99, %79
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %72

113:                                              ; preds = %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp*, i32) #2

declare dso_local i32 @EHEA_BMASK_GET(i32, i32) #2

declare dso_local i8* @ehea_map_vaddr(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
