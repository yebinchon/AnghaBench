; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_clear_msn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_clear_msn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.msn_entry* }
%struct.msn_entry = type { %struct.msn_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*)* @pcbit_clear_msn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcbit_clear_msn(%struct.pcbit_dev* %0) #0 {
  %2 = alloca %struct.pcbit_dev*, align 8
  %3 = alloca %struct.msn_entry*, align 8
  %4 = alloca %struct.msn_entry*, align 8
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %2, align 8
  %5 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %5, i32 0, i32 0
  %7 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  store %struct.msn_entry* %7, %struct.msn_entry** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.msn_entry*, %struct.msn_entry** %3, align 8
  %10 = icmp ne %struct.msn_entry* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.msn_entry*, %struct.msn_entry** %3, align 8
  %13 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %12, i32 0, i32 0
  %14 = load %struct.msn_entry*, %struct.msn_entry** %13, align 8
  store %struct.msn_entry* %14, %struct.msn_entry** %4, align 8
  %15 = load %struct.msn_entry*, %struct.msn_entry** %3, align 8
  %16 = call i32 @kfree(%struct.msn_entry* %15)
  %17 = load %struct.msn_entry*, %struct.msn_entry** %4, align 8
  store %struct.msn_entry* %17, %struct.msn_entry** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %19, i32 0, i32 0
  store %struct.msn_entry* null, %struct.msn_entry** %20, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.msn_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
