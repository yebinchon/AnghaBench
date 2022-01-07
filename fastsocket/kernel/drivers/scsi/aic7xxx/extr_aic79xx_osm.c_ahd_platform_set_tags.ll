; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_set_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_set_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_linux_device = type { i32, i32, i32, i64, i32 }

@AHD_DEV_FREEZE_TIL_EMPTY = common dso_local global i32 0, align 4
@AHD_DEV_PERIODIC_OTAG = common dso_local global i32 0, align 4
@aic79xx_periodic_otag = common dso_local global i64 0, align 8
@MSG_SIMPLE_TASK = common dso_local global i32 0, align 4
@MSG_ORDERED_TASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_platform_set_tags(%struct.ahd_softc* %0, %struct.scsi_device* %1, %struct.ahd_devinfo* %2, i32 %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.ahd_devinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahd_linux_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store %struct.ahd_devinfo* %2, %struct.ahd_devinfo** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = icmp eq %struct.scsi_device* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %164

16:                                               ; preds = %4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = call %struct.ahd_linux_device* @scsi_transport_device_data(%struct.scsi_device* %17)
  store %struct.ahd_linux_device* %18, %struct.ahd_linux_device** %9, align 8
  %19 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %20 = icmp eq %struct.ahd_linux_device* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %164

22:                                               ; preds = %16
  %23 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %24 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 135
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %28 [
    i32 129, label %29
    i32 130, label %30
    i32 128, label %31
  ]

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %22, %28
  store i32 0, i32* %11, align 4
  br label %32

30:                                               ; preds = %22
  store i32 132, i32* %11, align 4
  br label %32

31:                                               ; preds = %22
  store i32 131, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %30, %29
  %33 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %34 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AHD_DEV_FREEZE_TIL_EMPTY, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %45 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* @AHD_DEV_FREEZE_TIL_EMPTY, align 4
  %50 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %51 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %55 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %48, %43, %39, %32
  %59 = load i32, i32* @AHD_DEV_PERIODIC_OTAG, align 4
  %60 = or i32 135, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %63 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %58
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %70 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %71 = call i64 @ahd_linux_user_tagdepth(%struct.ahd_softc* %69, %struct.ahd_devinfo* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %77 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %79 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %82 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %80, %84
  %86 = trunc i64 %85 to i32
  %87 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %88 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %74, %68
  %90 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %91 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %96 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  br label %120

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %102 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, 131
  store i32 %104, i32* %102, align 8
  %105 = load i64, i64* @aic79xx_periodic_otag, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @AHD_DEV_PERIODIC_OTAG, align 4
  %109 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %110 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %100
  br label %119

114:                                              ; preds = %97
  %115 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %116 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, 132
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %113
  br label %120

120:                                              ; preds = %119, %94
  br label %130

121:                                              ; preds = %58
  %122 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %123 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %125 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 1, %126
  %128 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %129 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %121, %120
  %131 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %132 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 135
  switch i32 %134, label %161 [
    i32 132, label %135
    i32 131, label %148
  ]

135:                                              ; preds = %130
  %136 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %137 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %138 = call i32 @scsi_set_tag_type(%struct.scsi_device* %136, i32 %137)
  %139 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %140 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %141 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %144 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = call i32 @scsi_activate_tcq(%struct.scsi_device* %139, i32 %146)
  br label %164

148:                                              ; preds = %130
  %149 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %150 = load i32, i32* @MSG_ORDERED_TASK, align 4
  %151 = call i32 @scsi_set_tag_type(%struct.scsi_device* %149, i32 %150)
  %152 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %153 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %154 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %9, align 8
  %157 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = call i32 @scsi_activate_tcq(%struct.scsi_device* %152, i32 %159)
  br label %164

161:                                              ; preds = %130
  %162 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %163 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %162, i32 1)
  br label %164

164:                                              ; preds = %15, %21, %161, %148, %135
  ret void
}

declare dso_local %struct.ahd_linux_device* @scsi_transport_device_data(%struct.scsi_device*) #1

declare dso_local i64 @ahd_linux_user_tagdepth(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @scsi_set_tag_type(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
