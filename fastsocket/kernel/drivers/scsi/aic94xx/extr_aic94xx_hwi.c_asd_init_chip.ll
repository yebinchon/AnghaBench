; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"couldn't hard reset %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't init seqs for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"coudln't start seqs for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_chip(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %4 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %5 = call i32 @asd_chip_hardrst(%struct.asd_ha_struct* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %10 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_name(i32 %11)
  %13 = call i32 @asd_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %16 = call i32 @asd_disable_ints(%struct.asd_ha_struct* %15)
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %18 = call i32 @asd_init_seqs(%struct.asd_ha_struct* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %23 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_name(i32 %24)
  %26 = call i32 @asd_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %39

27:                                               ; preds = %14
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %29 = call i32 @asd_start_seqs(%struct.asd_ha_struct* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %34 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_name(i32 %35)
  %37 = call i32 @asd_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %32, %21, %8
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @asd_chip_hardrst(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @asd_disable_ints(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_seqs(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_start_seqs(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
