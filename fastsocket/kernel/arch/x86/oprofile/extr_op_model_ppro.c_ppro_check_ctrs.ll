; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_ppro.c_ppro_check_ctrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_ppro.c_ppro_check_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_msrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@reset_value = common dso_local global i32* null, align 8
@num_counters = common dso_local global i32 0, align 4
@counter_width = common dso_local global i32 0, align 4
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.op_msrs*)* @ppro_check_ctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppro_check_ctrs(%struct.pt_regs* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  %7 = load i32*, i32** @reset_value, align 8
  %8 = icmp ne i32* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %69

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %65, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @num_counters, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %15
  %20 = load i32*, i32** @reset_value, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %65

27:                                               ; preds = %19
  %28 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %29 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @rdmsrl(i32 %35, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @counter_width, align 4
  %40 = sub nsw i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = and i64 %38, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %65

46:                                               ; preds = %27
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @oprofile_add_sample(%struct.pt_regs* %47, i32 %48)
  %50 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %51 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @reset_value, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @wrmsrl(i32 %57, i32 %63)
  br label %65

65:                                               ; preds = %46, %45, %26
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %15

68:                                               ; preds = %15
  br label %69

69:                                               ; preds = %68, %13
  %70 = load i32, i32* @APIC_LVTPC, align 4
  %71 = load i32, i32* @APIC_LVTPC, align 4
  %72 = call i32 @apic_read(i32 %71)
  %73 = load i32, i32* @APIC_LVT_MASKED, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = call i32 @apic_write(i32 %70, i32 %75)
  ret i32 1
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @apic_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
