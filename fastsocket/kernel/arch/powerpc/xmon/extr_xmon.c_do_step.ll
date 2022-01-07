; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_do_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_do_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32 }

@MSR_SF = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_IR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Couldn't single-step %s instruction\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rfid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mtmsrd\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"stepped to \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSR_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @do_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_step(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MSR_SF, align 4
  %10 = load i32, i32* @MSR_PR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MSR_IR, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = load i32, i32* @MSR_SF, align 4
  %16 = load i32, i32* @MSR_IR, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mread(i32 %22, i32* %4, i32 4)
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @emulate_step(%struct.pt_regs* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @IS_RFID(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 0, i32* %2, align 4
  br label %66

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = or i32 3328, %45
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xmon_print_symbol(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ppc_inst_dump(i32 %56, i32 1, i32 0)
  store i32 0, i32* %2, align 4
  br label %66

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %19
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* @MSR_SE, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %41, %31
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mread(i32, i32*, i32) #1

declare dso_local i32 @emulate_step(%struct.pt_regs*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @IS_RFID(i32) #1

declare dso_local i32 @xmon_print_symbol(i32, i8*, i8*) #1

declare dso_local i32 @ppc_inst_dump(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
