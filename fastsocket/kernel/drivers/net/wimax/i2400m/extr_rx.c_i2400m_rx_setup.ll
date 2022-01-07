; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i2400m_roq_log* }
%struct.i2400m_roq_log = type { i32 }
%struct.device = type { i32 }

@i2400m_rx_reorder_disabled = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@I2400M_RO_CIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"RX: cannot allocate %zu bytes for reorder queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"RX: cannot allocate %zu bytes for reorder queues log areas\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_rx_setup(%struct.i2400m* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2400m_roq_log*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load i64, i64* @i2400m_rx_reorder_disabled, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  %15 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %16 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %88

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @I2400M_RO_CIN, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i64 %28, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_3__*
  %32 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %33 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %32, i32 0, i32 1
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %35 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp eq %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %94

42:                                               ; preds = %21
  %43 = load i32, i32* @I2400M_RO_CIN, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kzalloc(i64 %47, i32 %48)
  %50 = bitcast i8* %49 to %struct.i2400m_roq_log*
  store %struct.i2400m_roq_log* %50, %struct.i2400m_roq_log** %8, align 8
  %51 = load %struct.i2400m_roq_log*, %struct.i2400m_roq_log** %8, align 8
  %52 = icmp eq %struct.i2400m_roq_log* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %89

59:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @I2400M_RO_CIN, align 4
  %63 = add nsw i32 %62, 1
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %67 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = call i32 @__i2400m_roq_init(%struct.TYPE_3__* %71)
  %73 = load %struct.i2400m_roq_log*, %struct.i2400m_roq_log** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2400m_roq_log, %struct.i2400m_roq_log* %73, i64 %75
  %77 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %78 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store %struct.i2400m_roq_log* %76, %struct.i2400m_roq_log** %83, align 8
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %60

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %87, %1
  store i32 0, i32* %2, align 4
  br label %96

89:                                               ; preds = %53
  %90 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %91 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = call i32 @kfree(%struct.TYPE_3__* %92)
  br label %94

94:                                               ; preds = %89, %38
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %88
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @__i2400m_roq_init(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
