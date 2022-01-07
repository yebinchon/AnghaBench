; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_machine_check_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_machine_check_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mce = type { i32, i32, i64, i64, i64 }

@mce_poll_count = common dso_local global i32 0, align 4
@banks = common dso_local global i32 0, align 4
@mce_banks = common dso_local global %struct.TYPE_2__* null, align 8
@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@MCP_UC = common dso_local global i32 0, align 4
@mce_ser = common dso_local global i64 0, align 8
@MCI_STATUS_S = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@MCP_TIMESTAMP = common dso_local global i32 0, align 4
@MCP_DONTLOG = common dso_local global i32 0, align 4
@mce_dont_log_ce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_check_poll(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mce, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @mce_poll_count, align 4
  %8 = call i32 @percpu_inc(i32 %7)
  %9 = call i32 @mce_gather_info(%struct.mce* %5, i32* null)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %93, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @banks, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mce_banks, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @test_bit(i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %14
  br label %93

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = call i32 (...) @barrier()
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @MSR_IA32_MCx_STATUS(i32 %36)
  %38 = call i32 @mce_rdmsrl(i32 %37)
  %39 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MCI_STATUS_VAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %29
  br label %93

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @mce_quirk(i32 %47, %struct.mce* %5)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %93

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @MCP_UC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @mce_ser, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @MCI_STATUS_S, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @MCI_STATUS_UC, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = and i32 %58, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %93

70:                                               ; preds = %65, %51
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @mce_read_aux(%struct.mce* %5, i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @MCP_TIMESTAMP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 2
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %77, %70
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @MCP_DONTLOG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @mce_dont_log_ce, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 @mce_log(%struct.mce* %5)
  br label %89

89:                                               ; preds = %87, %84, %79
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @MSR_IA32_MCx_STATUS(i32 %90)
  %92 = call i32 @mce_wrmsrl(i32 %91, i32 0)
  br label %93

93:                                               ; preds = %89, %69, %50, %45, %28
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %10

96:                                               ; preds = %10
  %97 = call i32 (...) @sync_core()
  ret void
}

declare dso_local i32 @percpu_inc(i32) #1

declare dso_local i32 @mce_gather_info(%struct.mce*, i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @mce_rdmsrl(i32) #1

declare dso_local i32 @MSR_IA32_MCx_STATUS(i32) #1

declare dso_local i64 @mce_quirk(i32, %struct.mce*) #1

declare dso_local i32 @mce_read_aux(%struct.mce*, i32) #1

declare dso_local i32 @mce_log(%struct.mce*) #1

declare dso_local i32 @mce_wrmsrl(i32, i32) #1

declare dso_local i32 @sync_core(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
