; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_vmcmd_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_vmcmd_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shutdown_trigger = type { i32 }

@ON_REIPL_STR = common dso_local global i32 0, align 4
@vmcmd_on_reboot = common dso_local global i8* null, align 8
@ON_PANIC_STR = common dso_local global i32 0, align 4
@vmcmd_on_panic = common dso_local global i8* null, align 8
@ON_HALT_STR = common dso_local global i32 0, align 4
@vmcmd_on_halt = common dso_local global i8* null, align 8
@ON_POFF_STR = common dso_local global i32 0, align 4
@vmcmd_on_poff = common dso_local global i8* null, align 8
@ON_RESTART_STR = common dso_local global i32 0, align 4
@vmcmd_on_restart = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shutdown_trigger*)* @vmcmd_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmcmd_run(%struct.shutdown_trigger* %0) #0 {
  %2 = alloca %struct.shutdown_trigger*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.shutdown_trigger* %0, %struct.shutdown_trigger** %2, align 8
  %5 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %6 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ON_REIPL_STR, align 4
  %9 = call i64 @strcmp(i32 %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @vmcmd_on_reboot, align 8
  store i8* %12, i8** %3, align 8
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %15 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ON_PANIC_STR, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i8*, i8** @vmcmd_on_panic, align 8
  store i8* %21, i8** %3, align 8
  br label %53

22:                                               ; preds = %13
  %23 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %24 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ON_HALT_STR, align 4
  %27 = call i64 @strcmp(i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i8*, i8** @vmcmd_on_halt, align 8
  store i8* %30, i8** %3, align 8
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %33 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ON_POFF_STR, align 4
  %36 = call i64 @strcmp(i32 %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** @vmcmd_on_poff, align 8
  store i8* %39, i8** %3, align 8
  br label %51

40:                                               ; preds = %31
  %41 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %42 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ON_RESTART_STR, align 4
  %45 = call i64 @strcmp(i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** @vmcmd_on_restart, align 8
  store i8* %48, i8** %3, align 8
  br label %50

49:                                               ; preds = %40
  br label %77

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52, %20
  br label %54

54:                                               ; preds = %53, %11
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %77

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 10)
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @__cpcmd(i8* %71, i32* null, i32 0, i32* null)
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %3, align 8
  br label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %60, label %77

77:                                               ; preds = %49, %58, %74
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @__cpcmd(i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
