; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-smi.c_speedstep_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-smi.c_speedstep_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GET_SPEEDSTEP_STATE = common dso_local global i32 0, align 4
@smi_sig = common dso_local global i32 0, align 4
@smi_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"trying to determine current setting with command %x at port %x\0A\00", align 1
@smi_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"state is %x, result is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @speedstep_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_get_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @GET_SPEEDSTEP_STATE, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @smi_sig, align 4
  %9 = and i32 %8, -256
  %10 = load i32, i32* @smi_cmd, align 4
  %11 = and i32 %10, 255
  %12 = or i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @smi_port, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @smi_port, align 4
  %19 = call { i32, i32, i32, i32, i32, i32 } asm sideeffect "push %ebp\0Aout %al, (%dx)\0Apop %ebp\0A", "={ax},={bx},={di},={cx},={dx},={si},{ax},{bx},{cx},{dx},{si},{di},~{dirflag},~{fpsr},~{flags}"(i32 %16, i32 %17, i32 0, i32 %18, i32 0, i32 0) #2, !srcloc !2
  %20 = extractvalue { i32, i32, i32, i32, i32, i32 } %19, 0
  %21 = extractvalue { i32, i32, i32, i32, i32, i32 } %19, 1
  %22 = extractvalue { i32, i32, i32, i32, i32, i32 } %19, 2
  %23 = extractvalue { i32, i32, i32, i32, i32, i32 } %19, 3
  %24 = extractvalue { i32, i32, i32, i32, i32, i32 } %19, 4
  %25 = extractvalue { i32, i32, i32, i32, i32, i32 } %19, 5
  store i32 %20, i32* %2, align 4
  store i32 %21, i32* %3, align 4
  store i32 %22, i32* %4, align 4
  store i32 %23, i32* %6, align 4
  store i32 %24, i32* %6, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 1
  ret i32 %30
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 587, i32 605, i32 628}
