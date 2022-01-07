; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_do_process_ded_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_do_process_ded_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e752x_pvt = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CE page 0x%lx, row %d : Memory read retry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32)* @do_process_ded_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_process_ded_retry(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.e752x_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %14, %struct.e752x_pvt** %10, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = sub nsw i32 %17, 4
  %19 = ashr i32 %16, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.e752x_pvt*, %struct.e752x_pvt** %10, align 8
  %21 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 3
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %27, %24 ], [ %31, %28 ]
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %35 = load i32, i32* @KERN_WARNING, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @e752x_mc_printk(%struct.mem_ctl_info* %34, i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38)
  ret void
}

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @e752x_mc_printk(%struct.mem_ctl_info*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
