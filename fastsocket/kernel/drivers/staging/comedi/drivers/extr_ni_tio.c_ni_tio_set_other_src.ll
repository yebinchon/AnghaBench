; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_other_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_other_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i64, i32* }

@ni_gpct_variant_m_series = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32)* @ni_tio_set_other_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_set_other_src(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 1
  %14 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  store %struct.ni_gpct_device* %14, %struct.ni_gpct_device** %8, align 8
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %16 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ni_gpct_variant_m_series, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %3
  %21 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %22 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @NITIO_Gi_ABZ_Reg(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %29 [
    i32 130, label %26
    i32 129, label %27
    i32 128, label %28
  ]

26:                                               ; preds = %20
  store i32 10, i32* %10, align 4
  br label %32

27:                                               ; preds = %20
  store i32 5, i32* %10, align 4
  br label %32

28:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %28, %27, %26
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 31, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ugt i32 %35, 31
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 31, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %11, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %42 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %40
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %55 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %53
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %63 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %64 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @write_register(%struct.ni_gpct* %62, i32 %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %75

72:                                               ; preds = %3
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %38, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @NITIO_Gi_ABZ_Reg(i32) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
