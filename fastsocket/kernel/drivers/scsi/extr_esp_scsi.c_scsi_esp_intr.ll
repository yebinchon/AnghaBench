; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_scsi_esp_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_scsi_esp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.esp*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ESP_FLAG_QUICKIRQ_CHECK = common dso_local global i32 0, align 4
@ESP_QUICKIRQ_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_esp_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.esp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.esp*
  store %struct.esp* %10, %struct.esp** %5, align 8
  %11 = load %struct.esp*, %struct.esp** %5, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.esp*, %struct.esp** %5, align 8
  %20 = getelementptr inbounds %struct.esp, %struct.esp* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.esp*)*, i64 (%struct.esp*)** %22, align 8
  %24 = load %struct.esp*, %struct.esp** %5, align 8
  %25 = call i64 %23(%struct.esp* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %69, %27
  %30 = load %struct.esp*, %struct.esp** %5, align 8
  %31 = call i32 @__esp_interrupt(%struct.esp* %30)
  %32 = load %struct.esp*, %struct.esp** %5, align 8
  %33 = getelementptr inbounds %struct.esp, %struct.esp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ESP_FLAG_QUICKIRQ_CHECK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %70

39:                                               ; preds = %29
  %40 = load i32, i32* @ESP_FLAG_QUICKIRQ_CHECK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.esp*, %struct.esp** %5, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %61, %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ESP_QUICKIRQ_LIMIT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.esp*, %struct.esp** %5, align 8
  %52 = getelementptr inbounds %struct.esp, %struct.esp* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.esp*)*, i64 (%struct.esp*)** %54, align 8
  %56 = load %struct.esp*, %struct.esp** %5, align 8
  %57 = call i64 %55(%struct.esp* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %46

64:                                               ; preds = %59, %46
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ESP_QUICKIRQ_LIMIT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %70

69:                                               ; preds = %64
  br label %29

70:                                               ; preds = %68, %38
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.esp*, %struct.esp** %5, align 8
  %73 = getelementptr inbounds %struct.esp, %struct.esp* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32 %76, i64 %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__esp_interrupt(%struct.esp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
