; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel_cs.c_atmel_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel_cs.c_atmel_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_AUDIO = common dso_local global i32 0, align 4
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CCSR_AUDIO_ENA = common dso_local global i32 0, align 4
@CISTPL_POWER_VNOM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@CISTPL_IO_8BIT = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@CISTPL_IO_16BIT = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i8*)* @atmel_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_config_check(%struct.pcmcia_device* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %216

20:                                               ; preds = %5
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CISTPL_CFTABLE_AUDIO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @CCSR_AUDIO_ENA, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %27, %20
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 10000
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %83

60:                                               ; preds = %38
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 10000
  %79 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %80 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %69, %60
  br label %83

83:                                               ; preds = %82, %47
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89, %83
  %96 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %97 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %98 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %89
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %104 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %107 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %102
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %211

120:                                              ; preds = %114, %102
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  br label %132

129:                                              ; preds = %120
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi %struct.TYPE_14__* [ %128, %126 ], [ %131, %129 ]
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %12, align 8
  %134 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %135 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %136 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CISTPL_IO_8BIT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %132
  %145 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %146 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %147 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  store i32 %145, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %132
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CISTPL_IO_16BIT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %158 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %159 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %156, %149
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %169 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 5
  store i32 %167, i32* %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %178 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 4
  store i64 %176, i64* %179, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %182, 1
  br i1 %183, label %184, label %210

184:                                              ; preds = %161
  %185 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %186 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %190 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 3
  store i32 %188, i32* %191, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %199 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %208 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  store i64 %206, i64* %209, align 8
  br label %210

210:                                              ; preds = %184, %161
  br label %211

211:                                              ; preds = %210, %114
  %212 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %214 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %213, i32 0, i32 0
  %215 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %212, %struct.TYPE_16__* %214)
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %211, %17
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
