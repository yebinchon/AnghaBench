; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_parse_ec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_parse_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_3__, %struct.ehca_sport* }
%struct.TYPE_3__ = type { i32 }
%struct.ehca_sport = type { i32, i8* }

@NEQE_EVENT_CODE = common dso_local global i32 0, align 4
@NEQE_PORT_NUMBER = common dso_local global i32 0, align 4
@NEQE_PORT_AVAILABILITY = common dso_local global i32 0, align 4
@ehca_nr_ports = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i8* null, align 8
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"is active\00", align 1
@IB_PORT_DOWN = common dso_local global i8* null, align 8
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"is inactive\00", align 1
@NEQE_DISRUPTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"disruptive port %d configuration change\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Adapter malfunction.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Traced stopped.\00", align 1
@NEQE_SPECIFIC_EVENT = common dso_local global i32 0, align 4
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"client reregister req.\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unknown util async event %x on port %x\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Unknown event code: %x on %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, i32)* @parse_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ec(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehca_sport*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @NEQE_EVENT_CODE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @EHCA_BMASK_GET(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @NEQE_PORT_NUMBER, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @EHCA_BMASK_GET(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %16 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %15, i32 0, i32 1
  %17 = load %struct.ehca_sport*, %struct.ehca_sport** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %17, i64 %20
  store %struct.ehca_sport* %21, %struct.ehca_sport** %8, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %119 [
    i32 48, label %23
    i32 49, label %59
    i32 50, label %93
    i32 51, label %97
    i32 52, label %101
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @NEQE_PORT_AVAILABILITY, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @EHCA_BMASK_GET(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load i32, i32* @ehca_nr_ports, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %33 = call i32 @replay_modify_qp(%struct.ehca_sport* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %128

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i8*, i8** @IB_PORT_ACTIVE, align 8
  %39 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %40 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %44 = call i32 @dispatch_port_event(%struct.ehca_shca* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %48 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %47, i32 0, i32 0
  %49 = call i32 @ehca_query_sma_attr(%struct.ehca_shca* %45, i32 %46, i32* %48)
  br label %58

50:                                               ; preds = %23
  %51 = load i8*, i8** @IB_PORT_DOWN, align 8
  %52 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %53 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %57 = call i32 @dispatch_port_event(%struct.ehca_shca* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %50, %37
  br label %128

59:                                               ; preds = %2
  %60 = load i32, i32* @NEQE_DISRUPTIVE, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @EHCA_BMASK_GET(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %66 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @ehca_warn(%struct.TYPE_3__* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** @IB_PORT_DOWN, align 8
  %70 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %71 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %75 = call i32 @dispatch_port_event(%struct.ehca_shca* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i8*, i8** @IB_PORT_ACTIVE, align 8
  %77 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %78 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %82 = call i32 @dispatch_port_event(%struct.ehca_shca* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ehca_sport*, %struct.ehca_sport** %8, align 8
  %86 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %85, i32 0, i32 0
  %87 = call i32 @ehca_query_sma_attr(%struct.ehca_shca* %83, i32 %84, i32* %86)
  br label %92

88:                                               ; preds = %59
  %89 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @notify_port_conf_change(%struct.ehca_shca* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %64
  br label %128

93:                                               ; preds = %2
  %94 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %95 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %94, i32 0, i32 0
  %96 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %128

97:                                               ; preds = %2
  %98 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %99 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %98, i32 0, i32 0
  %100 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %128

101:                                              ; preds = %2
  %102 = load i32, i32* @NEQE_SPECIFIC_EVENT, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @EHCA_BMASK_GET(i32 %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 128
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %111 = call i32 @dispatch_port_event(%struct.ehca_shca* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %118

112:                                              ; preds = %101
  %113 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %114 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %113, i32 0, i32 0
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @ehca_warn(%struct.TYPE_3__* %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  br label %128

119:                                              ; preds = %2
  %120 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %121 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %120, i32 0, i32 0
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %124 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %119, %118, %97, %93, %92, %58, %35
  ret void
}

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @replay_modify_qp(%struct.ehca_sport*) #1

declare dso_local i32 @dispatch_port_event(%struct.ehca_shca*, i32, i32, i8*) #1

declare dso_local i32 @ehca_query_sma_attr(%struct.ehca_shca*, i32, i32*) #1

declare dso_local i32 @ehca_warn(%struct.TYPE_3__*, i8*, i32, ...) #1

declare dso_local i32 @notify_port_conf_change(%struct.ehca_shca*, i32) #1

declare dso_local i32 @ehca_err(%struct.TYPE_3__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
