; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_dipm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_dipm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.ata_link* }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, i32 }

@ATA_FLAG_IPM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCR_CONTROL = common dso_local global i32 0, align 4
@ATA_DFLAG_DIPM = common dso_local global i32 0, align 4
@SETFEATURES_SATA_ENABLE = common dso_local global i32 0, align 4
@SATA_DIPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @ata_dev_set_dipm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_set_dipm(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_link*, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 1
  %13 = load %struct.ata_link*, %struct.ata_link** %12, align 8
  store %struct.ata_link* %13, %struct.ata_link** %6, align 8
  %14 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %15 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %14, i32 0, i32 0
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %7, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_FLAG_IPM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = call i32 @ata_dev_enabled(%struct.ata_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 1
  store i32 128, i32* %29, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %94

32:                                               ; preds = %23
  %33 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %34 = load i32, i32* @SCR_CONTROL, align 4
  %35 = call i32 @sata_scr_read(%struct.ata_link* %33, i32 %34, i32* %8)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %94

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %92 [
    i32 129, label %42
    i32 130, label %66
    i32 128, label %80
    i32 131, label %80
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, -769
  store i32 %44, i32* %8, align 4
  %45 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %46 = load i32, i32* @SCR_CONTROL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sata_scr_write(%struct.ata_link* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %94

53:                                               ; preds = %42
  %54 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %55 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ATA_DFLAG_DIPM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %62 = load i32, i32* @SETFEATURES_SATA_ENABLE, align 4
  %63 = load i32, i32* @SATA_DIPM, align 4
  %64 = call i32 @ata_dev_set_feature(%struct.ata_device* %61, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %92

66:                                               ; preds = %40
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, -257
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, 512
  store i32 %70, i32* %8, align 4
  %71 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %72 = load i32, i32* @SCR_CONTROL, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @sata_scr_write(%struct.ata_link* %71, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %94

79:                                               ; preds = %66
  br label %92

80:                                               ; preds = %40, %40
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 768
  store i32 %82, i32* %8, align 4
  %83 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %84 = load i32, i32* @SCR_CONTROL, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @sata_scr_write(%struct.ata_link* %83, i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %40, %91, %79, %65
  %93 = load i32, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %89, %77, %51, %38, %27
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @sata_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @ata_dev_set_feature(%struct.ata_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
