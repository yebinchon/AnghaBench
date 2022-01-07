; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_dev_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_dev_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.ata_port*)*, i32 (%struct.ata_port*, %struct.ata_taskfile*)*, i32 (%struct.ata_port*, i32)* }
%struct.ata_taskfile = type { i32 }

@ATA_HORKAGE_DIAGNOSTIC = common dso_local global i32 0, align 4
@ATA_DEV_NONE = common dso_local global i32 0, align 4
@ATA_DEV_UNKNOWN = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_dev_classify(%struct.ata_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.ata_taskfile, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %8, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %20, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %23 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %21(%struct.ata_port* %22, i32 %25)
  %27 = call i32 @memset(%struct.ata_taskfile* %9, i32 0, i32 4)
  %28 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32 (%struct.ata_port*, %struct.ata_taskfile*)*, i32 (%struct.ata_port*, %struct.ata_taskfile*)** %31, align 8
  %33 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %34 = call i32 %32(%struct.ata_port* %33, %struct.ata_taskfile* %9)
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %3
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @ATA_HORKAGE_DIAGNOSTIC, align 4
  %47 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %68

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %67

55:                                               ; preds = %51
  %56 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %57 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60, %55
  %65 = load i32, i32* @ATA_DEV_NONE, align 4
  store i32 %65, i32* %4, align 4
  br label %106

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %45
  %69 = call i32 @ata_dev_classify(%struct.ata_taskfile* %9)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @ATA_DEV_UNKNOWN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %78 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ATA_HORKAGE_DIAGNOSTIC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @ATA_DEV_ATA, align 4
  store i32 %84, i32* %10, align 4
  br label %87

85:                                               ; preds = %76, %73
  %86 = load i32, i32* @ATA_DEV_NONE, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %83
  br label %104

88:                                               ; preds = %68
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ATA_DEV_ATA, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %94 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64 (%struct.ata_port*)*, i64 (%struct.ata_port*)** %96, align 8
  %98 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %99 = call i64 %97(%struct.ata_port* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @ATA_DEV_NONE, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %92, %88
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %64
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.ata_taskfile*, i32, i32) #1

declare dso_local i32 @ata_dev_classify(%struct.ata_taskfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
