; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_init_ubr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_init_ubr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }
%struct.vc_map = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.atm_qos = type { i32 }

@SCHED_UBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*)* @idt77252_init_ubr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_init_ubr(%struct.idt77252_dev* %0, %struct.vc_map* %1, %struct.atm_vcc* %2, %struct.atm_qos* %3) #0 {
  %5 = alloca %struct.idt77252_dev*, align 8
  %6 = alloca %struct.vc_map*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca %struct.atm_qos*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %5, align 8
  store %struct.vc_map* %1, %struct.vc_map** %6, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %7, align 8
  store %struct.atm_qos* %3, %struct.atm_qos** %8, align 8
  %11 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %12 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %11, i32 0, i32 5
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %16 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %21 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @del_timer(i32* %23)
  %25 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %26 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @kfree(%struct.TYPE_3__* %27)
  %29 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %30 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %29, i32 0, i32 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %30, align 8
  br label %31

31:                                               ; preds = %19, %4
  %32 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %33 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %32, i32 0, i32 5
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %37 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %36, i32 0, i32 0
  %38 = call i32 @atm_pcr_goal(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %43 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.TYPE_3__* @idt77252_init_est(%struct.vc_map* %46, i32 %47)
  %49 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %50 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %49, i32 0, i32 4
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load i32, i32* @SCHED_UBR, align 4
  %52 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %53 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @idt77252_rate_logindex(%struct.idt77252_dev* %54, i32 %55)
  %57 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %58 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %60 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %63 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %45
  %67 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %68 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %71 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %75

72:                                               ; preds = %45
  %73 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %74 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %73, i32 0, i32 2
  store i32 255, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atm_pcr_goal(i32*) #1

declare dso_local %struct.TYPE_3__* @idt77252_init_est(%struct.vc_map*, i32) #1

declare dso_local i32 @idt77252_rate_logindex(%struct.idt77252_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
