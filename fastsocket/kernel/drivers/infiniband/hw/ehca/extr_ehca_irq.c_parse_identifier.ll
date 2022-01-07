; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_parse_identifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_parse_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EQE_EE_IDENTIFIER = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@IB_EVENT_COMM_EST = common dso_local global i32 0, align 4
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MRMWPTE error.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Port event.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MR access error.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"EQ error.\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"P/Q_Key mismatch.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Sampling complete.\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Unaffiliated access error.\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Path migrating.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Interface trace stopped.\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"First error capture available\00", align 1
@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Unknown identifier: %x on %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, i32)* @parse_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_identifier(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EQE_EE_IDENTIFIER, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @EHCA_BMASK_GET(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %79 [
    i32 2, label %10
    i32 3, label %15
    i32 4, label %20
    i32 5, label %25
    i32 6, label %25
    i32 7, label %30
    i32 8, label %30
    i32 9, label %34
    i32 10, label %38
    i32 11, label %42
    i32 12, label %46
    i32 13, label %50
    i32 16, label %54
    i32 17, label %58
    i32 18, label %62
    i32 19, label %66
    i32 20, label %70
    i32 21, label %74
  ]

10:                                               ; preds = %2
  %11 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %14 = call i32 @qp_event_callback(%struct.ehca_shca* %11, i32 %12, i32 %13, i32 0)
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IB_EVENT_COMM_EST, align 4
  %19 = call i32 @qp_event_callback(%struct.ehca_shca* %16, i32 %17, i32 %18, i32 0)
  br label %88

20:                                               ; preds = %2
  %21 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %24 = call i32 @qp_event_callback(%struct.ehca_shca* %21, i32 %22, i32 %23, i32 0)
  br label %88

25:                                               ; preds = %2, %2
  %26 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %29 = call i32 @qp_event_callback(%struct.ehca_shca* %26, i32 %27, i32 %28, i32 1)
  br label %88

30:                                               ; preds = %2, %2
  %31 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @cq_event_callback(%struct.ehca_shca* %31, i32 %32)
  br label %88

34:                                               ; preds = %2
  %35 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %36 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %35, i32 0, i32 0
  %37 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %88

38:                                               ; preds = %2
  %39 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %40 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %88

42:                                               ; preds = %2
  %43 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %44 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %43, i32 0, i32 0
  %45 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %88

46:                                               ; preds = %2
  %47 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %48 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %88

50:                                               ; preds = %2
  %51 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %52 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %88

54:                                               ; preds = %2
  %55 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %56 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %88

58:                                               ; preds = %2
  %59 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %60 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %59, i32 0, i32 0
  %61 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %88

62:                                               ; preds = %2
  %63 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %64 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %88

66:                                               ; preds = %2
  %67 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %68 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %88

70:                                               ; preds = %2
  %71 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %72 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %71, i32 0, i32 0
  %73 = call i32 @ehca_info(%struct.TYPE_3__* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %88

74:                                               ; preds = %2
  %75 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @IB_EVENT_SRQ_LIMIT_REACHED, align 4
  %78 = call i32 @qp_event_callback(%struct.ehca_shca* %75, i32 %76, i32 %77, i32 0)
  br label %88

79:                                               ; preds = %2
  %80 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %81 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %80, i32 0, i32 0
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %84 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.TYPE_3__*, i8*, ...) @ehca_err(%struct.TYPE_3__* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %79, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %25, %20, %15, %10
  ret void
}

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @qp_event_callback(%struct.ehca_shca*, i32, i32, i32) #1

declare dso_local i32 @cq_event_callback(%struct.ehca_shca*, i32) #1

declare dso_local i32 @ehca_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @ehca_info(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
