; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_diag.c_mdsk_init_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_diag.c_mdsk_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64 }
%struct.dasd_diag_private = type { %struct.TYPE_2__, %struct.dasd_diag_init_io }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_diag_init_io = type { i32, i32, i32, i32, i32 }

@DASD_DIAG_FLAGA_DEFAULT = common dso_local global i32 0, align 4
@INIT_BIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, i32, i32*)* @mdsk_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdsk_init_io(%struct.dasd_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dasd_diag_private*, align 8
  %10 = alloca %struct.dasd_diag_init_io*, align 8
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dasd_diag_private*
  store %struct.dasd_diag_private* %15, %struct.dasd_diag_private** %9, align 8
  %16 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %9, align 8
  %17 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %16, i32 0, i32 1
  store %struct.dasd_diag_init_io* %17, %struct.dasd_diag_init_io** %10, align 8
  %18 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %19 = call i32 @memset(%struct.dasd_diag_init_io* %18, i32 0, i32 20)
  %20 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %9, align 8
  %21 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %25 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %28 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %31 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DASD_DIAG_FLAGA_DEFAULT, align 4
  %33 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %34 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %36 = load i32, i32* @INIT_BIO, align 4
  %37 = call i32 @dia250(%struct.dasd_diag_init_io* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %46 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41, %4
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.dasd_diag_init_io*, i32, i32) #1

declare dso_local i32 @dia250(%struct.dasd_diag_init_io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
