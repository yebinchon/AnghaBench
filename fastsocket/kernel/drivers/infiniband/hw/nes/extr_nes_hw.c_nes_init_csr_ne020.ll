; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_init_csr_ne020.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_init_csr_ne020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }

@NES_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"port_count=%d\0A\00", align 1
@NES_IDX_WQM_CONFIG1 = common dso_local global i32 0, align 4
@wqm_quanta = common dso_local global i32 0, align 4
@NE020_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, i32, i32)* @nes_init_csr_ne020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_init_csr_ne020(%struct.nes_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @NES_DBG_INIT, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @nes_debug(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %12 = call i32 @nes_write_indexed(%struct.nes_device* %11, i32 484, i32 7)
  %13 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %14 = call i32 @nes_write_indexed(%struct.nes_device* %13, i32 488, i32 133236)
  %15 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %16 = call i32 @nes_write_indexed(%struct.nes_device* %15, i32 472, i32 294914)
  %17 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %18 = call i32 @nes_write_indexed(%struct.nes_device* %17, i32 508, i32 327685)
  %19 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %20 = call i32 @nes_write_indexed(%struct.nes_device* %19, i32 1536, i32 1431655765)
  %21 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %22 = call i32 @nes_write_indexed(%struct.nes_device* %21, i32 1540, i32 1431655765)
  %23 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %24 = call i32 @nes_write_indexed(%struct.nes_device* %23, i32 8192, i32 1)
  %25 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %26 = call i32 @nes_write_indexed(%struct.nes_device* %25, i32 8196, i32 1)
  %27 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %28 = call i32 @nes_write_indexed(%struct.nes_device* %27, i32 8200, i32 65535)
  %29 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %30 = call i32 @nes_write_indexed(%struct.nes_device* %29, i32 8204, i32 1)
  %31 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %32 = call i32 @nes_write_indexed(%struct.nes_device* %31, i32 8208, i32 961)
  %33 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %34 = call i32 @nes_write_indexed(%struct.nes_device* %33, i32 8220, i32 1966364280)
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %39 = call i32 @nes_write_indexed(%struct.nes_device* %38, i32 8704, i32 1)
  %40 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %41 = call i32 @nes_write_indexed(%struct.nes_device* %40, i32 8708, i32 1)
  %42 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %43 = call i32 @nes_write_indexed(%struct.nes_device* %42, i32 8712, i32 65535)
  %44 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %45 = call i32 @nes_write_indexed(%struct.nes_device* %44, i32 8716, i32 1)
  %46 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %47 = call i32 @nes_write_indexed(%struct.nes_device* %46, i32 8720, i32 961)
  %48 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %49 = call i32 @nes_write_indexed(%struct.nes_device* %48, i32 8732, i32 1966364280)
  %50 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %51 = call i32 @nes_write_indexed(%struct.nes_device* %50, i32 2312, i32 536870913)
  br label %52

52:                                               ; preds = %37, %3
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %84

55:                                               ; preds = %52
  %56 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %57 = call i32 @nes_write_indexed(%struct.nes_device* %56, i32 9216, i32 1)
  %58 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %59 = call i32 @nes_write_indexed(%struct.nes_device* %58, i32 9220, i32 1)
  %60 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %61 = call i32 @nes_write_indexed(%struct.nes_device* %60, i32 9224, i32 65535)
  %62 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %63 = call i32 @nes_write_indexed(%struct.nes_device* %62, i32 9228, i32 1)
  %64 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %65 = call i32 @nes_write_indexed(%struct.nes_device* %64, i32 9232, i32 961)
  %66 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %67 = call i32 @nes_write_indexed(%struct.nes_device* %66, i32 9244, i32 1966364280)
  %68 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %69 = call i32 @nes_write_indexed(%struct.nes_device* %68, i32 2320, i32 536870913)
  %70 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %71 = call i32 @nes_write_indexed(%struct.nes_device* %70, i32 9728, i32 1)
  %72 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %73 = call i32 @nes_write_indexed(%struct.nes_device* %72, i32 9732, i32 1)
  %74 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %75 = call i32 @nes_write_indexed(%struct.nes_device* %74, i32 9736, i32 65535)
  %76 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %77 = call i32 @nes_write_indexed(%struct.nes_device* %76, i32 9740, i32 1)
  %78 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %79 = call i32 @nes_write_indexed(%struct.nes_device* %78, i32 9744, i32 961)
  %80 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %81 = call i32 @nes_write_indexed(%struct.nes_device* %80, i32 9756, i32 1966364280)
  %82 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %83 = call i32 @nes_write_indexed(%struct.nes_device* %82, i32 2328, i32 536870913)
  br label %84

84:                                               ; preds = %55, %52
  %85 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %86 = call i32 @nes_write_indexed(%struct.nes_device* %85, i32 20480, i32 98304)
  %87 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %88 = load i32, i32* @NES_IDX_WQM_CONFIG1, align 4
  %89 = load i32, i32* @wqm_quanta, align 4
  %90 = shl i32 %89, 1
  %91 = or i32 %90, 1
  %92 = call i32 @nes_write_indexed(%struct.nes_device* %87, i32 %88, i32 %91)
  %93 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %94 = call i32 @nes_write_indexed(%struct.nes_device* %93, i32 20488, i32 522133279)
  %95 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %96 = call i32 @nes_write_indexed(%struct.nes_device* %95, i32 20496, i32 522133279)
  %97 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %98 = call i32 @nes_write_indexed(%struct.nes_device* %97, i32 20504, i32 522133279)
  %99 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %100 = call i32 @nes_write_indexed(%struct.nes_device* %99, i32 20512, i32 522133279)
  %101 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %102 = call i32 @nes_write_indexed(%struct.nes_device* %101, i32 24720, i32 -1)
  %103 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %104 = call i32 @nes_write_indexed(%struct.nes_device* %103, i32 2304, i32 536870913)
  %105 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %106 = call i32 @nes_write_indexed(%struct.nes_device* %105, i32 24768, i32 654)
  %107 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %108 = call i32 @nes_write_indexed(%struct.nes_device* %107, i32 24776, i32 32)
  %109 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %110 = call i32 @nes_write_indexed(%struct.nes_device* %109, i32 492, i32 2066097568)
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @NE020_REV, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %84
  %115 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %116 = call i32 @nes_read_indexed(%struct.nes_device* %115, i32 2280)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, -2147483648
  store i32 %118, i32* %7, align 4
  %119 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @nes_write_indexed(%struct.nes_device* %119, i32 2280, i32 %120)
  %122 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %123 = call i32 @nes_read_indexed(%struct.nes_device* %122, i32 8696)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, 2147483647
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, 2147418128
  store i32 %127, i32* %7, align 4
  %128 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @nes_write_indexed(%struct.nes_device* %128, i32 8696, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %143

133:                                              ; preds = %114
  %134 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %135 = call i32 @nes_read_indexed(%struct.nes_device* %134, i32 9208)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 2147483647
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, 2147418128
  store i32 %139, i32* %7, align 4
  %140 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @nes_write_indexed(%struct.nes_device* %140, i32 9208, i32 %141)
  br label %143

143:                                              ; preds = %133, %114
  br label %144

144:                                              ; preds = %143, %84
  ret void
}

declare dso_local i32 @nes_debug(i32, i8*, i32) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i32, i32) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
