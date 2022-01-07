; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_xmii_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_xmii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, %struct.mii_ioctl_data*, i32)* @rtl_xmii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_xmii_ioctl(%struct.rtl8169_private* %0, %struct.mii_ioctl_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca %struct.mii_ioctl_data*, align 8
  %7 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %5, align 8
  store %struct.mii_ioctl_data* %1, %struct.mii_ioctl_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 130, label %9
    i32 129, label %12
    i32 128, label %21
  ]

9:                                                ; preds = %3
  %10 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %11 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %10, i32 0, i32 0
  store i32 32, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %34

12:                                               ; preds = %3
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %14 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %15 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 31
  %18 = call i32 @rtl_readphy(%struct.rtl8169_private* %13, i32 %17)
  %19 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %20 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %23 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %24 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 31
  %27 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %28 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rtl_writephy(%struct.rtl8169_private* %22, i32 %26, i32 %29)
  store i32 0, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %21, %12, %9
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
