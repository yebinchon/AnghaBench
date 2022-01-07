; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_get_entry_by_keycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_get_entry_by_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i64, i32 }

@hp_wmi_keymap = common dso_local global %struct.key_entry* null, align 8
@KE_END = common dso_local global i64 0, align 8
@KE_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_entry* (i32)* @hp_wmi_get_entry_by_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_entry* @hp_wmi_get_entry_by_keycode(i32 %0) #0 {
  %2 = alloca %struct.key_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.key_entry*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.key_entry*, %struct.key_entry** @hp_wmi_keymap, align 8
  store %struct.key_entry* %5, %struct.key_entry** %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %8 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KE_END, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %14 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KE_KEY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %21 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  store %struct.key_entry* %25, %struct.key_entry** %2, align 8
  br label %31

26:                                               ; preds = %18, %12
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %29 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %28, i32 1
  store %struct.key_entry* %29, %struct.key_entry** %4, align 8
  br label %6

30:                                               ; preds = %6
  store %struct.key_entry* null, %struct.key_entry** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.key_entry*, %struct.key_entry** %2, align 8
  ret %struct.key_entry* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
