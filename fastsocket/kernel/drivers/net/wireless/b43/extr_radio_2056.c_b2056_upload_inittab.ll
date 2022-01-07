; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b2056_upload_inittab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b2056_upload_inittab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b2056_inittab_entry = type { i32, i32, i32 }

@B2056_INITTAB_ENTRY_OK = common dso_local global i32 0, align 4
@B2056_INITTAB_UPLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, %struct.b2056_inittab_entry*, i32)* @b2056_upload_inittab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b2056_upload_inittab(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, %struct.b2056_inittab_entry* %4, i32 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.b2056_inittab_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.b2056_inittab_entry* %4, %struct.b2056_inittab_entry** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %56, %6
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %11, align 8
  %21 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @B2056_INITTAB_ENTRY_OK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %56

27:                                               ; preds = %19
  %28 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %11, align 8
  %29 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @B2056_INITTAB_UPLOAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %11, align 8
  %42 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %11, align 8
  %46 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @b43_radio_write(%struct.b43_wldev* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %34
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %11, align 8
  %60 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %59, i32 1
  store %struct.b2056_inittab_entry* %60, %struct.b2056_inittab_entry** %11, align 8
  br label %15

61:                                               ; preds = %15
  ret void
}

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
