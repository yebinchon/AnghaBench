; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_sync_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@ni_tio_set_sync_mode.min_normal_sync_period_ps = internal constant i64 25000, align 8
@Gi_Counting_Mode_Mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32)* @ni_tio_set_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_set_sync_mode(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %9 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %8, i32 0, i32 1
  %10 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %9, align 8
  store %struct.ni_gpct_device* %10, %struct.ni_gpct_device** %5, align 8
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @NITIO_Gi_Counting_Mode_Reg(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %17 = call i32 @ni_tio_generic_clock_src_select(%struct.ni_gpct* %16)
  %18 = call i64 @ni_tio_clock_period_ps(%struct.ni_gpct* %15, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %20 = call i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %24, i32 %25)
  %27 = load i32, i32* @Gi_Counting_Mode_Mask, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %30 [
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %23, %23, %23, %23
  store i32 1, i32* %4, align 4
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %38, 25000
  br i1 %39, label %40, label %52

40:                                               ; preds = %37, %31
  %41 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %44 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Gi_Alternate_Sync_Bit(i32 %45)
  %47 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %48 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Gi_Alternate_Sync_Bit(i32 %49)
  %51 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %41, i32 %42, i32 %46, i32 %50)
  br label %60

52:                                               ; preds = %37, %34
  %53 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %56 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Gi_Alternate_Sync_Bit(i32 %57)
  %59 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %53, i32 %54, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %22, %52, %40
  ret void
}

declare dso_local i32 @NITIO_Gi_Counting_Mode_Reg(i32) #1

declare dso_local i64 @ni_tio_clock_period_ps(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_tio_generic_clock_src_select(%struct.ni_gpct*) #1

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @Gi_Alternate_Sync_Bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
