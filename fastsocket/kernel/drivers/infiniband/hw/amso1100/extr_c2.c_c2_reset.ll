; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_port = type { %struct.c2_dev* }
%struct.c2_dev = type { i32 }

@C2_PCI_HRX_QUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"c2_reset: failed to quiesce the hardware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Current RX: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2_port*)* @c2_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2_reset(%struct.c2_port* %0) #0 {
  %2 = alloca %struct.c2_port*, align 8
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.c2_port* %0, %struct.c2_port** %2, align 8
  %5 = load %struct.c2_port*, %struct.c2_port** %2, align 8
  %6 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %5, i32 0, i32 0
  %7 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  store %struct.c2_dev* %7, %struct.c2_dev** %3, align 8
  %8 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %9 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @C2_PCI_HRX_QUI, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @C2_SET_CUR_RX(%struct.c2_dev* %11, i32 %14)
  %16 = call i32 @ssleep(i32 2)
  %17 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %18 = call i32 @C2_GET_CUR_RX(%struct.c2_dev* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @C2_PCI_HRX_QUI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* @C2_PCI_HRX_QUI, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %32 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %34 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local i32 @C2_SET_CUR_RX(%struct.c2_dev*, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @C2_GET_CUR_RX(%struct.c2_dev*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
