; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_b43_lo_g_adjust_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_b43_lo_g_adjust_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b43_rfatt = type { i8* }
%struct.b43_bbatt = type { i8* }
%struct.b43_lo_calib = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_lo_g_adjust_to(%struct.b43_wldev* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.b43_rfatt, align 8
  %10 = alloca %struct.b43_bbatt, align 8
  %11 = alloca %struct.b43_lo_calib*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call i32 @memset(%struct.b43_rfatt* %9, i32 0, i32 8)
  %13 = bitcast %struct.b43_bbatt* %10 to %struct.b43_rfatt*
  %14 = call i32 @memset(%struct.b43_rfatt* %13, i32 0, i32 8)
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %9, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.b43_bbatt, %struct.b43_bbatt* %10, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = call i32 @b43_lo_fixup_rfatt(%struct.b43_rfatt* %9)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = bitcast %struct.b43_bbatt* %10 to %struct.b43_rfatt*
  %22 = call %struct.b43_lo_calib* @b43_get_calib_lo_settings(%struct.b43_wldev* %20, %struct.b43_rfatt* %21, %struct.b43_rfatt* %9)
  store %struct.b43_lo_calib* %22, %struct.b43_lo_calib** %11, align 8
  %23 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %11, align 8
  %24 = icmp ne %struct.b43_lo_calib* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %28 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %11, align 8
  %29 = getelementptr inbounds %struct.b43_lo_calib, %struct.b43_lo_calib* %28, i32 0, i32 0
  %30 = call i32 @b43_lo_write(%struct.b43_wldev* %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @memset(%struct.b43_rfatt*, i32, i32) #1

declare dso_local i32 @b43_lo_fixup_rfatt(%struct.b43_rfatt*) #1

declare dso_local %struct.b43_lo_calib* @b43_get_calib_lo_settings(%struct.b43_wldev*, %struct.b43_rfatt*, %struct.b43_rfatt*) #1

declare dso_local i32 @b43_lo_write(%struct.b43_wldev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
