; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_hardreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.TYPE_4__*, %struct.ata_eh_context }
%struct.TYPE_4__ = type { i32 }
%struct.ata_eh_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATA_PFLAG_LOADING = common dso_local global i32 0, align 4
@sata_deb_timing_hotplug = common dso_local global i32 0, align 4
@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"nv: skipping hardreset on occupied port\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to resume link (errno=%d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @nv_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_eh_context*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 2
  store %struct.ata_eh_context* %11, %struct.ata_eh_context** %7, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_PFLAG_LOADING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %22 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ata_dev_enabled(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %28 = load i32, i32* @sata_deb_timing_hotplug, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @sata_link_hardreset(%struct.ata_link* %27, i32 %28, i64 %29, i32* null, i32* null)
  br label %63

31:                                               ; preds = %20, %3
  %32 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %33 = call i64* @sata_ehc_deb_timing(%struct.ata_eh_context* %32)
  store i64* %33, i64** %8, align 8
  %34 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %35 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATA_EHI_QUIET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %43 = load i32, i32* @KERN_INFO, align 4
  %44 = call i32 (%struct.ata_link*, i32, i8*, ...) @ata_link_printk(%struct.ata_link* %42, i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @sata_link_resume(%struct.ata_link* %46, i64* %47, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %59 = load i32, i32* @KERN_WARNING, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (%struct.ata_link*, i32, i8*, ...) @ata_link_printk(%struct.ata_link* %58, i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %52, %45
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  ret i32 %65
}

declare dso_local i32 @ata_dev_enabled(i32) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i32, i64, i32*, i32*) #1

declare dso_local i64* @sata_ehc_deb_timing(%struct.ata_eh_context*) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, ...) #1

declare dso_local i32 @sata_link_resume(%struct.ata_link*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
