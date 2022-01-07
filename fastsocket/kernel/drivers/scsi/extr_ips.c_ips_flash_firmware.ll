; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_flash_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_flash_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i64 }
%struct.TYPE_31__ = type { i32, i32, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64, i8*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, i64, i64, %struct.TYPE_23__, i32, i64, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@IPS_FW_IMAGE = common dso_local global i64 0, align 8
@IPS_WRITE_FW = common dso_local global i64 0, align 8
@IPS_CMD_DOWNLOAD = common dso_local global i32 0, align 4
@IPS_FAILURE = common dso_local global i32 0, align 4
@ipsintr_done = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i64 0, align 8
@IPS_SCB_MAP_SINGLE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*)* @ips_flash_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_flash_firmware(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_21__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %10 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPS_FW_IMAGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPS_WRITE_FW, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = call i32 @memset(%struct.TYPE_22__* %30, i32 0, i32 4)
  %32 = load i32, i32* @IPS_CMD_DOWNLOAD, align 4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 3
  store i32 %32, i32* %37, align 8
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 2
  store i8* %41, i8** %46, align 8
  br label %55

47:                                               ; preds = %18, %3
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  store i32 11, i32* %49, align 8
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %53 = call i32 @ips_free_flash_copperhead(%struct.TYPE_32__* %52)
  %54 = load i32, i32* @IPS_FAILURE, align 4
  store i32 %54, i32* %4, align 4
  br label %176

55:                                               ; preds = %27
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = call i32 @memcpy(%struct.TYPE_23__* %65, %struct.TYPE_22__* %68, i32 4)
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 8
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 4
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @ipsintr_done, align 4
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* @ips_cmd_timeout, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %134 = call i32 @IPS_DMA_DIR(%struct.TYPE_30__* %133)
  %135 = call i64 @pci_map_single(i32 %126, i32 %129, i64 %132, i32 %134)
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @IPS_SCB_MAP_SINGLE, align 4
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %145 = call i32 @IPS_COMMAND_ID(%struct.TYPE_32__* %143, %struct.TYPE_30__* %144)
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i8* @cpu_to_le32(i64 %152)
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  store i8* %153, i8** %157, align 8
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %55
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %162, %55
  %169 = load i32, i32* @DID_OK, align 4
  %170 = shl i32 %169, 16
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 8
  %175 = load i32, i32* @IPS_SUCCESS, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %168, %47
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @ips_free_flash_copperhead(%struct.TYPE_32__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @IPS_DMA_DIR(%struct.TYPE_30__*) #1

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
