; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_fabric_dev_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_fabric_dev_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_22__*, i32, i32, i32, i32)* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql2xasynclogin = common dso_local global i64 0, align 8
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32*)* @qla2x00_fabric_dev_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fabric_dev_login(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %11, align 8
  %15 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* @ql2xasynclogin, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %20 = call i64 @IS_ALOGIO_CAPABLE(%struct.qla_hw_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %118

31:                                               ; preds = %22
  %32 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = call i32 @qla2x00_post_async_login_work(%struct.TYPE_22__* %37, %struct.TYPE_23__* %38, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %118

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %18, %3
  %46 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @qla2x00_fabric_login(%struct.TYPE_22__* %52, %struct.TYPE_23__* %53, i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @QLA_SUCCESS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %112

59:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @BIT_1, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @qla2x00_get_port_database(%struct.TYPE_22__* %71, %struct.TYPE_23__* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @QLA_SUCCESS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %70
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_22__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_22__*, i32, i32, i32, i32)** %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 %83(%struct.TYPE_22__* %84, i32 %87, i32 %92, i32 %97, i32 %102)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = call i32 @qla2x00_mark_device_lost(%struct.TYPE_22__* %104, %struct.TYPE_23__* %105, i32 1, i32 0)
  br label %111

107:                                              ; preds = %70
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = call i32 @qla2x00_update_fcport(%struct.TYPE_22__* %108, %struct.TYPE_23__* %109)
  br label %111

111:                                              ; preds = %107, %78
  br label %116

112:                                              ; preds = %45
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = call i32 @qla2x00_mark_device_lost(%struct.TYPE_22__* %113, %struct.TYPE_23__* %114, i32 1, i32 0)
  br label %116

116:                                              ; preds = %112, %111
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %42, %29
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @IS_ALOGIO_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_post_async_login_work(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qla2x00_fabric_login(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qla2x00_get_port_database(%struct.TYPE_22__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @qla2x00_mark_device_lost(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @qla2x00_update_fcport(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
