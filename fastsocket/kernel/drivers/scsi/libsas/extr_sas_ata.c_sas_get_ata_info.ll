; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_get_ata_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_get_ata_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ex_phy = type { i32, i64, i32, i64 }

@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@SATA_DEV = common dso_local global i32 0, align 4
@SATA_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"report phy sata to %016llx:0x%x returned 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_get_ata_info(%struct.domain_device* %0, %struct.ex_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.ex_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store %struct.ex_phy* %1, %struct.ex_phy** %5, align 8
  %7 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %8 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %15 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %21 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @SATA_DEV, align 4
  %26 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %27 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %32 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SATA_PENDING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i64, i64* @SATA_PENDING, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %82

41:                                               ; preds = %30
  %42 = load i32, i32* @SATA_DEV, align 4
  %43 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %44 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %46 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %49 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %52 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @sas_get_report_phy_sata(%struct.TYPE_7__* %47, i32 %50, %struct.TYPE_8__* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %41
  %58 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %59 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SAS_ADDR(i32 %62)
  %64 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %41
  %71 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %75 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @memcpy(i32 %73, i32* %78, i32 4)
  %80 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %81 = call i32 @sas_get_ata_command_set(%struct.domain_device* %80)
  br label %82

82:                                               ; preds = %70, %36
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %57
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @sas_get_report_phy_sata(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sas_get_ata_command_set(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
