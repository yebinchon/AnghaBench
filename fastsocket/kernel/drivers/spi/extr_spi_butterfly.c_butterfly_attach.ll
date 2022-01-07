; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_butterfly.c_butterfly_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_butterfly.c_butterfly_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.butterfly = type { %struct.TYPE_8__, %struct.pardevice*, %struct.parport*, %struct.TYPE_6__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.pardevice = type { i32 }
%struct.parport = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.butterfly*, i32*, i32 }
%struct.spi_master = type { i32, i32 }

@butterfly = common dso_local global %struct.butterfly* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@butterfly_chipselect = common dso_local global i32 0, align 4
@butterfly_txrx_word_mode0 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"spi_butterfly\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: powerup/reset Butterfly\0A\00", align 1
@spi_cs_bit = common dso_local global i32 0, align 4
@vcc_bits = common dso_local global i32 0, align 4
@butterfly_nreset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"mtd_dataflash\00", align 1
@flash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: dataflash at %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: AVR Butterfly\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: butterfly probe, fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @butterfly_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @butterfly_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.butterfly*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %8 = load %struct.parport*, %struct.parport** %2, align 8
  %9 = getelementptr inbounds %struct.parport, %struct.parport* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.butterfly*, %struct.butterfly** @butterfly, align 8
  %14 = icmp ne %struct.butterfly* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %1
  br label %196

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call %struct.spi_master* @spi_alloc_master(%struct.device* %20, i32 64)
  store %struct.spi_master* %21, %struct.spi_master** %6, align 8
  %22 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %23 = icmp ne %struct.spi_master* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %190

27:                                               ; preds = %19
  %28 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %29 = call %struct.butterfly* @spi_master_get_devdata(%struct.spi_master* %28)
  store %struct.butterfly* %29, %struct.butterfly** %5, align 8
  %30 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 0
  store i32 42, i32* %31, align 4
  %32 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %33 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %32, i32 0, i32 1
  store i32 2, i32* %33, align 4
  %34 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %35 = call i32 @spi_master_get(%struct.spi_master* %34)
  %36 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %37 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @butterfly_chipselect, align 4
  %40 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %41 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @butterfly_txrx_word_mode0, align 4
  %44 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %45 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SPI_MODE_0, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.parport*, %struct.parport** %2, align 8
  %51 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %52 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %51, i32 0, i32 2
  store %struct.parport* %50, %struct.parport** %52, align 8
  %53 = load %struct.parport*, %struct.parport** %2, align 8
  %54 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %55 = call %struct.pardevice* @parport_register_device(%struct.parport* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, %struct.butterfly* %54)
  store %struct.pardevice* %55, %struct.pardevice** %3, align 8
  %56 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %57 = icmp ne %struct.pardevice* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %27
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %184

61:                                               ; preds = %27
  %62 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %63 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %64 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %63, i32 0, i32 1
  store %struct.pardevice* %62, %struct.pardevice** %64, align 8
  %65 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %66 = call i32 @parport_claim(%struct.pardevice* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %181

70:                                               ; preds = %61
  %71 = load %struct.parport*, %struct.parport** %2, align 8
  %72 = getelementptr inbounds %struct.parport, %struct.parport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %76 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %75, i32 0, i32 2
  %77 = load %struct.parport*, %struct.parport** %76, align 8
  %78 = load i32, i32* @spi_cs_bit, align 4
  %79 = call i32 @parport_frob_control(%struct.parport* %77, i32 %78, i32 0)
  %80 = load i32, i32* @vcc_bits, align 4
  %81 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %82 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %86 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %85, i32 0, i32 2
  %87 = load %struct.parport*, %struct.parport** %86, align 8
  %88 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %89 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @parport_write_data(%struct.parport* %87, i32 %90)
  %92 = call i32 @msleep(i32 5)
  %93 = load i32, i32* @butterfly_nreset, align 4
  %94 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %95 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %99 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %98, i32 0, i32 2
  %100 = load %struct.parport*, %struct.parport** %99, align 8
  %101 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %102 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @parport_write_data(%struct.parport* %100, i32 %103)
  %105 = call i32 @msleep(i32 100)
  %106 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %107 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %106, i32 0, i32 0
  %108 = call i32 @spi_bitbang_start(%struct.TYPE_8__* %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %70
  br label %172

112:                                              ; preds = %70
  %113 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %114 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %113, i32 0, i32 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 15000000, i32* %117, align 8
  %118 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %119 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %118, i32 0, i32 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @strcpy(i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %126 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %125, i32 0, i32 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i32* @flash, i32** %129, align 8
  %130 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %131 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %130, i32 0, i32 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %136 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %137 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %136, i32 0, i32 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store %struct.butterfly* %135, %struct.butterfly** %140, align 8
  %141 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %142 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %146 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %145, i32 0, i32 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 0
  %149 = call %struct.TYPE_6__* @spi_new_device(i32 %144, %struct.TYPE_7__* %148)
  %150 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %151 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %150, i32 0, i32 3
  store %struct.TYPE_6__* %149, %struct.TYPE_6__** %151, align 8
  %152 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %153 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %152, i32 0, i32 3
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = icmp ne %struct.TYPE_6__* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %112
  %157 = load %struct.parport*, %struct.parport** %2, align 8
  %158 = getelementptr inbounds %struct.parport, %struct.parport* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %161 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 @dev_name(i32* %163)
  %165 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %156, %112
  %167 = load %struct.parport*, %struct.parport** %2, align 8
  %168 = getelementptr inbounds %struct.parport, %struct.parport* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  store %struct.butterfly* %171, %struct.butterfly** @butterfly, align 8
  br label %196

172:                                              ; preds = %111
  %173 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %174 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %173, i32 0, i32 2
  %175 = load %struct.parport*, %struct.parport** %174, align 8
  %176 = call i32 @parport_write_data(%struct.parport* %175, i32 0)
  %177 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %178 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %177, i32 0, i32 1
  %179 = load %struct.pardevice*, %struct.pardevice** %178, align 8
  %180 = call i32 @parport_release(%struct.pardevice* %179)
  br label %181

181:                                              ; preds = %172, %69
  %182 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %183 = call i32 @parport_unregister_device(%struct.pardevice* %182)
  br label %184

184:                                              ; preds = %181, %58
  %185 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %186 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @spi_master_put(i32 %188)
  br label %190

190:                                              ; preds = %184, %24
  %191 = load %struct.parport*, %struct.parport** %2, align 8
  %192 = getelementptr inbounds %struct.parport, %struct.parport* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %190, %166, %18
  ret void
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.butterfly* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_master_get(%struct.spi_master*) #1

declare dso_local %struct.pardevice* @parport_register_device(%struct.parport*, i8*, i32*, i32*, i32*, i32, %struct.butterfly*) #1

declare dso_local i32 @parport_claim(%struct.pardevice*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @parport_frob_control(%struct.parport*, i32, i32) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @spi_new_device(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @parport_release(%struct.pardevice*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

declare dso_local i32 @spi_master_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
