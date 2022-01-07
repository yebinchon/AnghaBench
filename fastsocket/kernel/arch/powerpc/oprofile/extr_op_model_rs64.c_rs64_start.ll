; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_rs64_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_rs64_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32, i64 }

@MSR_PMM = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"start on cpu %d, mmcr0 %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @rs64_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs64_start(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %5 = call i32 (...) @mfmsr()
  %6 = load i32, i32* @MSR_PMM, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @mtmsrd(i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @num_counters, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %14, i64 %16
  %18 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** @reset_value, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @classic_ctr_write(i32 %22, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i64 %32
  %34 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ctrl_write(i32 %29, i32 %35)
  br label %40

37:                                               ; preds = %13
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @classic_ctr_write(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %37, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %9

44:                                               ; preds = %9
  %45 = load i32, i32* @SPRN_MMCR0, align 4
  %46 = call i32 @mfspr(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @MMCR0_FC, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @SPRN_MMCR0, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @mtspr(i32 %51, i32 %52)
  %54 = call i32 (...) @smp_processor_id()
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  ret i32 0
}

declare dso_local i32 @mtmsrd(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @classic_ctr_write(i32, i32) #1

declare dso_local i32 @ctrl_write(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
