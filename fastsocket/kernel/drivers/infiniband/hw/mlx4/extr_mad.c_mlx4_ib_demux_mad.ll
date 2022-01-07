; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_demux_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_demux_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ib_grh = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ib_mad = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ib_sa_mad = type { i32 }

@IB_WC_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed matching grh\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"dropping unsupported ingress mad from class:%d for slave:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"slave id: %d is bigger than allowed:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"failed sending to slave %d via tunnel qp (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*)* @mlx4_ib_demux_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_demux_mad(%struct.ib_device* %0, i32 %1, %struct.ib_wc* %2, %struct.ib_grh* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.ib_grh*, align 8
  %11 = alloca %struct.ib_mad*, align 8
  %12 = alloca %struct.mlx4_ib_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store %struct.ib_grh* %3, %struct.ib_grh** %10, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %11, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %17 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %12, align 8
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = call i32 @mlx4_master_func_num(%struct.TYPE_12__* %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %23 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %30 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 255
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32*, i32** %15, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %28
  br label %39

39:                                               ; preds = %38, %5
  %40 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IB_WC_GRH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %50 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlx4_ib_find_real_gid(%struct.ib_device* %47, i32 %48, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %59 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %151

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %65 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %95 [
    i32 128, label %68
    i32 130, label %78
    i32 129, label %86
  ]

68:                                               ; preds = %63
  %69 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %73 = bitcast %struct.ib_mad* %72 to %struct.ib_sa_mad*
  %74 = call i32 @mlx4_ib_demux_sa_handler(%struct.ib_device* %69, i32 %70, i32 %71, %struct.ib_sa_mad* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %151

77:                                               ; preds = %68
  br label %110

78:                                               ; preds = %63
  %79 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %82 = call i32 @mlx4_ib_demux_cm_handler(%struct.ib_device* %79, i32 %80, i32* %14, %struct.ib_mad* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %151

85:                                               ; preds = %78
  br label %110

86:                                               ; preds = %63
  %87 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %88 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IB_MGMT_METHOD_GET_RESP, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %151

94:                                               ; preds = %86
  br label %110

95:                                               ; preds = %63
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = call i32 @mlx4_master_func_num(%struct.TYPE_12__* %99)
  %101 = icmp ne i32 %96, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %104 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  store i32 0, i32* %6, align 4
  br label %151

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %94, %85, %77
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %111, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %110
  %120 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %123 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %120, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %127)
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %151

131:                                              ; preds = %110
  %132 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %136 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %141 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %142 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %143 = call i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %132, i32 %133, i32 %134, i32 %139, %struct.ib_wc* %140, %struct.ib_grh* %141, %struct.ib_mad* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %131
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %131
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %119, %102, %93, %84, %76, %57
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_ib_find_real_gid(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, ...) #1

declare dso_local i32 @mlx4_ib_demux_sa_handler(%struct.ib_device*, i32, i32, %struct.ib_sa_mad*) #1

declare dso_local i32 @mlx4_ib_demux_cm_handler(%struct.ib_device*, i32, i32*, %struct.ib_mad*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev*, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
