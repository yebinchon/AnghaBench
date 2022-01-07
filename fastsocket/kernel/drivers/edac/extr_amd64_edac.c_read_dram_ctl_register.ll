; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_read_dram_ctl_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_read_dram_ctl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.amd64_pvt = type { i8*, i8* }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DCT_SEL_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"F2x110 (DCTSelLow): 0x%08x, High range addrs at: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  DCTs operate in %s mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ganged\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unganged\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"  Address range split per DCT: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"  data interleave for ECC: %s, DRAM cleared since last warm reset: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"  channel interleave: %s, interleave bits selector: 0x%x\0A\00", align 1
@DCT_SEL_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*)* @read_dram_ctl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dram_ctl_register(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_pvt*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %62

6:                                                ; preds = %1
  %7 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %8 = load i32, i32* @DCT_SEL_LO, align 4
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %10 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %9, i32 0, i32 0
  %11 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %7, i32 %8, i8** %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %6
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %15 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %18 = call i8* @dct_sel_baseaddr(%struct.amd64_pvt* %17)
  %19 = call i32 (i8*, i8*, ...) @debugf0(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18)
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %21 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %25 = call i32 (i8*, i8*, ...) @debugf0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %27 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %13
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %31 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %35 = call i32 (i8*, i8*, ...) @debugf0(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %29, %13
  %37 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %38 = call i64 @dct_data_intlv_enabled(%struct.amd64_pvt* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %42 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %43 = call i64 @dct_memory_cleared(%struct.amd64_pvt* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %47 = call i32 (i8*, i8*, ...) @debugf0(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* %41, i8* %46)
  %48 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %49 = call i64 @dct_interleave_enabled(%struct.amd64_pvt* %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %53 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %54 = call i8* @dct_sel_interleave_addr(%struct.amd64_pvt* %53)
  %55 = call i32 (i8*, i8*, ...) @debugf0(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %52, i8* %54)
  br label %56

56:                                               ; preds = %36, %6
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %58 = load i32, i32* @DCT_SEL_HI, align 4
  %59 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %60 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %59, i32 0, i32 1
  %61 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %57, i32 %58, i8** %60)
  br label %62

62:                                               ; preds = %56, %5
  ret void
}

declare dso_local i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt*, i32, i8**) #1

declare dso_local i32 @debugf0(i8*, i8*, ...) #1

declare dso_local i8* @dct_sel_baseaddr(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_high_range_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_data_intlv_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_memory_cleared(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_interleave_enabled(%struct.amd64_pvt*) #1

declare dso_local i8* @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
