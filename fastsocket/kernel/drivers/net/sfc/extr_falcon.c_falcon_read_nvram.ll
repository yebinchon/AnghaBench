; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_read_nvram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_read_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { %struct.efx_spi_device, i32, %struct.efx_spi_device }
%struct.efx_spi_device = type { i32 }
%struct.falcon_nvconfig = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FALCON_NVCONFIG_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALCON_NVCONFIG_OFFSET = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed to read %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@EIO = common dso_local global i32 0, align 4
@FALCON_NVCONFIG_BOARD_MAGIC_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"NVRAM bad magic 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"NVRAM has ancient version 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"NVRAM has incorrect checksum\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.falcon_nvconfig*)* @falcon_read_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_read_nvram(%struct.efx_nic* %0, %struct.falcon_nvconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.falcon_nvconfig*, align 8
  %6 = alloca %struct.falcon_nic_data*, align 8
  %7 = alloca %struct.falcon_nvconfig*, align 8
  %8 = alloca %struct.efx_spi_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.falcon_nvconfig* %1, %struct.falcon_nvconfig** %5, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 1
  %18 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %17, align 8
  store %struct.falcon_nic_data* %18, %struct.falcon_nic_data** %6, align 8
  %19 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %20 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %19, i32 0, i32 0
  %21 = call i64 @efx_spi_present(%struct.efx_spi_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %25 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %24, i32 0, i32 0
  store %struct.efx_spi_device* %25, %struct.efx_spi_device** %8, align 8
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %28 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %27, i32 0, i32 2
  %29 = call i64 @efx_spi_present(%struct.efx_spi_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %33 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %32, i32 0, i32 2
  store %struct.efx_spi_device* %33, %struct.efx_spi_device** %8, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %170

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* @FALCON_NVCONFIG_END, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %170

47:                                               ; preds = %38
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @FALCON_NVCONFIG_OFFSET, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to %struct.falcon_nvconfig*
  store %struct.falcon_nvconfig* %52, %struct.falcon_nvconfig** %7, align 8
  %53 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %54 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %57 = load %struct.efx_spi_device*, %struct.efx_spi_device** %8, align 8
  %58 = load i32, i32* @FALCON_NVCONFIG_END, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @falcon_spi_read(%struct.efx_nic* %56, %struct.efx_spi_device* %57, i32 0, i32 %58, i32* null, i8* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %62 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %47
  %67 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %68 = load i32, i32* @hw, align 4
  %69 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %70 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %73 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %72, i32 0, i32 0
  %74 = call i64 @efx_spi_present(%struct.efx_spi_device* %73)
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %67, i32 %68, i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %166

81:                                               ; preds = %47
  %82 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %7, align 8
  %83 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %7, align 8
  %87 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @FALCON_NVCONFIG_BOARD_MAGIC_NUM, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %81
  %96 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %97 = load i32, i32* @hw, align 4
  %98 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %166

103:                                              ; preds = %81
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %108 = load i32, i32* @hw, align 4
  %109 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %110 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %107, i32 %108, i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %166

114:                                              ; preds = %103
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %7, align 8
  %119 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %118, i32 0, i32 0
  store i32* %119, i32** %13, align 8
  %120 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %7, align 8
  %121 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %120, i64 1
  %122 = bitcast %struct.falcon_nvconfig* %121 to i32*
  store i32* %122, i32** %14, align 8
  br label %131

123:                                              ; preds = %114
  %124 = load i8*, i8** %9, align 8
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %13, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* @FALCON_NVCONFIG_END, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** %14, align 8
  br label %131

131:                                              ; preds = %123, %117
  br label %132

132:                                              ; preds = %131
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %143, %132
  %134 = load i32*, i32** %13, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = icmp ult i32* %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le16_to_cpu(i32 %139)
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %137
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %13, align 8
  br label %133

146:                                              ; preds = %133
  %147 = load i32, i32* %15, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %148, 65535
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %153 = load i32, i32* @hw, align 4
  %154 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %155 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %152, i32 %153, i32 %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %166

158:                                              ; preds = %146
  store i32 0, i32* %10, align 4
  %159 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %160 = icmp ne %struct.falcon_nvconfig* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %163 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %7, align 8
  %164 = call i32 @memcpy(%struct.falcon_nvconfig* %162, %struct.falcon_nvconfig* %163, i32 8)
  br label %165

165:                                              ; preds = %161, %158
  br label %166

166:                                              ; preds = %165, %151, %106, %95, %66
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @kfree(i8* %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %166, %44, %34
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @efx_spi_present(%struct.efx_spi_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @falcon_spi_read(%struct.efx_nic*, %struct.efx_spi_device*, i32, i32, i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.falcon_nvconfig*, %struct.falcon_nvconfig*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
