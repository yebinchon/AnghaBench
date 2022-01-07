; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s: Unable to obtain status, attempting a reset.\0A\00", align 1
@I2OVER15 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: Not running version 1.5 of the I2O Specification.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: hardware fault\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: already running, trying to reset...\0A\00", align 1
@ADAPTER_STATE_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: failed to bring IOP into HOLD state\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_activate(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %7 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %8 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %12 = call i32 @i2o_status_get(%struct.i2o_controller* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %17 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @osm_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %21 = call i32 @i2o_iop_reset(%struct.i2o_controller* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @I2OVER15, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %35 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @osm_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %97

40:                                               ; preds = %27
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %63 [
    i32 131, label %44
    i32 128, label %51
    i32 129, label %51
    i32 130, label %51
    i32 132, label %51
  ]

44:                                               ; preds = %40
  %45 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %46 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @osm_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %97

51:                                               ; preds = %40, %40, %40, %40
  %52 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %53 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @osm_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %57 = call i32 @i2o_iop_reset(%struct.i2o_controller* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %97

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  %67 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %68 = call i32 @i2o_iop_init_outbound_queue(%struct.i2o_controller* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %97

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ADAPTER_STATE_RESET, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %79 = call i32 @i2o_iop_clear(%struct.i2o_controller* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %82 = call i32 @i2o_status_get(%struct.i2o_controller* %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 130
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %89 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @osm_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %97

94:                                               ; preds = %80
  %95 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %96 = call i32 @i2o_hrt_get(%struct.i2o_controller* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %87, %71, %60, %44, %33, %24
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @i2o_status_get(%struct.i2o_controller*) #1

declare dso_local i32 @osm_info(i8*, i32) #1

declare dso_local i32 @i2o_iop_reset(%struct.i2o_controller*) #1

declare dso_local i32 @osm_err(i8*, i32) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local i32 @i2o_iop_init_outbound_queue(%struct.i2o_controller*) #1

declare dso_local i32 @i2o_iop_clear(%struct.i2o_controller*) #1

declare dso_local i32 @i2o_hrt_get(%struct.i2o_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
