; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_rm9000.c_rm9000_reg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_rm9000.c_rm9000_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.op_counter_config = type { i64, i32, i64 }

@RM9K_COUNTER1_KERNEL = common dso_local global i32 0, align 4
@RM9K_COUNTER1_USER = common dso_local global i32 0, align 4
@RM9K_COUNTER1_ENABLE = common dso_local global i32 0, align 4
@RM9K_COUNTER2_KERNEL = common dso_local global i32 0, align 4
@RM9K_COUNTER2_USER = common dso_local global i32 0, align 4
@RM9K_COUNTER2_ENABLE = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_counter_config*)* @rm9000_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm9000_reg_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %5 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %4, i64 0
  %6 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %11 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %10, i64 0
  %12 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @RM9K_COUNTER1_EVENT(i32 %13)
  %15 = load i32, i32* @RM9K_COUNTER1_KERNEL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RM9K_COUNTER1_USER, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RM9K_COUNTER1_ENABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %25 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %24, i64 1
  %26 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %31 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i64 1
  %32 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @RM9K_COUNTER2_EVENT(i32 %33)
  %35 = load i32, i32* @RM9K_COUNTER2_KERNEL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RM9K_COUNTER2_USER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RM9K_COUNTER2_ENABLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %23
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 8
  %45 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %46 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %45, i64 0
  %47 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 2147483648, %48
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %50 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %51 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %50, i64 1
  %52 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 2147483648, %53
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @RM9K_COUNTER1_EVENT(i32) #1

declare dso_local i32 @RM9K_COUNTER2_EVENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
