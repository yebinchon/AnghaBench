; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_transfer_fifo_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_transfer_fifo_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.sg_mapping_iter = type { i32, i32 }

@MS_TPC_SET_RW_REG_ADRS = common dso_local global i64 0, align 8
@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*)* @r592_transfer_fifo_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_transfer_fifo_pio(%struct.r592_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_mapping_iter, align 4
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  %7 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %8 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MS_TPC_SET_RW_REG_ADRS, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %16 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %15, i32 0, i32 1
  %17 = call i32 @kfifo_reset(i32* %16)
  %18 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %19 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %29 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %30 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %35 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @r592_write_fifo_pio(%struct.r592_device* %28, i32 %33, i32 %38)
  %40 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %41 = call i32 @r592_flush_fifo_write(%struct.r592_device* %40)
  br label %55

42:                                               ; preds = %24
  %43 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %44 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %45 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %50 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @r592_read_fifo_pio(%struct.r592_device* %43, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %42, %27
  store i32 0, i32* %2, align 4
  br label %105

56:                                               ; preds = %1
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @local_irq_save(i64 %57)
  %59 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %60 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @SG_MITER_FROM_SG, align 4
  br label %70

68:                                               ; preds = %56
  %69 = load i32, i32* @SG_MITER_TO_SG, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = or i32 %63, %71
  %73 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %6, i32* %62, i32 1, i32 %72)
  br label %74

74:                                               ; preds = %94, %70
  %75 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %6)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %82 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @r592_write_fifo_pio(%struct.r592_device* %81, i32 %83, i32 %85)
  br label %94

87:                                               ; preds = %77
  %88 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %89 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @r592_read_fifo_pio(%struct.r592_device* %88, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %87, %80
  br label %74

95:                                               ; preds = %74
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %100 = call i32 @r592_flush_fifo_write(%struct.r592_device* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %6)
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @local_irq_restore(i64 %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %55
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @kfifo_reset(i32*) #1

declare dso_local i32 @r592_write_fifo_pio(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_flush_fifo_write(%struct.r592_device*) #1

declare dso_local i32 @r592_read_fifo_pio(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32*, i32, i32) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
