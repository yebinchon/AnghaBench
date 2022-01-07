; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_gpct_device_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_gpct_device_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct_device = type { void (%struct.ni_gpct*, i32, i32)*, i32 (%struct.ni_gpct.0*, i32)*, i32, i32, %struct.TYPE_2__*, i32, %struct.comedi_device* }
%struct.ni_gpct = type opaque
%struct.ni_gpct.0 = type opaque
%struct.TYPE_2__ = type { i32, %struct.ni_gpct_device* }
%struct.comedi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ni_gpct_device* @ni_gpct_device_construct(%struct.comedi_device* %0, {}* %1, {}* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ni_gpct_device*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca {}*, align 8
  %9 = alloca {}*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ni_gpct_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store {}* %1, {}** %8, align 8
  store {}* %2, {}** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 48, i32 %14)
  %16 = bitcast i8* %15 to %struct.ni_gpct_device*
  store %struct.ni_gpct_device* %16, %struct.ni_gpct_device** %13, align 8
  %17 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %18 = icmp eq %struct.ni_gpct_device* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store %struct.ni_gpct_device* null, %struct.ni_gpct_device** %6, align 8
  br label %88

20:                                               ; preds = %5
  %21 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %22 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %23 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %22, i32 0, i32 6
  store %struct.comedi_device* %21, %struct.comedi_device** %23, align 8
  %24 = load {}*, {}** %8, align 8
  %25 = bitcast {}* %24 to void (%struct.ni_gpct*, i32, i32)*
  %26 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %27 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %26, i32 0, i32 0
  store void (%struct.ni_gpct*, i32, i32)* %25, void (%struct.ni_gpct*, i32, i32)** %27, align 8
  %28 = load {}*, {}** %9, align 8
  %29 = bitcast {}* %28 to i32 (%struct.ni_gpct.0*, i32)*
  %30 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %31 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %30, i32 0, i32 1
  store i32 (%struct.ni_gpct.0*, i32)* %29, i32 (%struct.ni_gpct.0*, i32)** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %34 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %36 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %35, i32 0, i32 5
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 %45, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_2__*
  %49 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %50 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %49, i32 0, i32 4
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  %51 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %52 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp eq %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %20
  %56 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %57 = call i32 @kfree(%struct.ni_gpct_device* %56)
  store %struct.ni_gpct_device* null, %struct.ni_gpct_device** %6, align 8
  br label %88

58:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %65 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %66 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store %struct.ni_gpct_device* %64, %struct.ni_gpct_device** %71, align 8
  %72 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %73 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_init(i32* %78)
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  %86 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  store %struct.ni_gpct_device* %87, %struct.ni_gpct_device** %6, align 8
  br label %88

88:                                               ; preds = %83, %55, %19
  %89 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  ret %struct.ni_gpct_device* %89
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.ni_gpct_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
