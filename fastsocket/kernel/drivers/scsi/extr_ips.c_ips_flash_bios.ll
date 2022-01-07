; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_flash_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_flash_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i64, i64 }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*, i64, i64, i32)*, i64 (%struct.TYPE_19__*, i64, i64, i32)* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }

@IPS_BIOS_IMAGE = common dso_local global i64 0, align 8
@IPS_WRITE_BIOS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"(%s%d) flash bios failed - unable to erase flash\00", align 1
@ips_name = common dso_local global i32 0, align 4
@IPS_BIOS_HEADER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"(%s%d) flash bios failed - unable to flash\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"(%s%d) flash bios failed - unable to verify flash\00", align 1
@IPS_SUCCESS_IMM = common dso_local global i32 0, align 4
@IPS_ERASE_BIOS = common dso_local global i64 0, align 8
@IPS_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, i32*)* @ips_flash_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_flash_bios(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPS_BIOS_IMAGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %112

16:                                               ; preds = %3
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPS_WRITE_BIOS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %112

25:                                               ; preds = %16
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i64 (%struct.TYPE_19__*, i64, i64, i32)*, i64 (%struct.TYPE_19__*, i64, i64, i32)** %28, align 8
  %30 = icmp ne i64 (%struct.TYPE_19__*, i64, i64, i32)* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %34, align 8
  %36 = icmp ne i64 (%struct.TYPE_19__*)* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i64 (%struct.TYPE_19__*, i64, i64, i32)*, i64 (%struct.TYPE_19__*, i64, i64, i32)** %40, align 8
  %42 = icmp ne i64 (%struct.TYPE_19__*, i64, i64, i32)* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %31, %25
  br label %155

44:                                               ; preds = %37
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = call i64 %48(%struct.TYPE_19__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* @ips_name, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  br label %155

58:                                               ; preds = %44
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i64 (%struct.TYPE_19__*, i64, i64, i32)*, i64 (%struct.TYPE_19__*, i64, i64, i32)** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IPS_BIOS_HEADER, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPS_BIOS_HEADER, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i64 %62(%struct.TYPE_19__* %63, i64 %68, i64 %73, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %58
  %77 = load i32, i32* @ips_name, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80)
  br label %155

82:                                               ; preds = %58
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64 (%struct.TYPE_19__*, i64, i64, i32)*, i64 (%struct.TYPE_19__*, i64, i64, i32)** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IPS_BIOS_HEADER, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IPS_BIOS_HEADER, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i64 %86(%struct.TYPE_19__* %87, i64 %92, i64 %97, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %82
  %101 = load i32, i32* @ips_name, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104)
  br label %155

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = call i32 @ips_free_flash_copperhead(%struct.TYPE_19__* %109)
  %111 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  store i32 %111, i32* %4, align 4
  br label %163

112:                                              ; preds = %16, %3
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IPS_BIOS_IMAGE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %112
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IPS_ERASE_BIOS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %121
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %133, align 8
  %135 = icmp ne i64 (%struct.TYPE_19__*)* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  br label %155

137:                                              ; preds = %130
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %143 = call i64 %141(%struct.TYPE_19__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load i32, i32* @ips_name, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %149)
  br label %155

151:                                              ; preds = %137
  %152 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  store i32 %152, i32* %4, align 4
  br label %163

153:                                              ; preds = %121, %112
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %145, %136, %100, %76, %52, %43
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  store i32 11, i32* %157, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = call i32 @ips_free_flash_copperhead(%struct.TYPE_19__* %160)
  %162 = load i32, i32* @IPS_FAILURE, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %155, %151, %108
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32) #1

declare dso_local i32 @ips_free_flash_copperhead(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
