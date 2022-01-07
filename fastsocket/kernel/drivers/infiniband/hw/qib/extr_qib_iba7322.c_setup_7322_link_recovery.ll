; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_setup_7322_link_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_setup_7322_link_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_3__*, %struct.qib_devdata* }
%struct.TYPE_3__ = type { i32 }
%struct.qib_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@portsel_port1 = common dso_local global i32* null, align 8
@portsel_port2 = common dso_local global i32* null, align 8
@atetm_1port = common dso_local global i32* null, align 8
@portsel_2port = common dso_local global i32* null, align 8
@atetm_2port = common dso_local global i32* null, align 8
@BISTEN_ETM = common dso_local global i32 0, align 4
@LEN_ETM = common dso_local global i32 0, align 4
@reset_atetm = common dso_local global i32* null, align 8
@BISTEN_AT = common dso_local global i32 0, align 4
@LEN_AT = common dso_local global i32 0, align 4
@reset_at = common dso_local global i32* null, align 8
@BISTEN_PORT_SEL = common dso_local global i32 0, align 4
@LEN_PORT_SEL = common dso_local global i32 0, align 4
@at = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed IB link recovery setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @setup_7322_link_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_7322_link_recovery(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 2
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  store %struct.qib_devdata* %10, %struct.qib_devdata** %7, align 8
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 2
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %126

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32*, i32** @portsel_port1, align 8
  br label %53

51:                                               ; preds = %44
  %52 = load i32*, i32** @portsel_port2, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32* [ %50, %49 ], [ %52, %51 ]
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** @atetm_1port, align 8
  store i32* %55, i32** %6, align 8
  br label %59

56:                                               ; preds = %37, %34
  %57 = load i32*, i32** @portsel_2port, align 8
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** @atetm_2port, align 8
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %61 = call i64 @qib_r_grab(%struct.qib_devdata* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %123, label %63

63:                                               ; preds = %59
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %65 = load i32, i32* @BISTEN_ETM, align 4
  %66 = load i32, i32* @LEN_ETM, align 4
  %67 = load i32*, i32** @reset_atetm, align 8
  %68 = call i64 @qib_r_shift(%struct.qib_devdata* %64, i32 %65, i32 %66, i32* %67, i32* null)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %123, label %70

70:                                               ; preds = %63
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %72 = load i32, i32* @BISTEN_ETM, align 4
  %73 = call i64 @qib_r_update(%struct.qib_devdata* %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %123, label %75

75:                                               ; preds = %70
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %77 = load i32, i32* @BISTEN_AT, align 4
  %78 = load i32, i32* @LEN_AT, align 4
  %79 = load i32*, i32** @reset_at, align 8
  %80 = call i64 @qib_r_shift(%struct.qib_devdata* %76, i32 %77, i32 %78, i32* %79, i32* null)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %123, label %82

82:                                               ; preds = %75
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %84 = load i32, i32* @BISTEN_AT, align 4
  %85 = call i64 @qib_r_update(%struct.qib_devdata* %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %123, label %87

87:                                               ; preds = %82
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %89 = load i32, i32* @BISTEN_PORT_SEL, align 4
  %90 = load i32, i32* @LEN_PORT_SEL, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = call i64 @qib_r_shift(%struct.qib_devdata* %88, i32 %89, i32 %90, i32* %91, i32* null)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %123, label %94

94:                                               ; preds = %87
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %96 = load i32, i32* @BISTEN_PORT_SEL, align 4
  %97 = call i64 @qib_r_update(%struct.qib_devdata* %95, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %94
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %101 = load i32, i32* @BISTEN_AT, align 4
  %102 = load i32, i32* @LEN_AT, align 4
  %103 = load i32*, i32** @at, align 8
  %104 = call i64 @qib_r_shift(%struct.qib_devdata* %100, i32 %101, i32 %102, i32* %103, i32* null)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %99
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %108 = load i32, i32* @BISTEN_AT, align 4
  %109 = call i64 @qib_r_update(%struct.qib_devdata* %107, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %106
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %113 = load i32, i32* @BISTEN_ETM, align 4
  %114 = load i32, i32* @LEN_ETM, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = call i64 @qib_r_shift(%struct.qib_devdata* %112, i32 %113, i32 %114, i32* %115, i32* null)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %111
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %120 = load i32, i32* @BISTEN_ETM, align 4
  %121 = call i64 @qib_r_update(%struct.qib_devdata* %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %111, %106, %99, %94, %87, %82, %75, %70, %63, %59
  %124 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %125 = call i32 @qib_dev_err(%struct.qib_devdata* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %19, %123, %118
  ret void
}

declare dso_local i64 @qib_r_grab(%struct.qib_devdata*) #1

declare dso_local i64 @qib_r_shift(%struct.qib_devdata*, i32, i32, i32*, i32*) #1

declare dso_local i64 @qib_r_update(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
