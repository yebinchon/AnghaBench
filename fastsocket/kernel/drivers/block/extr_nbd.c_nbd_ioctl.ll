; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nbd.c_nbd_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nbd.c_nbd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nbd_device* }
%struct.nbd_device = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LO_MAGIC = common dso_local global i64 0, align 8
@DBG_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: nbd_ioctl cmd=%s(0x%x) arg=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @nbd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nbd_device*, align 8
  %11 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nbd_device*, %struct.nbd_device** %15, align 8
  store %struct.nbd_device* %16, %struct.nbd_device** %10, align 8
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %25 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LO_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* @DBG_IOCTL, align 4
  %32 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %33 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ioctl_cmd_to_ascii(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @dprintk(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38, i32 %39, i64 %40)
  %42 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %43 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.block_device*, %struct.block_device** %6, align 8
  %46 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @__nbd_ioctl(%struct.block_device* %45, %struct.nbd_device* %46, i32 %47, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %51 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %23, %20
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ioctl_cmd_to_ascii(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__nbd_ioctl(%struct.block_device*, %struct.nbd_device*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
