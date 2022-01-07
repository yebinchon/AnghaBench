; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_struct = type { %struct.mite_struct*, i32 }

@mite_devices = common dso_local global %struct.mite_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_cleanup() #0 {
  %1 = alloca %struct.mite_struct*, align 8
  %2 = alloca %struct.mite_struct*, align 8
  %3 = load %struct.mite_struct*, %struct.mite_struct** @mite_devices, align 8
  store %struct.mite_struct* %3, %struct.mite_struct** %1, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load %struct.mite_struct*, %struct.mite_struct** %1, align 8
  %6 = icmp ne %struct.mite_struct* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load %struct.mite_struct*, %struct.mite_struct** %1, align 8
  %9 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pci_dev_put(i32 %10)
  %12 = load %struct.mite_struct*, %struct.mite_struct** %1, align 8
  %13 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %12, i32 0, i32 0
  %14 = load %struct.mite_struct*, %struct.mite_struct** %13, align 8
  store %struct.mite_struct* %14, %struct.mite_struct** %2, align 8
  %15 = load %struct.mite_struct*, %struct.mite_struct** %1, align 8
  %16 = call i32 @kfree(%struct.mite_struct* %15)
  br label %17

17:                                               ; preds = %7
  %18 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  store %struct.mite_struct* %18, %struct.mite_struct** %1, align 8
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.mite_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
