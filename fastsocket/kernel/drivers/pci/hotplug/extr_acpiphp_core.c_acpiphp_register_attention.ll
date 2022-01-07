; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_core.c_acpiphp_register_attention.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_core.c_acpiphp_register_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_attention_info = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@attention_info = common dso_local global %struct.acpiphp_attention_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpiphp_register_attention(%struct.acpiphp_attention_info* %0) #0 {
  %2 = alloca %struct.acpiphp_attention_info*, align 8
  %3 = alloca i32, align 4
  store %struct.acpiphp_attention_info* %0, %struct.acpiphp_attention_info** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.acpiphp_attention_info*, %struct.acpiphp_attention_info** %2, align 8
  %7 = icmp ne %struct.acpiphp_attention_info* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.acpiphp_attention_info*, %struct.acpiphp_attention_info** %2, align 8
  %10 = getelementptr inbounds %struct.acpiphp_attention_info, %struct.acpiphp_attention_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.acpiphp_attention_info*, %struct.acpiphp_attention_info** %2, align 8
  %15 = getelementptr inbounds %struct.acpiphp_attention_info, %struct.acpiphp_attention_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.acpiphp_attention_info*, %struct.acpiphp_attention_info** %2, align 8
  %20 = getelementptr inbounds %struct.acpiphp_attention_info, %struct.acpiphp_attention_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.acpiphp_attention_info*, %struct.acpiphp_attention_info** @attention_info, align 8
  %25 = icmp ne %struct.acpiphp_attention_info* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  %27 = load %struct.acpiphp_attention_info*, %struct.acpiphp_attention_info** %2, align 8
  store %struct.acpiphp_attention_info* %27, %struct.acpiphp_attention_info** @attention_info, align 8
  br label %28

28:                                               ; preds = %26, %23, %18, %13, %8, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
