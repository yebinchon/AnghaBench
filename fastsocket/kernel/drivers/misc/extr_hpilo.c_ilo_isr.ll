; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilo_hwinfo = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@max_ccb = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ilo_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ilo_hwinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ilo_hwinfo*
  store %struct.ilo_hwinfo* %10, %struct.ilo_hwinfo** %6, align 8
  %11 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %12 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %15 = call i32 @get_device_outbound(%struct.ilo_hwinfo* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %20 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @is_db_reset(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  %28 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %29 = call i32 @ilo_set_reset(%struct.ilo_hwinfo* %28)
  br label %30

30:                                               ; preds = %27, %23
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @max_ccb, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %37 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %62

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %53 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @wake_up_interruptible(i32* %59)
  br label %61

61:                                               ; preds = %51, %45
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @clear_pending_db(%struct.ilo_hwinfo* %66, i32 %67)
  %69 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %6, align 8
  %70 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_device_outbound(%struct.ilo_hwinfo*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @is_db_reset(i32) #1

declare dso_local i32 @ilo_set_reset(%struct.ilo_hwinfo*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @clear_pending_db(%struct.ilo_hwinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
