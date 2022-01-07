; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_intr_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_intr_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_2__, %struct.adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.adapter = type { i32, i64, i32 }

@A_SG_INT_CAUSE = common dso_local global i64 0, align 8
@TSO_CAPABLE = common dso_local global i32 0, align 4
@F_PACKET_TOO_BIG = common dso_local global i32 0, align 4
@F_RESPQ_EXHAUSTED = common dso_local global i32 0, align 4
@F_RESPQ_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: SGE response queue overflow\0A\00", align 1
@F_FL_EXHAUSTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: SGE max packet size exceeded\0A\00", align 1
@F_PACKET_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: SGE packet mismatch\0A\00", align 1
@SGE_INT_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_sge_intr_error_handler(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %2, align 8
  %5 = load %struct.sge*, %struct.sge** %2, align 8
  %6 = getelementptr inbounds %struct.sge, %struct.sge* %5, i32 0, i32 1
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @A_SG_INT_CAUSE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TSO_CAPABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @F_PACKET_TOO_BIG, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @F_RESPQ_EXHAUSTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.sge*, %struct.sge** %2, align 8
  %32 = getelementptr inbounds %struct.sge, %struct.sge* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @F_RESPQ_OVERFLOW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.sge*, %struct.sge** %2, align 8
  %43 = getelementptr inbounds %struct.sge, %struct.sge* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @CH_ALERT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @F_FL_EXHAUSTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.sge*, %struct.sge** %2, align 8
  %58 = getelementptr inbounds %struct.sge, %struct.sge* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.sge*, %struct.sge** %2, align 8
  %63 = call i32 @freelQs_empty(%struct.sge* %62)
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @F_PACKET_TOO_BIG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.sge*, %struct.sge** %2, align 8
  %71 = getelementptr inbounds %struct.sge, %struct.sge* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @CH_ALERT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %69, %64
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @F_PACKET_MISMATCH, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.sge*, %struct.sge** %2, align 8
  %86 = getelementptr inbounds %struct.sge, %struct.sge* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @CH_ALERT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %84, %79
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SGE_INT_FATAL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = call i32 @t1_fatal_err(%struct.adapter* %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = getelementptr inbounds %struct.adapter, %struct.adapter* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @A_SG_INT_CAUSE, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CH_ALERT(i8*, i32) #1

declare dso_local i32 @freelQs_empty(%struct.sge*) #1

declare dso_local i32 @t1_fatal_err(%struct.adapter*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
