; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_mci_sdram_scrub_rate_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_mci_sdram_scrub_rate_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 (%struct.mem_ctl_info*)* }

@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@EDAC_MC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error reading scrub rate\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i8*)* @mci_sdram_scrub_rate_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mci_sdram_scrub_rate_show(%struct.mem_ctl_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load i32 (%struct.mem_ctl_info*)*, i32 (%struct.mem_ctl_info*)** %8, align 8
  %10 = icmp ne i32 (%struct.mem_ctl_info*)* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load i32 (%struct.mem_ctl_info*)*, i32 (%struct.mem_ctl_info*)** %16, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %19 = call i32 %17(%struct.mem_ctl_info* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i32, i32* @KERN_DEBUG, align 4
  %24 = load i32, i32* @EDAC_MC, align 4
  %25 = call i32 @edac_printk(i32 %23, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %14
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %22, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @edac_printk(i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
