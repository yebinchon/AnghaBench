; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_reset_pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_reset_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }

@HZ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"could not reset PCI\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_reset_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_reset_pci(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %5 = load %struct.pt1*, %struct.pt1** %3, align 8
  %6 = call i32 @pt1_write_reg(%struct.pt1* %5, i32 0, i32 16842752)
  %7 = load %struct.pt1*, %struct.pt1** %3, align 8
  %8 = call i32 @pt1_write_reg(%struct.pt1* %7, i32 0, i32 16777216)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.pt1*, %struct.pt1** %3, align 8
  %14 = call i32 @pt1_read_reg(%struct.pt1* %13, i32 0)
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* @HZ, align 4
  %20 = add nsw i32 %19, 999
  %21 = sdiv i32 %20, 1000
  %22 = call i32 @schedule_timeout_uninterruptible(i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load %struct.pt1*, %struct.pt1** %3, align 8
  %29 = call i32 @pt1_printk(i32 %27, %struct.pt1* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pt1_write_reg(%struct.pt1*, i32, i32) #1

declare dso_local i32 @pt1_read_reg(%struct.pt1*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @pt1_printk(i32, %struct.pt1*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
