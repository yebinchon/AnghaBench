; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.op_counter_config = type { i64 }

@mmcr0_val = common dso_local global i32 0, align 4
@PA6T_MMCR0_HANDDIS = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@reset_value = common dso_local global i64* null, align 8
@SPRN_PA6T_MMCR0 = common dso_local global i32 0, align 4
@oprofile_running = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"start on cpu %d, mmcr0 %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @pa6t_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa6t_start(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %5 = load i32, i32* @mmcr0_val, align 4
  %6 = load i32, i32* @PA6T_MMCR0_HANDDIS, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %15, i64 %17
  %19 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = load i64*, i64** @reset_value, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ctr_write(i32 %23, i64 %28)
  br label %33

30:                                               ; preds = %14
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ctr_write(i32 %31, i64 0)
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i32, i32* @SPRN_PA6T_MMCR0, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mtspr(i32 %38, i32 %39)
  store i32 1, i32* @oprofile_running, align 4
  %41 = call i32 (...) @smp_processor_id()
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @ctr_write(i32, i64) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
