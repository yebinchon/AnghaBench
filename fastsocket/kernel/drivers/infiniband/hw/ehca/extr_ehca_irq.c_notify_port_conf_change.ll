; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_notify_port_conf_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_notify_port_conf_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ehca_sma_attr }
%struct.ehca_sma_attr = type { i64, i64, i64, i64, i32, i32 }

@IB_EVENT_SM_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SM changed\00", align 1
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"LID changed\00", align 1
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"P_Key changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, i32)* @notify_port_conf_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_port_conf_change(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_sma_attr, align 8
  %6 = alloca %struct.ehca_sma_attr*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %8 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ehca_sma_attr* %14, %struct.ehca_sma_attr** %6, align 8
  %15 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ehca_query_sma_attr(%struct.ehca_shca* %15, i32 %16, %struct.ehca_sma_attr* %5)
  %18 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %28 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24, %2
  %32 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IB_EVENT_SM_CHANGE, align 4
  %35 = call i32 @dispatch_port_event(%struct.ehca_shca* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %24
  %37 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %40 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43, %36
  %51 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %54 = call i32 @dispatch_port_event(%struct.ehca_shca* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %43
  %56 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %66 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %5, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i64 @memcmp(i32 %64, i32 %67, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %62, %55
  %76 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %79 = call i32 @dispatch_port_event(%struct.ehca_shca* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %62
  %81 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %6, align 8
  %82 = bitcast %struct.ehca_sma_attr* %81 to i8*
  %83 = bitcast %struct.ehca_sma_attr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 40, i1 false)
  ret void
}

declare dso_local i32 @ehca_query_sma_attr(%struct.ehca_shca*, i32, %struct.ehca_sma_attr*) #1

declare dso_local i32 @dispatch_port_event(%struct.ehca_shca*, i32, i32, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
