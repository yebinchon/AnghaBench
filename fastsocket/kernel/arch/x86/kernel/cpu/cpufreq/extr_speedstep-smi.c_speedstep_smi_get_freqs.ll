; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-smi.c_speedstep_smi_get_freqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-smi.c_speedstep_smi_get_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GET_SPEEDSTEP_FREQS = common dso_local global i32 0, align 4
@ist_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"bug #1422 -- can't read freqs from BIOS\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@smi_sig = common dso_local global i32 0, align 4
@smi_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"trying to determine frequencies with command %x at port %x\0A\00", align 1
@smi_port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"result %x, low_freq %u, high_freq %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @speedstep_smi_get_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_smi_get_freqs(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @GET_SPEEDSTEP_FREQS, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ist_info, i32 0, i32 0), align 4
  %16 = and i32 %15, 65535
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load i32, i32* @smi_sig, align 4
  %24 = and i32 %23, -256
  %25 = load i32, i32* @smi_cmd, align 4
  %26 = and i32 %25, 255
  %27 = or i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @smi_port, align 4
  %30 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @smi_port, align 4
  %35 = call { i32, i32, i32, i32, i32, i32 } asm sideeffect "push %ebp\0Aout %al, (%dx)\0Apop %ebp", "={ax},={bx},={cx},={dx},={di},={si},{ax},{bx},{cx},{dx},{si},{di},~{dirflag},~{fpsr},~{flags}"(i32 %31, i32 %32, i32 %33, i32 %34, i32 0, i32 0) #2, !srcloc !2
  %36 = extractvalue { i32, i32, i32, i32, i32, i32 } %35, 0
  %37 = extractvalue { i32, i32, i32, i32, i32, i32 } %35, 1
  %38 = extractvalue { i32, i32, i32, i32, i32, i32 } %35, 2
  %39 = extractvalue { i32, i32, i32, i32, i32, i32 } %35, 3
  %40 = extractvalue { i32, i32, i32, i32, i32, i32 } %35, 4
  %41 = extractvalue { i32, i32, i32, i32, i32, i32 } %35, 5
  store i32 %36, i32* %7, align 4
  store i32 %37, i32* %9, align 4
  store i32 %38, i32* %10, align 4
  store i32 %39, i32* %12, align 4
  store i32 %40, i32* %8, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %48, 600
  br i1 %49, label %50, label %53

50:                                               ; preds = %22
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %22
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 1000
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %50, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 875, i32 893, i32 916}
