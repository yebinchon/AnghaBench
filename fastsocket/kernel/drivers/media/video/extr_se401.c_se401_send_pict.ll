; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_send_pict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_send_pict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32, i32, i32, i32, i32, i32, i32 }

@HV7131_REG_TITL = common dso_local global i32 0, align 4
@HV7131_REG_TITM = common dso_local global i32 0, align 4
@HV7131_REG_TITU = common dso_local global i32 0, align 4
@HV7131_REG_ARLV = common dso_local global i32 0, align 4
@HV7131_REG_ARCG = common dso_local global i32 0, align 4
@HV7131_REG_AGCG = common dso_local global i32 0, align 4
@HV7131_REG_ABCG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*)* @se401_send_pict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_send_pict(%struct.usb_se401* %0) #0 {
  %2 = alloca %struct.usb_se401*, align 8
  store %struct.usb_se401* %0, %struct.usb_se401** %2, align 8
  %3 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %4 = load i32, i32* @HV7131_REG_TITL, align 4
  %5 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %6 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @se401_set_feature(%struct.usb_se401* %3, i32 %4, i32 %7)
  %9 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %10 = load i32, i32* @HV7131_REG_TITM, align 4
  %11 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %12 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @se401_set_feature(%struct.usb_se401* %9, i32 %10, i32 %13)
  %15 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %16 = load i32, i32* @HV7131_REG_TITU, align 4
  %17 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %18 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @se401_set_feature(%struct.usb_se401* %15, i32 %16, i32 %19)
  %21 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %22 = load i32, i32* @HV7131_REG_ARLV, align 4
  %23 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %24 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @se401_set_feature(%struct.usb_se401* %21, i32 %22, i32 %25)
  %27 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %28 = load i32, i32* @HV7131_REG_ARCG, align 4
  %29 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %30 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @se401_set_feature(%struct.usb_se401* %27, i32 %28, i32 %31)
  %33 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %34 = load i32, i32* @HV7131_REG_AGCG, align 4
  %35 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %36 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @se401_set_feature(%struct.usb_se401* %33, i32 %34, i32 %37)
  %39 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %40 = load i32, i32* @HV7131_REG_ABCG, align 4
  %41 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %42 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @se401_set_feature(%struct.usb_se401* %39, i32 %40, i32 %43)
  ret i32 0
}

declare dso_local i32 @se401_set_feature(%struct.usb_se401*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
