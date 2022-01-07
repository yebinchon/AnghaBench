; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_free_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_free_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, %struct.enic* }
%struct.TYPE_6__ = type { %struct.net_device*, i32 }
%struct.net_device = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_free_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_free_intr(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %5 = load %struct.enic*, %struct.enic** %2, align 8
  %6 = getelementptr inbounds %struct.enic, %struct.enic* %5, i32 0, i32 4
  %7 = load %struct.enic*, %struct.enic** %6, align 8
  %8 = bitcast %struct.enic* %7 to %struct.net_device*
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.enic*, %struct.enic** %2, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @vnic_dev_get_intr_mode(i32 %11)
  switch i32 %12, label %71 [
    i32 130, label %13
    i32 129, label %21
    i32 128, label %30
  ]

13:                                               ; preds = %1
  %14 = load %struct.enic*, %struct.enic** %2, align 8
  %15 = getelementptr inbounds %struct.enic, %struct.enic* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.net_device* %19)
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.enic*, %struct.enic** %2, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.enic*, %struct.enic** %2, align 8
  %28 = bitcast %struct.enic* %27 to %struct.net_device*
  %29 = call i32 @free_irq(i32 %26, %struct.net_device* %28)
  br label %72

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.enic*, %struct.enic** %2, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %35)
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load %struct.enic*, %struct.enic** %2, align 8
  %40 = getelementptr inbounds %struct.enic, %struct.enic* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %38
  %49 = load %struct.enic*, %struct.enic** %2, align 8
  %50 = getelementptr inbounds %struct.enic, %struct.enic* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.enic*, %struct.enic** %2, align 8
  %58 = getelementptr inbounds %struct.enic, %struct.enic* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.net_device*, %struct.net_device** %63, align 8
  %65 = call i32 @free_irq(i32 %56, %struct.net_device* %64)
  br label %66

66:                                               ; preds = %48, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %31

70:                                               ; preds = %31
  br label %72

71:                                               ; preds = %1
  br label %72

72:                                               ; preds = %71, %70, %21, %13
  ret void
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
