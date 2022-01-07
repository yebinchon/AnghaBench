; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_n64_read_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_n64_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GC_N64_REQUEST_LENGTH = common dso_local global i32 0, align 4
@GC_N64_POWER_W = common dso_local global i32 0, align 4
@GC_N64_REQUEST = common dso_local global i32 0, align 4
@GC_N64_OUT = common dso_local global i32 0, align 4
@GC_N64_DWS = common dso_local global i32 0, align 4
@GC_N64_DELAY = common dso_local global i32 0, align 4
@GC_N64_LENGTH = common dso_local global i32 0, align 4
@GC_N64_POWER_R = common dso_local global i32 0, align 4
@GC_N64_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*, i8*)* @gc_n64_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_n64_read_packet(%struct.gc* %0, i8* %1) #0 {
  %3 = alloca %struct.gc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.gc* %0, %struct.gc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GC_N64_REQUEST_LENGTH, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.gc*, %struct.gc** %3, align 8
  %15 = getelementptr inbounds %struct.gc, %struct.gc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GC_N64_POWER_W, align 4
  %20 = load i32, i32* @GC_N64_REQUEST, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %20, %21
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* @GC_N64_OUT, align 4
  br label %28

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %19, %29
  %31 = call i32 @parport_write_data(i32 %18, i32 %30)
  %32 = load i32, i32* @GC_N64_DWS, align 4
  %33 = call i32 @udelay(i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  %40 = load i32, i32* @GC_N64_DELAY, align 4
  %41 = call i32 @udelay(i32 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %73, %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GC_N64_LENGTH, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load %struct.gc*, %struct.gc** %3, align 8
  %48 = getelementptr inbounds %struct.gc, %struct.gc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GC_N64_POWER_R, align 4
  %53 = call i32 @parport_write_data(i32 %51, i32 %52)
  %54 = load %struct.gc*, %struct.gc** %3, align 8
  %55 = getelementptr inbounds %struct.gc, %struct.gc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call zeroext i8 @parport_read_status(i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 %59, i8* %63, align 1
  %64 = load %struct.gc*, %struct.gc** %3, align 8
  %65 = getelementptr inbounds %struct.gc, %struct.gc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GC_N64_POWER_R, align 4
  %70 = load i32, i32* @GC_N64_CLOCK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @parport_write_data(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %46
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %42

76:                                               ; preds = %42
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @parport_write_data(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local zeroext i8 @parport_read_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
