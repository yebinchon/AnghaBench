; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_qos_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_qos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, i32 }

@B43_HF_EDCF = common dso_local global i32 0, align 4
@B43_MMIO_IFSCTL = common dso_local global i32 0, align 4
@B43_MMIO_IFSCTL_USE_EDCF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"QoS disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"QoS enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_qos_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_qos_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = call i32 @b43_hf_read(%struct.b43_wldev* %9)
  %11 = load i32, i32* @B43_HF_EDCF, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @b43_hf_write(%struct.b43_wldev* %8, i32 %13)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = load i32, i32* @B43_MMIO_IFSCTL, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_MMIO_IFSCTL, align 4
  %19 = call i32 @b43_read16(%struct.b43_wldev* %17, i32 %18)
  %20 = load i32, i32* @B43_MMIO_IFSCTL_USE_EDCF, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @b43_write16(%struct.b43_wldev* %15, i32 %16, i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @b43dbg(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %49

28:                                               ; preds = %1
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_qos_upload_all(%struct.b43_wldev* %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_hf_read(%struct.b43_wldev* %32)
  %34 = load i32, i32* @B43_HF_EDCF, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @b43_hf_write(%struct.b43_wldev* %31, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_MMIO_IFSCTL, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_MMIO_IFSCTL, align 4
  %41 = call i32 @b43_read16(%struct.b43_wldev* %39, i32 %40)
  %42 = load i32, i32* @B43_MMIO_IFSCTL_USE_EDCF, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @b43_write16(%struct.b43_wldev* %37, i32 %38, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @b43dbg(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43_qos_upload_all(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
