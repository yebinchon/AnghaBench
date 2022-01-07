; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_fwload_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_fwload_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@S2255_FW_NOTLOADED = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@s2255_fwchunk_complete = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2255_dev*, i32)* @s2255_fwload_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_fwload_start(%struct.s2255_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.s2255_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s2255_dev* %0, %struct.s2255_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %9 = call i32 @s2255_reset_dsppower(%struct.s2255_dev* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %12 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %19 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i32 %17, i32* %21, align 4
  %22 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %23 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* @S2255_FW_NOTLOADED, align 4
  %27 = call i32 @atomic_set(i32* %25, i32 %26)
  %28 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %29 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %34 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CHUNK_SIZE, align 4
  %41 = call i32 @memcpy(i32 %32, i32 %39, i32 %40)
  %42 = load i32, i32* @CHUNK_SIZE, align 4
  %43 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %44 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 8
  %47 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %48 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %53 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %56 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @usb_sndbulkpipe(i32 %57, i32 2)
  %59 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %60 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CHUNK_SIZE, align 4
  %65 = load i32, i32* @s2255_fwchunk_complete, align 4
  %66 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %67 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @usb_fill_bulk_urb(i32 %51, i32 %54, i32 %58, i32 %63, i32 %64, i32 %65, %struct.TYPE_4__* %68)
  %70 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %71 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %70, i32 0, i32 0
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* @HZ, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @mod_timer(i32* %71, i64 %74)
  ret void
}

declare dso_local i32 @s2255_reset_dsppower(%struct.s2255_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
