; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_get_entry_by_scancode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_get_entry_by_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i64, i32 }

@dell_wmi_keymap = common dso_local global %struct.key_entry* null, align 8
@KE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_entry* (i32)* @dell_wmi_get_entry_by_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_entry* @dell_wmi_get_entry_by_scancode(i32 %0) #0 {
  %2 = alloca %struct.key_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.key_entry*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap, align 8
  store %struct.key_entry* %5, %struct.key_entry** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %8 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KE_END, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %15 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  store %struct.key_entry* %19, %struct.key_entry** %2, align 8
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %23 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %22, i32 1
  store %struct.key_entry* %23, %struct.key_entry** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.key_entry* null, %struct.key_entry** %2, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.key_entry*, %struct.key_entry** %2, align 8
  ret %struct.key_entry* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
