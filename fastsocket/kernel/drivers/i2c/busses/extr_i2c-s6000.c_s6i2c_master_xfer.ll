; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s6000.c_s6i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s6000.c_s6i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.s6i2c_if* }
%struct.s6i2c_if = type { i32, i32, i32, %struct.TYPE_3__, i32, i64, i64, i64, %struct.i2c_msg* }
%struct.TYPE_3__ = type { i64 }
%struct.i2c_msg = type { i32, i64, i64 }

@S6_I2C_STATUS = common dso_local global i32 0, align 4
@S6_I2C_STATUS_ACTIVITY = common dso_local global i32 0, align 4
@S6_I2C_INTRMASK = common dso_local global i32 0, align 4
@S6_I2C_CLRINTR = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"s6i2c: 10 bits addr not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"s6i2c: zero length message not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"s6i2c: multiple xfer cannot change target\0A\00", align 1
@S6_I2C_TAR = common dso_local global i32 0, align 4
@S6_I2C_ENABLE = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXEMPTY = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXABRT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_TIMEOUT = common dso_local global i64 0, align 8
@S6_I2C_TXFLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @s6i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s6i2c_if*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 1
  %12 = load %struct.s6i2c_if*, %struct.s6i2c_if** %11, align 8
  store %struct.s6i2c_if* %12, %struct.s6i2c_if** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %168

16:                                               ; preds = %3
  %17 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %18 = load i32, i32* @S6_I2C_STATUS, align 4
  %19 = call i32 @i2c_rd16(%struct.s6i2c_if* %17, i32 %18)
  %20 = load i32, i32* @S6_I2C_STATUS_ACTIVITY, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 (...) @yield()
  br label %26

26:                                               ; preds = %24, %16
  %27 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %28 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %29 = call i32 @i2c_wr16(%struct.s6i2c_if* %27, i32 %28, i32 0)
  %30 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %31 = load i32, i32* @S6_I2C_CLRINTR, align 4
  %32 = call i32 @i2c_rd16(%struct.s6i2c_if* %30, i32 %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %86, %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %40
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I2C_M_TEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %168

53:                                               ; preds = %37
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %168

67:                                               ; preds = %53
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i64 0
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %168

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %33

89:                                               ; preds = %33
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %91 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %92 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %91, i32 0, i32 8
  store %struct.i2c_msg* %90, %struct.i2c_msg** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %95 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %97 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %96, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %99 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %101 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %103 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %105 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %104, i32 0, i32 2
  store i32 10, i32* %105, align 8
  %106 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %107 = load i32, i32* @S6_I2C_TAR, align 4
  %108 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i64 0
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @i2c_wr16(%struct.s6i2c_if* %106, i32 %107, i32 %112)
  %114 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %115 = load i32, i32* @S6_I2C_ENABLE, align 4
  %116 = call i32 @i2c_wr16(%struct.s6i2c_if* %114, i32 %115, i32 1)
  %117 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %118 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %119 = load i32, i32* @S6_I2C_INTR_TXEMPTY, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* @S6_I2C_INTR_TXABRT, align 4
  %122 = shl i32 1, %121
  %123 = or i32 %120, %122
  %124 = call i32 @i2c_wr16(%struct.s6i2c_if* %117, i32 %118, i32 %123)
  %125 = load i64, i64* @jiffies, align 8
  %126 = load i64, i64* @POLL_TIMEOUT, align 8
  %127 = add nsw i64 %125, %126
  %128 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %129 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %132 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %131, i32 0, i32 3
  %133 = call i32 @add_timer(%struct.TYPE_3__* %132)
  %134 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %135 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %134, i32 0, i32 4
  %136 = call i32 @wait_for_completion(i32* %135)
  %137 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %138 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %137, i32 0, i32 3
  %139 = call i32 @del_timer_sync(%struct.TYPE_3__* %138)
  br label %140

140:                                              ; preds = %145, %89
  %141 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %142 = load i32, i32* @S6_I2C_TXFLR, align 4
  %143 = call i64 @i2c_rd32(%struct.s6i2c_if* %141, i32 %142)
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 (...) @schedule()
  br label %140

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %156, %147
  %149 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %150 = load i32, i32* @S6_I2C_STATUS, align 4
  %151 = call i32 @i2c_rd16(%struct.s6i2c_if* %149, i32 %150)
  %152 = load i32, i32* @S6_I2C_STATUS_ACTIVITY, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = call i32 (...) @schedule()
  br label %148

158:                                              ; preds = %148
  %159 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %160 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %161 = call i32 @i2c_wr16(%struct.s6i2c_if* %159, i32 %160, i32 0)
  %162 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %163 = load i32, i32* @S6_I2C_ENABLE, align 4
  %164 = call i32 @i2c_wr16(%struct.s6i2c_if* %162, i32 %163, i32 0)
  %165 = load %struct.s6i2c_if*, %struct.s6i2c_if** %8, align 8
  %166 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %158, %79, %61, %47, %15
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @i2c_rd16(%struct.s6i2c_if*, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @i2c_wr16(%struct.s6i2c_if*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_3__*) #1

declare dso_local i64 @i2c_rd32(%struct.s6i2c_if*, i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
