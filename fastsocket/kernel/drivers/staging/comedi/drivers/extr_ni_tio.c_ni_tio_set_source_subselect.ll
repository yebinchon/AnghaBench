; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_source_subselect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_source_subselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i64, i32* }

@ni_gpct_variant_m_series = common dso_local global i64 0, align 8
@NI_GPCT_CLOCK_SRC_SELECT_MASK = common dso_local global i32 0, align 4
@Gi_Source_Subselect_Bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32)* @ni_tio_set_source_subselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_set_source_subselect(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %8 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %7, i32 0, i32 1
  %9 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  store %struct.ni_gpct_device* %9, %struct.ni_gpct_device** %5, align 8
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @NITIO_Gi_Second_Gate_Reg(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %15 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ni_gpct_variant_m_series, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %57

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NI_GPCT_CLOCK_SRC_SELECT_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %45 [
    i32 130, label %24
    i32 128, label %24
    i32 131, label %35
    i32 129, label %35
  ]

24:                                               ; preds = %20, %20
  %25 = load i32, i32* @Gi_Source_Subselect_Bit, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %28 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %26
  store i32 %34, i32* %32, align 4
  br label %46

35:                                               ; preds = %20, %20
  %36 = load i32, i32* @Gi_Source_Subselect_Bit, align 4
  %37 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %38 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %36
  store i32 %44, i32* %42, align 4
  br label %46

45:                                               ; preds = %20
  br label %57

46:                                               ; preds = %35, %24
  %47 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %48 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %49 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @write_register(%struct.ni_gpct* %47, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %45, %19
  ret void
}

declare dso_local i32 @NITIO_Gi_Second_Gate_Reg(i32) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
