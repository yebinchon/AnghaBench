; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_allocate_fid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_allocate_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, i32, %struct.hermes, %struct.device* }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32*)* }
%struct.device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@TX_NICBUF_SIZE_BUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Firmware ALLOC bug detected (old Symbol firmware?). Work around %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"failed!\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ok.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_hw_allocate_fid(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %7 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %6, i32 0, i32 3
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %10 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %9, i32 0, i32 2
  store %struct.hermes* %10, %struct.hermes** %4, align 8
  %11 = load %struct.hermes*, %struct.hermes** %4, align 8
  %12 = getelementptr inbounds %struct.hermes, %struct.hermes* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.hermes*, i32, i32*)*, i32 (%struct.hermes*, i32, i32*)** %14, align 8
  %16 = load %struct.hermes*, %struct.hermes** %4, align 8
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %21 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %20, i32 0, i32 0
  %22 = call i32 %15(%struct.hermes* %16, i32 %19, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %29 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TX_NICBUF_SIZE_BUG, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32, i32* @TX_NICBUF_SIZE_BUG, align 4
  %35 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %36 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hermes*, %struct.hermes** %4, align 8
  %38 = getelementptr inbounds %struct.hermes, %struct.hermes* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.hermes*, i32, i32*)*, i32 (%struct.hermes*, i32, i32*)** %40, align 8
  %42 = load %struct.hermes*, %struct.hermes** %4, align 8
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %44 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %47 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %46, i32 0, i32 0
  %48 = call i32 %41(%struct.hermes* %42, i32 %45, i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %33, %27, %1
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
