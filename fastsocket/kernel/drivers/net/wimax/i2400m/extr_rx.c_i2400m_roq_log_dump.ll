; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_log_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_log_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_roq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.i2400m_roq_log_entry* }
%struct.i2400m_roq_log_entry = type { i32 }

@I2400M_ROQ_LOG_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_roq*)* @i2400m_roq_log_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_log_dump(%struct.i2400m* %0, %struct.i2400m_roq* %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.i2400m_roq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2400m_roq_log_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store %struct.i2400m_roq* %1, %struct.i2400m_roq** %4, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %10 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %11 = call i32 @__i2400m_roq_index(%struct.i2400m* %9, %struct.i2400m_roq* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %13 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %18 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %26 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %57, %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %33 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %31, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @I2400M_ROQ_LOG_LENGTH, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %43 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %46, i64 %48
  store %struct.i2400m_roq_log_entry* %49, %struct.i2400m_roq_log_entry** %7, align 8
  %50 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %7, align 8
  %54 = call i32 @i2400m_roq_log_entry_print(%struct.i2400m* %50, i32 %51, i32 %52, %struct.i2400m_roq_log_entry* %53)
  %55 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %7, align 8
  %56 = call i32 @memset(%struct.i2400m_roq_log_entry* %55, i32 0, i32 4)
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %62 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.i2400m_roq*, %struct.i2400m_roq** %4, align 8
  %66 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  ret void
}

declare dso_local i32 @__i2400m_roq_index(%struct.i2400m*, %struct.i2400m_roq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i2400m_roq_log_entry_print(%struct.i2400m*, i32, i32, %struct.i2400m_roq_log_entry*) #1

declare dso_local i32 @memset(%struct.i2400m_roq_log_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
