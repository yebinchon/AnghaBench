; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_eesox.c_eesoxscsi_store_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_eesox.c_eesoxscsi_store_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.expansion_card = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.eesoxscsi_info = type { i32, i32 }

@EESOX_TERM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @eesoxscsi_store_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eesoxscsi_store_term(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.expansion_card*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.eesoxscsi_info*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.expansion_card* @ECARD_DEV(%struct.device* %13)
  store %struct.expansion_card* %14, %struct.expansion_card** %9, align 8
  %15 = load %struct.expansion_card*, %struct.expansion_card** %9, align 8
  %16 = call %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.eesoxscsi_info*
  store %struct.eesoxscsi_info* %20, %struct.eesoxscsi_info** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %21, 1
  br i1 %22, label %23, label %60

23:                                               ; preds = %4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 48
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i32, i32* @EESOX_TERM_ENABLE, align 4
  %36 = load %struct.eesoxscsi_info*, %struct.eesoxscsi_info** %11, align 8
  %37 = getelementptr inbounds %struct.eesoxscsi_info, %struct.eesoxscsi_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %47

40:                                               ; preds = %23
  %41 = load i32, i32* @EESOX_TERM_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.eesoxscsi_info*, %struct.eesoxscsi_info** %11, align 8
  %44 = getelementptr inbounds %struct.eesoxscsi_info, %struct.eesoxscsi_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.eesoxscsi_info*, %struct.eesoxscsi_info** %11, align 8
  %49 = getelementptr inbounds %struct.eesoxscsi_info, %struct.eesoxscsi_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.eesoxscsi_info*, %struct.eesoxscsi_info** %11, align 8
  %52 = getelementptr inbounds %struct.eesoxscsi_info, %struct.eesoxscsi_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writeb(i32 %50, i32 %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %47, %4
  %61 = load i64, i64* %8, align 8
  ret i64 %61
}

declare dso_local %struct.expansion_card* @ECARD_DEV(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
