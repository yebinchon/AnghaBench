; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c___ata_scsi_queuecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c___ata_scsi_queuecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i32, i32 }
%struct.ata_device = type { i64, i32 }

@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_16 = common dso_local global i64 0, align 8
@atapi_passthru16 = common dso_local global i32 0, align 4
@atapi_xlat = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"bad CDB len=%u, scsi_op=0x%02x, max=%u\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*, %struct.ata_device*)* @__ata_scsi_queuecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1, %struct.ata_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca void (%struct.scsi_cmnd*)*, align 8
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %6, align 8
  store %struct.ata_device* %2, %struct.ata_device** %7, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATA_DEV_ATA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %30, %33
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i1 [ true, %22 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %120

41:                                               ; preds = %35
  %42 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32* @ata_get_xlat_func(%struct.ata_device* %42, i64 %43)
  store i32* %44, i32** %9, align 8
  br label %104

45:                                               ; preds = %3
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %120

55:                                               ; preds = %45
  store i32* null, i32** %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @ATA_16, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @atapi_passthru16, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @COMMAND_SIZE(i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %79 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %77, %80
  br label %82

82:                                               ; preds = %76, %68
  %83 = phi i1 [ true, %68 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %120

88:                                               ; preds = %82
  %89 = load i32*, i32** @atapi_xlat, align 8
  store i32* %89, i32** %9, align 8
  br label %103

90:                                               ; preds = %63
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 16
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %120

99:                                               ; preds = %90
  %100 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32* @ata_get_xlat_func(%struct.ata_device* %100, i64 %101)
  store i32* %102, i32** %9, align 8
  br label %103

103:                                              ; preds = %99, %88
  br label %104

104:                                              ; preds = %103, %41
  %105 = load i32*, i32** %9, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %110 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @ata_scsi_translate(%struct.ata_device* %108, %struct.scsi_cmnd* %109, void (%struct.scsi_cmnd*)* %110, i32* %111)
  store i32 %112, i32* %10, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %116 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %117 = call i32 @ata_scsi_simulate(%struct.ata_device* %114, %struct.scsi_cmnd* %115, void (%struct.scsi_cmnd*)* %116)
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %135

120:                                              ; preds = %98, %87, %54, %40
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %126 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %123, i64 %124, i32 %127)
  %129 = load i32, i32* @DID_ERROR, align 4
  %130 = shl i32 %129, 16
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  call void %133(%struct.scsi_cmnd* %134)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %120, %118
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @ata_get_xlat_func(%struct.ata_device*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @COMMAND_SIZE(i64) #1

declare dso_local i32 @ata_scsi_translate(%struct.ata_device*, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*, i32*) #1

declare dso_local i32 @ata_scsi_simulate(%struct.ata_device*, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
