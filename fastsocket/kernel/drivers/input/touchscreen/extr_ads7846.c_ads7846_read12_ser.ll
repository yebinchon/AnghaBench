; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_ads7846_read12_ser.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_ads7846_read12_ser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.ads7846 = type { i32, i32, i32 }
%struct.ser_req = type { i32, i32, %struct.TYPE_3__*, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32*, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REF_ON = common dso_local global i64 0, align 8
@PWRDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ads7846_read12_ser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7846_read12_ser(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.ads7846*, align 8
  %8 = alloca %struct.ser_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.spi_device* @to_spi_device(%struct.device* %11)
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.ads7846* @dev_get_drvdata(%struct.device* %13)
  store %struct.ads7846* %14, %struct.ads7846** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ser_req* @kzalloc(i32 48, i32 %15)
  store %struct.ser_req* %16, %struct.ser_req** %8, align 8
  %17 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %18 = icmp ne %struct.ser_req* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %203

22:                                               ; preds = %2
  %23 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %24 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %23, i32 0, i32 1
  %25 = call i32 @spi_message_init(i32* %24)
  %26 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %27 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 7846
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %22
  %34 = load i64, i64* @REF_ON, align 8
  %35 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %36 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %38 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %37, i32 0, i32 6
  %39 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %40 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i64* %38, i64** %43, align 8
  %44 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %45 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %50 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %54 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %53, i32 0, i32 1
  %55 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %52, i32* %54)
  %56 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %57 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %56, i32 0, i32 3
  %58 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %59 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32* %57, i32** %62, align 8
  %63 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %64 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %69 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %72 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i32 %70, i32* %75, align 8
  %76 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %77 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %81 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %80, i32 0, i32 1
  %82 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %79, i32* %81)
  br label %83

83:                                               ; preds = %33, %22
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %87 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %89 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %88, i32 0, i32 5
  %90 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %91 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i64* %89, i64** %94, align 8
  %95 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %96 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %101 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 2
  %104 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %105 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %104, i32 0, i32 1
  %106 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %103, i32* %105)
  %107 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %108 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %107, i32 0, i32 0
  %109 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %110 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32* %108, i32** %113, align 8
  %114 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %115 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 2, i32* %118, align 8
  %119 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %120 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 3
  %123 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %124 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %123, i32 0, i32 1
  %125 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %122, i32* %124)
  %126 = load i64, i64* @PWRDOWN, align 8
  %127 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %128 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %127, i32 0, i32 4
  store i64 %126, i64* %128, align 8
  %129 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %130 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %129, i32 0, i32 4
  %131 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %132 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %131, i32 0, i32 2
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i64* %130, i64** %135, align 8
  %136 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %137 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %142 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %141, i32 0, i32 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 4
  %145 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %146 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %145, i32 0, i32 1
  %147 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %144, i32* %146)
  %148 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %149 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %148, i32 0, i32 3
  %150 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %151 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 5
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  store i32* %149, i32** %154, align 8
  %155 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %156 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %155, i32 0, i32 2
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 5
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i32 2, i32* %159, align 8
  %160 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %161 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %160, i32 0, i32 2
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 5
  %164 = call i32 @CS_CHANGE(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %163)
  %165 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %166 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %165, i32 0, i32 2
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 5
  %169 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %170 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %169, i32 0, i32 1
  %171 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %168, i32* %170)
  %172 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %173 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  %174 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %175 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @disable_irq(i32 %176)
  %178 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %179 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %180 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %179, i32 0, i32 1
  %181 = call i32 @spi_sync(%struct.spi_device* %178, i32* %180)
  store i32 %181, i32* %9, align 4
  %182 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %183 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %182, i32 0, i32 1
  store i32 0, i32* %183, align 4
  %184 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %185 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @enable_irq(i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %83
  %191 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %192 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @be16_to_cpu(i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = ashr i32 %195, 3
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = and i32 %197, 4095
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %190, %83
  %200 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %201 = call i32 @kfree(%struct.ser_req* %200)
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %199, %19
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.ads7846* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ser_req* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @CS_CHANGE(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ser_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
