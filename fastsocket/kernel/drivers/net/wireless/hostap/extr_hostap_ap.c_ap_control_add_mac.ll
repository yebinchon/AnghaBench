; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_control_add_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_control_add_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_restrictions = type { i32, i32, i32 }
%struct.mac_entry = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_control_add_mac(%struct.mac_restrictions* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_restrictions*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mac_entry*, align 8
  store %struct.mac_restrictions* %0, %struct.mac_restrictions** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mac_entry* @kmalloc(i32 8, i32 %7)
  store %struct.mac_entry* %8, %struct.mac_entry** %6, align 8
  %9 = load %struct.mac_entry*, %struct.mac_entry** %6, align 8
  %10 = icmp eq %struct.mac_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.mac_entry*, %struct.mac_entry** %6, align 8
  %16 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcpy(i32 %17, i32* %18, i32 %19)
  %21 = load %struct.mac_restrictions*, %struct.mac_restrictions** %4, align 8
  %22 = getelementptr inbounds %struct.mac_restrictions, %struct.mac_restrictions* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.mac_entry*, %struct.mac_entry** %6, align 8
  %25 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %24, i32 0, i32 0
  %26 = load %struct.mac_restrictions*, %struct.mac_restrictions** %4, align 8
  %27 = getelementptr inbounds %struct.mac_restrictions, %struct.mac_restrictions* %26, i32 0, i32 2
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.mac_restrictions*, %struct.mac_restrictions** %4, align 8
  %30 = getelementptr inbounds %struct.mac_restrictions, %struct.mac_restrictions* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mac_restrictions*, %struct.mac_restrictions** %4, align 8
  %34 = getelementptr inbounds %struct.mac_restrictions, %struct.mac_restrictions* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %14, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.mac_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
