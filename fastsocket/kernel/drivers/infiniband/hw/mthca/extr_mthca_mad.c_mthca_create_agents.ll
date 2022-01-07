; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_create_agents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_create_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.ib_mad_agent***, %struct.TYPE_2__, i32, i32 }
%struct.ib_mad_agent = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IB_QPT_GSI = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@send_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to obtain port %d rate. aborting.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_create_agents(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 3
  %10 = call i32 @spin_lock_init(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %59, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @IB_QPT_GSI, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @IB_QPT_SMI, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* @send_handler, align 4
  %36 = call %struct.ib_mad_agent* @ib_register_mad_agent(i32* %24, i32 %26, i32 %34, i32* null, i32 0, i32 %35, i32* null, i32* null)
  store %struct.ib_mad_agent* %36, %struct.ib_mad_agent** %4, align 8
  %37 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %38 = call i64 @IS_ERR(%struct.ib_mad_agent* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %42 = call i32 @PTR_ERR(%struct.ib_mad_agent* %41)
  store i32 %42, i32* %7, align 4
  br label %85

43:                                               ; preds = %33
  %44 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %45, i32 0, i32 0
  %47 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %47, i64 %49
  %51 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %51, i64 %53
  store %struct.ib_mad_agent* %44, %struct.ib_mad_agent** %54, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %19

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %11

62:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sle i32 %64, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @mthca_update_rate(%struct.mthca_dev* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @mthca_err(%struct.mthca_dev* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %85

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %63

84:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %133

85:                                               ; preds = %76, %40
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %128, %85
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %124, %93
  %95 = load i32, i32* %6, align 4
  %96 = icmp sle i32 %95, 1
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %98, i32 0, i32 0
  %100 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %100, i64 %102
  %104 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %104, i64 %106
  %108 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %107, align 8
  %109 = icmp ne %struct.ib_mad_agent* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %97
  %111 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %112 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %111, i32 0, i32 0
  %113 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %113, i64 %115
  %117 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %117, i64 %119
  %121 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %120, align 8
  %122 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %121)
  br label %123

123:                                              ; preds = %110, %97
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %94

127:                                              ; preds = %94
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %86

131:                                              ; preds = %86
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %84
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.ib_mad_agent* @ib_register_mad_agent(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_agent*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_agent*) #1

declare dso_local i32 @mthca_update_rate(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
