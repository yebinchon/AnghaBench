; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_collect_cpu_info_on_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_collect_cpu_info_on_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_signature = type { i32 }
%struct.cpu_info_ctx = type { i32, %struct.cpu_signature* }

@collect_cpu_info_local = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpu_signature*)* @collect_cpu_info_on_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_cpu_info_on_target(i32 %0, %struct.cpu_signature* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_signature*, align 8
  %5 = alloca %struct.cpu_info_ctx, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cpu_signature* %1, %struct.cpu_signature** %4, align 8
  %7 = getelementptr inbounds %struct.cpu_info_ctx, %struct.cpu_info_ctx* %5, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.cpu_info_ctx, %struct.cpu_info_ctx* %5, i32 0, i32 1
  %9 = load %struct.cpu_signature*, %struct.cpu_signature** %4, align 8
  store %struct.cpu_signature* %9, %struct.cpu_signature** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @collect_cpu_info_local, align 4
  %12 = call i32 @smp_call_function_single(i32 %10, i32 %11, %struct.cpu_info_ctx* %5, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.cpu_info_ctx, %struct.cpu_info_ctx* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.cpu_info_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
